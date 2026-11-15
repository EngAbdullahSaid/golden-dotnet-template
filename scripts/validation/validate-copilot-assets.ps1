#requires -Version 5.1
<#
.SYNOPSIS
  Validates Copilot customization assets (agents, skills, issue templates).
  Exit code 0 = all checks Passed, 1 = at least one Failed.
#>
param([string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path)

$results = New-Object System.Collections.Generic.List[object]
function Add-Result($check, $status, $detail) { $results.Add([pscustomobject]@{ Check = $check; Status = $status; Detail = $detail }) }

function Get-Frontmatter($path) {
    $text = Get-Content -Raw -LiteralPath $path
    if ($text -notmatch '(?s)^---\r?\n(.*?)\r?\n---') { return $null }
    $fm = @{}
    foreach ($l in ($Matches[1] -split "`r?`n")) { if ($l -match '^([A-Za-z]+):\s*(.*)$') { $fm[$Matches[1]] = $Matches[2].Trim("'") } }
    return @{ Fields = $fm; Raw = $Matches[1]; Text = $text }
}

$agentDir = Join-Path $Root '.github\agents'
$skillDir = Join-Path $Root '.github\skills'
$agentFiles = Get-ChildItem $agentDir -Filter '*.agent.md' -ErrorAction SilentlyContinue
$skillFolders = Get-ChildItem $skillDir -Directory -ErrorAction SilentlyContinue
$agentNames = @($agentFiles | ForEach-Object { $_.Name -replace '\.agent\.md$', '' })
$skillNames = @($skillFolders | ForEach-Object { $_.Name })

$agentSections = 'Mission', 'Responsibilities', 'Scope', 'Required inputs', 'Expected outputs', 'Engineering standards', 'Applicable skills', 'Quality gates', 'Review requirements', 'Handoff instructions', 'Definition of Done'
$skillSections = 'Purpose', 'Trigger conditions', 'Inputs', 'Required references', 'Procedure', 'Outputs', 'Validation', 'Examples', 'Failure handling'

$requiredAgents = 'engineering-orchestrator', 'startup-strategist', 'product-manager', 'business-analyst', 'market-researcher', 'financial-analyst', 'solution-architect', 'data-architect', 'integration-architect', 'ux-designer', 'backend-engineer', 'frontend-engineer', 'database-engineer', 'automation-engineer', 'ai-engineer', 'security-engineer', 'privacy-reviewer', 'qa-engineer', 'performance-engineer', 'code-reviewer', 'devops-engineer', 'sre-engineer', 'release-manager', 'technical-writer', 'growth-analyst', 'customer-success'
$missing = $requiredAgents | Where-Object { $agentNames -notcontains $_ }
if ($missing) { Add-Result 'required agents' 'Failed' ("missing: " + ($missing -join ', ')) } else { Add-Result 'required agents' 'Passed' "$($requiredAgents.Count) present" }

foreach ($f in $agentFiles) {
    $n = $f.Name -replace '\.agent\.md$', ''
    $fm = Get-Frontmatter $f.FullName
    if (-not $fm) { Add-Result "agent $n" 'Failed' 'missing frontmatter'; continue }
    $errs = @()
    if ($fm.Fields['name'] -ne $n) { $errs += 'name does not match file name' }
    if (-not $fm.Fields['description']) { $errs += 'missing description' }
    foreach ($s in $agentSections) { if ($fm.Text -notmatch "(?m)^## $([regex]::Escape($s))\s*$") { $errs += "missing section '$s'" } }
    foreach ($m in [regex]::Matches($fm.Raw, '(?m)^\s+agent:\s*(\S+)')) { if ($agentNames -notcontains $m.Groups[1].Value) { $errs += "unknown handoff agent '$($m.Groups[1].Value)'" } }
    foreach ($m in [regex]::Matches($fm.Text, '(?m)^- `([a-z0-9-]+)`\s*$')) { if ($skillNames -notcontains $m.Groups[1].Value) { $errs += "unknown skill '$($m.Groups[1].Value)'" } }
    if ($errs) { Add-Result "agent $n" 'Failed' ($errs -join '; ') } else { Add-Result "agent $n" 'Passed' '' }
}

foreach ($d in $skillFolders) {
    $file = Join-Path $d.FullName 'SKILL.md'
    if (-not (Test-Path $file)) { Add-Result "skill $($d.Name)" 'Failed' 'SKILL.md missing'; continue }
    $fm = Get-Frontmatter $file
    $errs = @()
    if (-not $fm) { $errs += 'missing frontmatter' } else {
        if ($fm.Fields['name'] -ne $d.Name) { $errs += 'name does not match folder' }
        if ($d.Name -notmatch '^[a-z0-9]+(-[a-z0-9]+)*$') { $errs += 'folder name must be lowercase-hyphen' }
        if (-not $fm.Fields['description']) { $errs += 'missing description' }
        foreach ($s in $skillSections) { if ($fm.Text -notmatch "(?m)^## $([regex]::Escape($s))\s*$") { $errs += "missing section '$s'" } }
    }
    if ($errs) { Add-Result "skill $($d.Name)" 'Failed' ($errs -join '; ') } else { Add-Result "skill $($d.Name)" 'Passed' '' }
}

foreach ($f in (Get-ChildItem (Join-Path $Root '.github\ISSUE_TEMPLATE') -Filter '*.yml' -ErrorAction SilentlyContinue | Where-Object { $_.Name -ne 'config.yml' })) {
    $t = Get-Content -Raw $f.FullName
    if ($t -match '(?m)^name:' -and $t -match '(?m)^description:' -and $t -match '(?m)^body:') { Add-Result "issue template $($f.Name)" 'Passed' '' } else { Add-Result "issue template $($f.Name)" 'Failed' 'missing name/description/body' }
}

$placeholder = Get-ChildItem (Join-Path $Root '.github') -Recurse -File | Select-String -Pattern 'TODO|TBD|NotImplementedException' -SimpleMatch -List
if ($placeholder) { Add-Result 'placeholders' 'Failed' (($placeholder | ForEach-Object { $_.Path }) -join ', ') } else { Add-Result 'placeholders' 'Passed' 'none' }

$failed = @($results | Where-Object Status -eq 'Failed')
$results | Where-Object { $_.Status -eq 'Failed' -or $_.Check -notmatch '^(agent|skill|issue template)' } | Format-Table -AutoSize | Out-String | Write-Host
Write-Host ("Passed: {0}  Failed: {1}  Total: {2}" -f (@($results | Where-Object Status -eq 'Passed').Count), $failed.Count, $results.Count)
if ($failed.Count -gt 0) { exit 1 } else { exit 0 }

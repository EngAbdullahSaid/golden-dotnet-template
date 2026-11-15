---
description: Razor, CSS and JavaScript UI standards
applyTo: "**/*.{cshtml,css,js}"
---
- Use Bootstrap 5 and design tokens (CSS variables); support light/dark themes and RTL.
- JavaScript uses ES modules, no inline scripts, no framework dependency.
- All forms include anti-forgery tokens and client + server validation.
- Markup must be accessible: labels, landmarks, keyboard focus, sufficient contrast.
- Encode output; never render untrusted HTML with `Html.Raw`.

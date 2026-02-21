# AGENTS.md - Website Project Guidelines

## EMOJI PROHIBITION POLICY

### CRITICAL RULE: NO EMOJI IN CODE
**Emoji characters are strictly prohibited in all website project files:**

1. **Source Code Files** (HTML, CSS, JavaScript, SVG, etc.):
   - DO NOT use emoji in: `index.html`, any `.css` files, `.js` files, `.svg` files
   - USE descriptive text instead: "ERROR:", "WARNING:", "SUCCESS:", "INFO:"

2. **Configuration Files**:
   - DO NOT use emoji in: `nginx.conf`, `Dockerfile`, Kubernetes manifests
   - USE professional terminology: "error", "warning", "success", "info"

3. **Documentation**:
   - AVOID emoji in technical documentation (README.md, comments)
   - USE clear, professional language with proper formatting
   - Exception: README.md may use minimal emoji for visual section breaks only

### Examples of Prohibited Usage:

```html
<!-- WRONG - Emoji in HTML -->
<h1>MLIR Debugger Website</h1>
<p>Successfully deployed!</p>
<div>Warning: Experimental feature</div>

<!-- CORRECT - Professional text -->
<h1>MLIR Debugger Website</h1>
<p class="success">Successfully deployed!</p>
<div class="warning">Warning: Experimental feature</div>
```

```css
/* WRONG - Emoji in CSS */
.success::before { content: " "; }
.error::before { content: " "; }

/* CORRECT - CSS classes */
.success { color: #10b981; }
.error { color: #ef4444; }
.success::before { content: "✓ "; }
.error::before { content: "✗ "; }
```

```javascript
// WRONG - Emoji in JavaScript
console.log("Deployment started...");
alert("Success!");

// CORRECT - Professional messages
console.log("Deployment started...");
alert("Operation completed successfully.");
```

### Rationale for Emoji Prohibition:

1. **Professionalism**: Academic and research projects require formal presentation
2. **Accessibility**: Screen readers may not interpret emoji correctly
3. **Consistency**: Maintains uniform coding standards across projects
4. **Internationalization**: Emoji may not display consistently across all systems
5. **Security**: Some emoji can be used in homograph attacks or encoding issues

### Allowed Alternatives:

| Purpose | Prohibited | Allowed |
|---------|--------------|------------|
| Success indicators | Success indicators | "SUCCESS:", "✓", "[OK]" |
| Error indicators | Error indicators | "ERROR:", "✗", "[FAIL]" |
| Status indicators | Status indicators | "Processing...", "Loading...", "Status:" |
| Section headers | Section headers | "Deployment", "Files", "Configuration" |

### Validation and Enforcement:

1. **GitHub Actions Validation**:
   - Automated checks for emoji in source files
   - PR validation will fail if emoji detected
   - Error message: "Emoji detected in source code - use professional text instead"

2. **Manual Code Review**:
   - Reviewers must check for emoji usage
   - Request changes if emoji found
   - Educate contributors about the policy

3. **Pre-commit Hooks** (recommended):
   ```bash
   # Check for emoji in files
   grep -r "[\U0001F300-\U0001F9FF]" . --include="*.html" --include="*.css" --include="*.js" --include="*.svg"
   ```

### File-Specific Guidelines:

#### HTML Files (`*.html`):
- Use semantic HTML with appropriate ARIA labels
- CSS classes for styling, not emoji for visual indicators
- Text content should be professional and descriptive

#### CSS Files (`*.css`):
- Use CSS content property with text or Unicode symbols (✓, ✗, →)
- Color coding for status (green for success, red for error)
- Icons via icon fonts (Font Awesome) if needed

#### JavaScript Files (`*.js`):
- Console messages should be informative, not decorative
- User-facing messages in alerts/modals should be professional
- Use constants for message strings

#### SVG Files (`*.svg`):
- No emoji in SVG text elements
- Use proper vector graphics for icons
- Maintain professional visual style

#### Configuration Files:
- Comments should be technical and informative
- No decorative elements in config files
- Use standard industry terminology

### Exception Process:

In rare cases where visual indicators are absolutely necessary:

1. **Request exception** via issue with justification
2. **Approval required** from project maintainer
3. **Document exception** in code comments
4. **Consider alternatives** first (CSS icons, icon fonts, SVG graphics)

### Contributor Education:

New contributors should be directed to this file and informed:
1. This project follows academic/research coding standards
2. Emoji are reserved for informal communication only (issues, PR descriptions)
3. Source code must maintain professional appearance
4. Automated checks will enforce this policy

### Related Policies:

1. **Security**: No credentials in code (use environment variables/secrets)
2. **Accessibility**: Proper ARIA labels, alt text for images
3. **Performance**: Optimized assets, minimal dependencies
4. **Maintainability**: Clean code, proper documentation

### References:

- Main project: [symbolic-mlir-debugger/AGENTS.md](https://github.com/vtqveant/symbolic-mlir-debugger/blob/main/AGENTS.md)
- Professional coding standards for research software
- Web Content Accessibility Guidelines (WCAG)
- Academic software development best practices

---

**Last Updated**: 2026-02-21  
**Policy Version**: 1.0  
**Enforcement**: GitHub Actions validation on all PRs  
**Contact**: Project maintainers via GitHub Issues

*This policy ensures the MLIR Debugger website maintains professional standards suitable for academic and research contexts while being accessible and maintainable.*
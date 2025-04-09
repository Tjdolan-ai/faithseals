# FaithSeal Rebranding Guide

This document outlines the rebranding process from DocuSeal to FaithSeal and provides guidance for ongoing development.

## Rebranding Status

The application has been partially rebranded from DocuSeal to FaithSeal:

- ✅ User-facing content (HTML, templates, emails) updated to "FaithSeal"
- ✅ URLs updated to faithseal.com
- ✅ Social media references updated to @faithseal
- ✅ Logo and branding images updated
- ✅ Color scheme updated to purple/gold theme
- ✅ Added "Sign in Good Faith — Powered by Scripture" tagline
- ⚠️ Core module still named `Docuseal` with `Faithseal` alias
- ⚠️ Some file paths still contain "docuseal"

## Safe Module Usage

For compatibility reasons, the core module is still named `Docuseal` but we've added a `Faithseal` alias:

```ruby
# In lib/docuseal.rb (or lib/faithseal.rb)
module Docuseal
  # Methods and constants
end

# Alias for new code
Faithseal = Docuseal
```

### For Developers:

- For **new code**: Use `Faithseal` constant (e.g., `Faithseal.multitenant?`)
- For **existing code**: Leave as `Docuseal` to minimize breaking changes
- For **user-visible strings**: Always use "FaithSeal" (capitalized F and S)

## Remaining Rebranding Tasks

- [ ] Update file paths (e.g., rename lib/docuseal.rb to lib/faithseal.rb)
- [ ] Create proper redirects from old docuseal.* domains
- [ ] Review and update remaining CSS classes
- [ ] Ensure all emails properly show FaithSeal branding
- [ ] Update API documentation
- [ ] Update test fixtures and examples

## Long-term Plan

In the future, we plan to completely rename the module from `Docuseal` to `Faithseal`. This will require:

1. Creating a proper migration strategy
2. Updating all module references in the codebase
3. Comprehensive testing to ensure nothing breaks
4. Database modifications if any tables store the old name

## Theological Underpinnings

As a faith-based platform, FaithSeal draws inspiration from:

- Matthew 5:37: "Let your 'Yes' be 'Yes,' and your 'No,' 'No.' For whatever is more than these is from the evil one."
- 2 Corinthians 1:22: "who also has sealed us and given us the Spirit in our hearts as a guarantee."

These principles should be reflected in our approach to code quality, integrity, and trustworthiness.
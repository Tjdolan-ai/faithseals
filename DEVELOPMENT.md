# FaithSeal Development Guide

## Project Architecture

FaithSeal is a Ruby on Rails application for faith-based document signing and form collection. This guide explains the major components and architecture of the codebase.

## Core Components

### Module Structure

The application uses a module named `Docuseal` (with a `Faithseal` alias) as its central configuration hub:

```ruby
module Docuseal
  # Configuration constants and methods
end

# Alias for new development
Faithseal = Docuseal
```

### Key Directories

- `/app/controllers` - Rails controllers handling web requests
- `/app/models` - ActiveRecord models for database interactions
- `/app/views` - ERB templates for rendering HTML
- `/app/javascript` - Frontend JavaScript and Vue.js components
- `/lib` - Core functionality modules and utilities
- `/config` - Rails configuration including routes and initializers

## Authentication & Authorization

FaithSeal uses Devise for authentication and CanCanCan for authorization:

- User authentication managed in `app/models/user.rb`
- Authorization rules defined in `lib/ability.rb`

## Document Processing

The document processing flow works as follows:

1. Templates are created and configured (`app/models/template.rb`)
2. Submissions are created from templates (`app/models/submission.rb`)
3. Submitters complete forms and sign documents (`app/models/submitter.rb`)
4. Completed documents are generated and stored

## Rebranding Notes

This application was rebranded from DocuSeal to FaithSeal. For compatibility:

- The core module is still named `Docuseal` but we've added a `Faithseal` alias
- New code should use the `Faithseal` constant
- UI elements use "FaithSeal" for user-facing content

## Development Workflow

1. Clone the repository
2. Install dependencies: `bundle install && yarn install`
3. Set up the database: `bin/rails db:setup`
4. Start the development server: `bin/rails server`
5. Run tests with: `bundle exec rspec`

## Contributing Guidelines

When contributing to FaithSeal:

1. Follow the Ruby Style Guide
2. Write tests for new functionality
3. Use the `Faithseal` constant in new code
4. Update documentation as needed
5. Run linters before submitting: `bundle exec rubocop`

## Faith-Based Guidelines

As a faith-driven platform, FaithSeal code and communications should:

1. Maintain a tone of integrity and respect
2. Support the "Sign in Good Faith" ethos
3. Avoid language inappropriate for a faith-based application
4. Keep all user interfaces clean, professional, and trustworthy
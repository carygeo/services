# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Jekyll-based resume/CV website using the Modern Resume Theme. The entire resume content is configured through `_config.yml` rather than separate markdown files.

## Development Commands

```bash
# Install dependencies (requires Ruby/Bundler)
bundle install

# Run the site locally (default: http://localhost:4000)
bundle exec jekyll serve

# Build the static site (outputs to _site/)
bundle exec jekyll build

# Clean the generated site
bundle exec jekyll clean
```

## Architecture

The project follows Jekyll's convention-over-configuration approach:

- **`_config.yml`**: Contains ALL resume content (personal info, experience, education, projects, etc.)
- **`assets/main.scss`**: Imports the theme styles - customize styling here
- **`_site/`**: Generated static output (do not edit directly)
- **`images/`**: Store profile pictures and background images
- **Theme**: Uses `remote_theme: sproogen/resume-theme` from GitHub

## Key Configuration Sections in `_config.yml`

1. **Personal Information**: name, title, email, phone, website
2. **Social Links**: github, linkedin, etc. (uses FontAwesome icons)
3. **Content Sections**:
   - `about_profile_image`: Path to profile image
   - `about_content`: Markdown content for about section
   - `content`: Array containing projects, experience, education sections
4. **Theme Settings**: `darkmode`, `google_analytics`, etc.

## Important Notes

- All resume content modifications should be made in `_config.yml`
- The site is designed for GitHub Pages deployment
- After modifying `_config.yml`, restart the Jekyll server to see changes
- Images should be placed in the `images/` directory
- The theme provides responsive design and print-friendly layouts
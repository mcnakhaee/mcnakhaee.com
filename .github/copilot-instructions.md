# Quarto Website Project

This workspace contains a modern Quarto website with the following features:

## Project Type
- **Framework**: Quarto
- **Content**: Website with blog functionality
- **Styling**: Custom SCSS themes and CSS

## Structure
- `_quarto.yml` - Main configuration file
- `index.qmd` - Homepage
- `about.qmd` - About page
- `projects/` - Projects showcase with individual project pages
- `talks/` - Talks and presentations page
- `blog/` - Blog section with posts
- `custom.scss` - Custom theme styling
- `styles.css` - Additional CSS

## Setup Instructions

1. **Install Quarto**: Download from [https://quarto.org/docs/get-started/](https://quarto.org/docs/get-started/)
2. **Preview**: Run `quarto preview` to start the development server
3. **Build**: Run `quarto render` to build the site for deployment

## VS Code Extension
- Quarto extension (`quarto.quarto`) is installed for enhanced development experience

## Tasks Available
- **Quarto Preview**: Launches a live preview server (already configured in tasks.json)

## Installed Quarto Extensions
- **fontawesome** (1.3.0): Add Font Awesome icons with `{{< fa icon-name >}}`
- **lightbox** (0.1.9): Automatic lightbox for images
- **include-code-files** (1.0.0): Include external code files with `{{< include file >}}`

## Customization
- Edit `_quarto.yml` to change site configuration
- Modify `custom.scss` and `styles.css` for styling
- Add new blog posts under `blog/posts/`
- Use Font Awesome icons in content: `{{< fa brands github >}}`
- Images automatically get lightbox functionality

Work through each checklist item systematically.
Keep communication concise and focused.
Follow development best practices.

# Modern Quarto Website

A beautiful, modern website built with Quarto featuring a responsive design, blog section, and more.

## Features

- 🎨 Modern, clean design with custom styling
- 📱 Fully responsive layout
- 🌓 Light and dark mode support
- 📝 Blog with post listings and categories
- 🔍 Built-in search functionality
- 🎯 Easy navigation
- ⚡ Fast and lightweight

## Project Structure

```
.
├── _quarto.yml          # Quarto configuration
├── index.qmd            # Homepage
├── about.qmd            # About page
├── projects/
│   ├── index.qmd        # Projects listing page
│   └── projects/        # Individual projects
│       ├── web-app/
│       └── data-dashboard/
├── talks/
│   └── index.qmd        # Talks and presentations
├── blog/
│   ├── index.qmd        # Blog listing page
│   └── posts/           # Blog posts
│       ├── welcome/
│       └── quarto-intro/
├── custom.scss          # Custom SCSS theme
├── styles.css           # Additional CSS
└── README.md            # This file
```

## Getting Started

### Prerequisites

You need to install Quarto on your system:

1. **Download Quarto**: Visit [https://quarto.org/docs/get-started/](https://quarto.org/docs/get-started/)
2. **Windows**: Download the Windows installer (.msi) and run it
3. **Verify installation**: Open a new terminal and run:
   ```bash
   quarto --version
   ```

### Installation

1. This repository contains your Quarto website project
2. Open a terminal in the project directory
3. Make sure Quarto is installed (see Prerequisites above)

### Preview the Site

To preview the website locally:

```bash
quarto preview
```

This will start a local server and open the website in your browser. Changes you make will be automatically reflected.

### Build the Site

To build the website for deployment:

```bash
quarto render
```

The built website will be in the `_site` directory.

## Installed Quarto Extensions

This project includes the following Quarto extensions:

- **fontawesome**: Add Font Awesome icons using shortcodes like `{{< fa icon-name >}}`
- **lightbox**: Automatically adds lightbox functionality to images for full-screen viewing
- **include-code-files**: Include external code files in your documents

### Using Extensions

**Font Awesome Icons:**
```markdown
{{< fa brands github >}} GitHub
{{< fa solid heart >}} Love
```

**Lightbox for Images:**
Images automatically get lightbox functionality. Just add images as usual:
```markdown
![Description](image.jpg)
```

**Include Code Files:**
```markdown
{{< include code-file.py >}}
```

## Customization

### Update Site Information

Edit `_quarto.yml` to change:
- Site title
- Navigation menu items
- Social media links
- Footer content

### Styling

- `custom.scss`: Theme colors, typography, and component styles
- `styles.css`: Additional custom CSS

### Add Blog Posts

Create a new directory under `blog/posts/` with an `index.qmd` file:

```markdown
---
title: "Your Post Title"
author: "Your Name"
date: "2025-11-09"
categories: [category1, category2]
description: "Post description"
---

Your content here...
```

## Deployment

You can deploy your Quarto website to various platforms:

- **GitHub Pages**: Use `quarto publish gh-pages`
- **Netlify**: Connect your repository and set build command to `quarto render`
- **Vercel**: Similar to Netlify
- **Quarto Pub**: Use `quarto publish quarto-pub`

For detailed deployment instructions, visit the [Quarto Publishing Guide](https://quarto.org/docs/publishing/).

## Learn More

- [Quarto Documentation](https://quarto.org/docs/guide/)
- [Quarto Websites](https://quarto.org/docs/websites/)
- [Quarto Blog Guide](https://quarto.org/docs/websites/website-blog.html)

## License

This project is open source and available under the MIT License.

## Contact

Feel free to reach out with questions or feedback!

---

Built with ❤️ using [Quarto](https://quarto.org)

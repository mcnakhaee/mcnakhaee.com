# Deployment Workflow - Pre-Rendered Site

## Overview

Your Quarto website is now configured to be **rendered locally** and then deployed to Netlify as a static site. This approach is simpler and avoids the need to install R on Netlify's build servers.

## How It Works

1. **Local Rendering**: You render the site on your local machine (where R is installed)
2. **Git Tracking**: The `_site` folder is tracked in Git (not ignored)
3. **Netlify Deployment**: Netlify simply serves the pre-built files from the `_site` folder

## Deployment Steps

### Every time you update your site:

1. **Make changes** to your `.qmd` files, projects, or blog posts

2. **Render locally**:
   ```bash
   quarto render
   ```

3. **Commit and push**:
   ```bash
   git add -A
   git commit -m "Update site content"
   git push origin quarto
   ```

4. **Netlify automatically deploys** the updated `_site` folder

## Configuration Files

### `netlify.toml`
```toml
[build]
  command = ""  # No build command - site is pre-rendered
  publish = "_site"
```

### `.gitignore`
```
# _site/ is commented out so it's tracked in Git
/.quarto/
**/*.quarto_ipynb
```

## Benefits of This Approach

✅ **Simple**: No complex build setup on Netlify  
✅ **Fast**: Netlify just serves files, no rendering needed  
✅ **Reliable**: Builds happen locally where you control the environment  
✅ **R Support**: Full R support since you render where R is installed  
✅ **Preview**: You can test the site locally before deploying  

## Important Notes

- Always run `quarto render` before committing
- The `_site` folder will be large (contains all HTML, CSS, JS, images)
- Make sure to push the `_site` folder to Git
- Netlify will deploy automatically when you push to the `quarto` branch

## Troubleshooting

If Netlify deployment fails:
1. Check that `_site` folder exists and is pushed to Git
2. Verify `netlify.toml` has `publish = "_site"`
3. Check Netlify build logs for any errors

---

**Your site should now deploy successfully on Netlify!** 🎉

# Deployment Guide for Netlify

## Option 1: Using GitHub (Recommended)

### Step 1: Prepare Your Repository

1. **Backup your old distill blog** (optional but recommended):
   ```bash
   git checkout -b backup-distill
   git push origin backup-distill
   ```

2. **Switch to main branch and update**:
   ```bash
   git checkout main
   ```

3. **Add your new Quarto website files**:
   ```bash
   git add .
   git commit -m "Migrate from distill to Quarto"
   git push origin main
   ```

### Step 2: Update Netlify Build Settings

Go to your Netlify site dashboard:

1. **Site settings** → **Build & deploy** → **Build settings**
2. Update the settings:
   - **Build command**: `quarto render`
   - **Publish directory**: `_site`
3. **Environment variables** → Add:
   - Key: `QUARTO_VERSION`
   - Value: `1.4.0` (or latest version)

### Step 3: Trigger Deploy

- Click **Deploys** → **Trigger deploy** → **Deploy site**
- Your new Quarto site will build and deploy!

---

## Option 2: Manual Deployment

If you prefer to deploy manually without CI/CD:

1. **Build your site locally**:
   ```bash
   quarto render
   ```

2. **Deploy the `_site` folder**:
   - Drag and drop the `_site` folder to Netlify's deploy page
   - Or use Netlify CLI:
     ```bash
     npm install -g netlify-cli
     netlify deploy --prod --dir=_site
     ```

---

## Files Included for Netlify

- `netlify.toml` - Netlify configuration file
- `.gitignore` - Already excludes `_site` folder

---

## Important Notes

1. **Remove old distill files**: Delete these if they exist:
   - `_site.yml` (replaced by `_quarto.yml`)
   - Old R Markdown files (.Rmd)
   - distill-specific configuration

2. **Custom domain**: If you have a custom domain, keep your DNS settings in Netlify

3. **Redirects**: The `netlify.toml` includes a catch-all redirect for client-side routing

4. **Build time**: First build may take 2-3 minutes

---

## Troubleshooting

### Build fails with "quarto: command not found"

Make sure `QUARTO_VERSION` environment variable is set in Netlify.

### CSS/styling issues

Clear your browser cache or do a hard refresh (Ctrl+Shift+R).

### 404 errors

Check that publish directory is set to `_site` (not `_site/` or `docs`).

---

## Resources

- [Quarto Publishing Guide](https://quarto.org/docs/publishing/netlify.html)
- [Netlify Documentation](https://docs.netlify.com/)

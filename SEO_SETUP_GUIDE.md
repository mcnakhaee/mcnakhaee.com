# Google Search Engine Optimization (SEO) Setup Guide

## What's Been Configured

Your Quarto website is now configured for better search engine indexing:

### 1. ✅ Sitemap
- Quarto automatically generates `sitemap.xml` at https://mcnakhaee.com/sitemap.xml
- This helps Google discover all your pages

### 2. ✅ Robots.txt
- Created `robots.txt` file that tells search engines they can crawl your site
- Points to your sitemap

### 3. ✅ Meta Tags
- Added description, keywords, and Open Graph tags
- Enabled Twitter Card support
- Added structured metadata to homepage

### 4. ✅ RSS Feeds
- Blog RSS feed available at https://mcnakhaee.com/blog/index.xml

## Next Steps: Submit Your Site to Google

### Step 1: Get Google Search Console Access
1. Go to [Google Search Console](https://search.google.com/search-console)
2. Click "Start Now" and sign in with your Google account
3. Click "Add Property"
4. Enter your domain: `mcnakhaee.com`

### Step 2: Verify Ownership
Choose one of these verification methods:

#### Option A: HTML File Upload (Recommended)
1. Google will give you an HTML file to download (e.g., `google1234567890abcdef.html`)
2. Place this file in the root of your website directory
3. Render your site: `quarto render`
4. Commit and push to GitHub
5. Wait for Netlify to deploy
6. Click "Verify" in Google Search Console

#### Option B: HTML Meta Tag
1. Google will give you a meta tag like: `<meta name="google-site-verification" content="abc123..." />`
2. Add this to your `index.qmd` frontmatter:
   ```yaml
   ---
   title: "Muhammad Nakhaee"
   google-site-verification: "abc123..."
   ---
   ```
3. Render, commit, push, and verify

### Step 3: Submit Your Sitemap
1. Once verified, in Google Search Console, go to "Sitemaps"
2. Enter: `sitemap.xml`
3. Click "Submit"

### Step 4: Set Up Google Analytics (Optional but Recommended)
1. Go to [Google Analytics](https://analytics.google.com/)
2. Create a new property for your website
3. Get your Measurement ID (format: `G-XXXXXXXXXX`)
4. Update `_quarto.yml` with your real ID:
   ```yaml
   google-analytics: "G-YOUR-ACTUAL-ID"
   ```
5. Render, commit, and push

## Additional SEO Best Practices

### ✅ Already Implemented
- Descriptive page titles
- Meta descriptions
- Semantic HTML structure
- Mobile-responsive design
- Fast loading (static site)
- HTTPS (via Netlify)
- Social media meta tags

### 🔄 To Improve Further
1. **Add alt text to all images** - Helps with accessibility and SEO
2. **Internal linking** - Link between related posts and pages
3. **Regular content updates** - Post consistently to your blog
4. **Quality content** - Focus on valuable, original content
5. **Share on social media** - Increases visibility and backlinks

## Checking Indexing Status

After submitting to Google Search Console:
- Wait 24-48 hours for Google to crawl your site
- Check coverage report in Search Console
- Use site search: `site:mcnakhaee.com` in Google to see indexed pages

## Monitoring Performance

Google Search Console provides:
- Number of indexed pages
- Search queries bringing traffic
- Click-through rates
- Mobile usability issues
- Security problems

## Quick Commands

```bash
# Render your site locally
quarto render

# Add files and commit
git add .
git commit -m "Update SEO configuration"

# Push to deploy
git push origin quarto
```

## Resources

- [Google Search Console Help](https://support.google.com/webmasters)
- [Quarto SEO Documentation](https://quarto.org/docs/websites/website-tools.html#google-analytics)
- [Netlify SEO Guide](https://docs.netlify.com/domains-https/custom-domains/)

---

**Note**: Google indexing can take several days to weeks. Be patient and keep creating quality content!

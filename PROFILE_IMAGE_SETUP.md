# Profile Image Setup

## Required Image

Place your profile photo as `profile.jpg` in the root directory of your website.

### Image Requirements:
- **Filename**: `profile.jpg` (or `profile.png`)
- **Location**: Root directory (same level as `index.qmd`)
- **Recommended size**: 400x400 pixels minimum (square)
- **Format**: JPG or PNG
- **Quality**: High resolution for best results

### How to Add:
1. Choose a professional photo where your face is clearly visible
2. Crop it to a square (1:1 ratio)
3. Resize to at least 400x400 pixels
4. Save as `profile.jpg`
5. Place in: `p:\mcnakhaee\mcnakhaee_com\mcnakhaee_2025\mcnakhaee\mcnakhaee.com\profile.jpg`

### Fallback:
If no image is found, a placeholder with your initials "MCN" will display.

### If Using a Different Name:
Update line 46 in `index.qmd`:
```html
<img src="your-image-name.jpg" alt="Muhammad Chenariyan Nakhaee" class="profile-image">
```

The image will automatically be displayed in a circular frame with a floating animation effect.

# Package Requirements for Migrated Blog Posts

This document lists the R and Python packages referenced in the migrated blog posts.

## Trump Speech Readability Analysis Post
**Location:** `blog/posts/trump-speech-readability/index.qmd`

### R Packages Required:
- `tidyverse` - Data manipulation and visualization
- `reticulate` - R interface to Python
- `ggthemes` - Additional themes for ggplot2
- `us2020election` - Custom package with US election speeches data (https://github.com/mcnakhaee/us2020election)
- `ggridges` - Ridge plots for visualizations
- `showtext` (optional) - Font management
- `knitr` - R Markdown support

### Python Packages Required:
- `numpy` - Numerical computing
- `pandas` - Data manipulation
- `textstat` - Text readability metrics (https://github.com/shivam5992/textstat)

### Installation Commands:

#### R Packages:
```r
install.packages(c("tidyverse", "reticulate", "ggthemes", "ggridges", "showtext", "knitr"))

# Install us2020election from GitHub
# install.packages("devtools")
# devtools::install_github("mcnakhaee/us2020election")
```

#### Python Packages:
```bash
pip install numpy pandas textstat
```

---

## COVID-19 Netherlands Analysis Post
**Location:** `blog/posts/covid-19-netherlands/index.qmd`

### R Packages Required:
- `tidyverse` - Data manipulation and visualization
- `CoronaWatchNL` - Custom package for Netherlands COVID-19 data (https://github.com/mcnakhaee/CoronaWatchNL)
- `sf` - Spatial data handling
- `gganimate` - Animated visualizations
- `santoku` - Data binning/chopping
- `lubridate` - Date/time handling (part of tidyverse)
- `foreign` - Reading foreign data formats
- `knitr` - R Markdown support

### Installation Commands:

#### R Packages:
```r
install.packages(c("tidyverse", "sf", "gganimate", "santoku", "lubridate", "foreign", "knitr"))

# Install CoronaWatchNL from GitHub
# install.packages("devtools")
# devtools::install_github("mcnakhaee/CoronaWatchNL")
```

---

## Current Configuration

Both posts are currently configured with `eval=FALSE` for all code chunks. This means:
- ✅ The code is displayed for educational purposes
- ✅ The site renders without requiring all packages to be installed
- ✅ No Python environment configuration is needed
- ✅ Images and GIFs (if present in post directories) will still display

## To Enable Code Execution

If you want to execute the code:

1. Install all required packages (see above)
2. For the Trump speech post, configure Python environment:
   - Uncomment the reticulate configuration in the setup chunk
   - Ensure you have a conda environment or use `reticulate::use_python()`
3. Change `eval=FALSE` to `eval=TRUE` in the chunks you want to run
4. Ensure data files and dependencies are available

## Notes

- The `us2020election` and `CoronaWatchNL` packages are custom packages that need to be installed from GitHub
- Font configuration (Lobster, Poppins Light) may require system fonts to be installed
- Animation GIFs should be placed in the respective post directories if you want them to display
- The posts are currently optimized for display without execution, perfect for portfolio/documentation purposes

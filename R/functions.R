create_proj_card = function(img_src, url, title, text, text2){
  tags$div(
    class = "card",
    tags$img(class="card-img-top",
             src=img_src,
             style="width:300px;"),
    tags$div(
      class = "card-body",
      h4(
        a(href = url,  
          title)),
      p(class = "card-text", 
        text, br(), text2)
    )
  )
  
}



create_mcnakhaee_post <- function(..., open = TRUE) {
  
  tmp <- distill::create_post(..., edit = FALSE)
  
  yaml <- readLines(tmp, n = 12)
  
  con <- file(tmp, open = "w")
  
  on.exit(close(con), add = TRUE)
  
  body <- 
    '
  
#```{r setup, echo = TRUE, results = "hide", warning = FALSE, message = FALSE}
knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)

library(tidyverse)

theme_set(theme_ee())

#```

A message
'

xfun::write_utf8(yaml, con)
xfun::write_utf8(body, con)

if (open == TRUE) usethis::edit_file(tmp)

}
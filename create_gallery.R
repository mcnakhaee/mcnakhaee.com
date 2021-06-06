
library(magick)
library(here)

# resize_image <- function(image) {
#   
#   imFile <- image_read(here::here(paste0("_gallery/photos/", image)))
#   imFile_resized <- magick::image_resize(imFile, "6%")
#   magick::image_write(imFile_resized, here::here(paste0("_gallery/photos/thumb-", image)))
#   
# }
# 
# list_png <- list.files("_gallery/photos")
# lapply(list_png, resize_image)


library(htmltools)

tags$a(
  href = "img.png",
  tags$img(src = "thumb-img.png")
)

make_gallery_layout <- function() {
  
  # Get the names of all images
  images <- list.files(here("_gallery/photos"))
  
  # Get the names of all full-size images
  images_full_size <- grep("thumb", images, value = TRUE, invert = TRUE)
  
  # Get the names of all thumbnails
  images_thumb <- grep("thumb", images, value = TRUE)
  
  # Create a dataframe where each row is one image (useful for
  # the apply() function)
  images <- data.frame(images_thumb = images_thumb,
                       images_full_size = images_full_size)
  
  # Create the HTML structure for each image
  tagList(apply(images, 1, function(x) {
    tags$a(
      href = paste0("_gallery/photos/", x[["images_full_size"]]),
      tags$img(src = paste0("_gallery/photos/", x[["images_thumb"]]))
    )
  }))
  
}


withTags(
  div(
    class = "row",
    id = "lightgallery",
    tagList(
      make_gallery_layout()
    )
  )
)
# This script builds both the HTML and PDF versions of your CV

# If you wanted to speed up rendering for googlesheets driven CVs you could use
# this script to cache a version of the CV_Printer class with data already
# loaded and load the cached version in the .Rmd instead of re-fetching it twice
# for the HTML and PDF rendering. This exercise is left to the reader.

# Knit the HTML version
# During development and testing
rmarkdown::render("cv.rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "mbeckett_cv.html")

# For github pages - push in repo when happy
rmarkdown::render("cv.rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "~/megan/MeganBeckett.github.io/mbeckett_cv.html")

# Knit the PDF version to temporary html location
tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render("cv.rmd",
                  params = list(pdf_mode = TRUE),
                  output_file = tmp_html_cv_loc)

# Convert to PDF using Pagedown
pagedown::chrome_print(input = tmp_html_cv_loc,
                       output = "mbeckett_cv.pdf")

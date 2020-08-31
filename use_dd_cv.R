library(datadrivencv)
library(here)
datadrivencv::use_datadriven_cv(
  full_name = "Megan Beckett",
  data_location = "https://docs.google.com/spreadsheets/d/1QZCS5H0HE0LwcgEQkf6ZF4irRdSAjKLLnRql8EdSfew/edit?usp=sharing",
  pdf_location = "https://github.com/MeganBeckett/cv/raw/master/mbeckett_cv.pdf",
  html_location = "https://meganbeckett.github.io/mbeckett_cv",
  source_location = "https://github.com/MeganBeckett/cv",
  output_dir = here()
)

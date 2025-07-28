## code to prepare `dataname` dataset goes here

dataname <- data.frame(letter = letters,
                       index = seq_along(letters))

# usethis call to generate and save the dataset
usethis::use_data(dataname, overwrite = TRUE)

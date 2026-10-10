files <- list.files(pattern = "^OhOne.*\\.csv$")
files
#listing files to make sure they are named correctly
OhOnePitches <- do.call(rbind, lapply(files, read.csv))
#splice files
files <- list.files(pattern = "^OneOh.*\\.csv$")
files
#same process for 1-0 count
OneOhPitches <- do.call(rbind, lapply(files, read.csv))
#splice 1-0 files
nrow(OhOnePitches)
range(OhOnePitches$game_date)
sum(duplicated(OhOnePitches))
table(OhOnePitches$description)
#check accuracy of newly spliced files
h0 <- sum(OhOnePitches$events %in% hit)
h1 <- sum(OneOhPitches$events %in% hit)
#set variables for hit: h0 for 0-1 count, h1 for 1-0 count
sum(h1) / nrow(OneOhPitches)
#divide to get hit-per-pitch rate for 1-0 count
sum(h0) / nrow(OhOnePitches)
#vice versa for 0-1 count
prop.test(c(h0,h1), c(nrow(OhOnePitches), nrow(OneOhPitches)))
#check p-value for noise
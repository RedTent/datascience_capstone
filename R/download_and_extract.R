dir.create("data")
download.file("https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip", 
              "data/Coursera-SwiftKey.zip")

unzip("data/Coursera-SwiftKey.zip", junkpaths = TRUE, exdir = "data")



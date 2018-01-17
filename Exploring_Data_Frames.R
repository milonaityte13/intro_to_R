#Exploring dara frames

#load the data
cats <- read.csv(file="feline_data.csv")
cats <- read.csv(file="felince_data.csv")

#add another column to an existing dataframe
age <- c(2, 3, 5)

#two separate dataframes - cats and age. Gotta combine them
cbind(cats, age)

#what if the new column was longer the dataframe
age <- c(2, 3, 5, 9)
cbind(cats, age)

age <- c(2, 3, 5)
cats <- cbind(cats, age)
cats

#adding a new row
newRow <- list("White", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

#adding white as a factor
levels(cats$coat)
levels(cats$coat) <- c(levels(cats$coat), "White")

#adding a new row again
cats <- rbind(cats, list("White", 3.3, TRUE, 9))
cats

#challenge1
human.age <- cats$age * 7
human.age <- factor(human.age)
as.numeric(human.age)
human.age
human.age <- as.numeric(human.age)
age <- human.age /7

#deleting rows
cats
cats[c(-4, -5, -7),]
#but that doesn't overwrite existing data set, it's still 7 observations

#overwriting, to remove rows that have N/A values
na.omit(cats)
cats <- na.omit(cats)

#fix row name indexing
cats
rownames(cats) <- NULL
cats

#challenge2
df <- data.frame (first = c("Dovile"), last = c("Milonaityte"), lucky_number = c("13"), stringsAsFactors = FALSE)

df
rbind(df, list("Grace", "Smith", "0"))
df <- rbind(df, list("Grace", "Smith", "0"))
df

cbind (df, coffeebreak=c(TRUE, TRUE))

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
str(gapminder)
typeof(gapminder$year)
str(gapminder$country)
length(gapminder)
typeof(gapminder)

nrow(gapminder)

colnames(gapminder)

head(gapminder)

#challenge3
tail(gapminder)
tail(gapminder, n=15)

gapminder[sample(nrow(gapminder), 5), ]

#challenge4
gapminder

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")     
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")

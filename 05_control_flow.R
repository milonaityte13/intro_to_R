#loops and IF statements on R
#24 January 2018

#IF statements are used to take different routes through a program depending on values of variables

x <- 8
if (x>=10){
print ("x is greater than 10")
}else {
  print ("x is less than 10")
}

#to check for multiple conditions, use else if clauses
x <- 10
if (x>=10){
  print ("x is greater than or equal to 10")
}else if (x>5){
  print ("x is greater than 5, less than 10")
}else {
  print ("x is less than or equal to 5")
}

#dl gapminder
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
#challenge 1
#count the number of rows in the year column where the year is 2002
#making a vector out of it
gapminder[(gapminder$year == 2002), ]
#see how many rows there are from 2002
nrow(gapminder[(gapminder$year == 2002),])
rows2002_number <- nrow(gapminder[(gapminder$year == 2002),])
rows2002_number >= 1
if(nrow(gapminder[(gapminder$year == 2002),]) >=1){
  print("Record(s) for the year 2002 found.")
}else{
  print ("Record(s) from the year 2002 not found")
}

#Loops
#for loops repeat a fixed number of times
for (i in 1:10){
  print (i)
}

#nested loops (loop-ception)
for (i in 1:5){
  for (j in c('a','b','c','d','e')){
    print(paste(i, j))
  }
}

#WHILE loops repeat until some condition is met
z <- 1
while (z>0.1){
  z <- runif(1)
  print (z)
}

#challenge 3
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
unique(gapminder$continent)
#loop through gapminder to by continent, print out whether life expectancy is > or <50

for( iContinent in unique(gapminder$continent) ){
  tmp <- mean(subset(gapminder, continent==iContinent)$lifeExp)
  cat("Average Life Expectancy in", iContinent, "is", tmp, "\n")
  rm(tmp)
}

thresholdValue <- 50

  for( iContinent in unique(gapminder$continent) ){
    tmp <- mean(subset(gapminder, continent==iContinent)$lifeExp)
    
    if(tmp < thresholdValue){
      cat("Average Life Expectancy in", iContinent, "is less than", thresholdValue, "\n")
    }
    else{
      cat("Average Life Expectancy in", iContinent, "is greater than", thresholdValue, "\n")
    } # end if else condition
    rm(tmp)
  } # end for loop


#challenge 4
lowerThreshold <- 50
upperThreshold <- 70

for( iCountry in unique(gapminder$country) ){
  tmp <- mean(subset(gapminder, country==iCountry)$lifeExp)
  
  if(tmp < lowerThreshold){
    cat("Average Life Expectancy in", iCountry, "is less than", lowerThreshold, "\n")
  }
  else if(tmp > lowerThreshold && tmp < upperThreshold){
    cat("Average Life Expectancy in", iCountry, "is between", lowerThreshold, "and", upperThreshold, "\n")
  }
  else{
    cat("Average Life Expectancy in", iCountry, "is greater than", upperThreshold, "\n")
  }
  rm(tmp)
}

#
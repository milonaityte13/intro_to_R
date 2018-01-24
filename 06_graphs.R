#Creating graphics
#Dovile Milonaityte
#24 JAnuary 2018

#to use ggplot2
install.packages("ggplot2")
library("ggplot2")

gapdata <- read.csv(file = "data/gapminder-FiveYearData.csv")

ggplot(data=gapdata, aes(x = gdpPercap, y=lifeExp)) + geom_point()

#challenge1
ggplot(data=gapdata, aes(x = year, y=lifeExp)) + geom_point()

#challenge2
ggplot(data=gapdata, aes(x = year, y=lifeExp, color=continent)) + geom_point()

#challenge3
ggplot(data=gapdata, aes(x = year, y=lifeExp, by=country, color=continent)) + geom_line()

ggplot(data=gapdata, aes(x = year, y=lifeExp, by=country, color=continent)) + geom_line() + geom_point()

#changing to a log scale
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point(alpha = 0.5) + scale_x_log10()

#fitting in a relationship line
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point() + scale_x_log10() + geom_smooth(method="lm", size=1.5)

ggplot(data=gapdata, aes(x = year, y=lifeExp, by=country, color=country)) + geom_line()

#challenge 4a
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point(size=0.5, color="purple") + scale_x_log10() + geom_smooth(method="lm", size=1.5)

#challenge 4b
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(shape=17, size=1) + scale_x_log10() + geom_smooth(method="lm", size=1.5)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point(shape=17, size=1) + scale_x_log10() + geom_smooth(method="lm", size=1.5)

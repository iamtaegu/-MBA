setwd("D:/Rex")
news_reader <- read.csv('newspaper_readership_survey.csv')
ctgc_tab <- table( news_reader$Newspaper, news_reader$Occupation )
colnames(ctgc_tab)<- c("Blue Collar", "While Collar", "Professional")
rownames(ctgc_tab)<- c("G&M", "Post", "Star", "Sun")
ctgc_tab
barplot( ctgc_tab, col=c("red","yellow","orange","white"), beside=TRUE)
legend("topright",legend=c("G&M", "Post", "Star", "Sun"),
       col=c("red","yellow","orange","white"), pch=16 )


mtcars
plot( mtcars$mpg, mtcars$disp, col=mtcars$cyl, pch=mtcars$cyl)
legend("topright", legend=c("4","6","8"), col=c(4,6,8), pch=c(4,6,8))


airquality
plot( airquality$Wind, type="l", ylim=c(0, 100), ylab="Wind & Temp")
points( airquality$Temp, type="l", col="red", lty=2)
legend("right", c("Wind","temp"), col=c("black", "red"), lty=c(1, 2))


?quantile
mtcars

boxplot( rexp(300), range=3  )
A <- boxplot.stats( rexp(300), coef = 3  )
A$out

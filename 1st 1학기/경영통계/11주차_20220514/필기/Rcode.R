xbar <- 175622
s <- 37221
coeff <- qt(0.975, df=19)
n <- 20

xbar + c(-1, 1)*coeff*s/sqrt(n) 


#samp <- DF$var
#clevel <- 0.95
#xbar <- mean(samp)
#s <- sd(samp)
#n <- length(samp)
#coeff <- qt( 1 - (1-clevel)/2 , df=(n-1) )
#xbar + c(-1, 1)*coeff*s/sqrt(n) 

myCI <- function( samp, clevel ) {
  xbar <- mean(samp)
  s <- sd(samp)
  n <- length(samp)
  coeff <- qt( 1 - (1-clevel)/2 , df=(n-1) )
  return( xbar + c(-1, 1)*coeff*s/sqrt(n) )
}

dt <- rnorm( 36, mean=2 )

myCI ( dt, 0.95 )

pnorm(2.33, mean=0, sd=1)
qnorm(0.99)

2.33*sqrt((0.65*0.35)/120)
0.17 + c(-1, 1)*2.447*0.085/sqrt(7)

0.17 + 2.477*0.085/sqrt(7)

qt(0.95, 30)
qt(0.975,39)
qt(0.995, 48)
qchisq(0.975, 20)

# 0.005, 39 
qchisq(0.995, 39)
qchisq(0.005, 39)

29.5 + c(-1, 1)*2.68*6.39/7

#4_1
9.71 + c(-1, 1) * qt(0.975,39)*7.88/sqrt(40)
#4_2
sqrt(39*(1.6^2) / qchisq(0.005, 39))
sqrt(39*(1.6^2) / qchisq(0.995, 39))

100 + qnorm(0.05) * 5/8
3 + qnorm(0.95) * 0.5/10

1150 + qnorm(0.975) * 126/9

# 6_1
qnorm(0.99)
qt(0.99, 11)
# 6_2
qchisq(0.99, 1)
# 6_3
qchisq(0.95, 11) / 11


#1 
qnorm(0.99)*sqrt(0.65*0.35/120)
#2 
0.17 + c(-1,1)*qt(0.975, 6)*0.085/sqrt(7)
#3
29.5 + c(-1,1)*qnorm(0.995)*6.39/7

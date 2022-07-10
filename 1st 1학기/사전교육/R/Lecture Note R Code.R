# Example 1

3
1+1
5-7
pi

# Example 2

# Save the following as "Code 1.R"

print(1)
pritn(2)
a<-1+1

# Example 3

8 + 8
7 - 9
16 * 4
5 / 2
5 %/% 2
9 %% 3
7 ** 2

# Example 4

sqrt(5)
exp(1)
log(2)
log10(2)
sin(pi/2)
abs(-32)
floor(-8.2)

# Comment

log(20) # natural log with base 'e'
log(exp(1))

# Scalar

x <- 1
y <- 2
z <- TRUE
w <- 'w'

# Vector

x <- c(1,2,3,4,5) # 벡터형 자료를 생성해서 변수 x에 할당한다 (Allocate numbers to x)
x

y <- rnorm(30) # 30개의 정규분포를 따르는 난수를 생성해서 변수 y에 할당한다 (Generate 30 random numbers following normal distribution)
y

# Vector 연산 (Functions applied to vectors)

length(x)
mean(x)
sd(x)
range(x)
summary(x)
sort(x)
sort(x, decreasing = TRUE)

# Vector indexing

x <- c(1,3,5,7,9)
x
x[2] # x의 두 번째 원소 (Second element of x)
x[-2] # x의 두 번째 원소를 제외한 나머지 원소들 (Elemets except x)
x[3] # x의 세 번째 원소 확인 (Third element of x)
x[3]<-4 # x의 세번째 원소(5)를 4로 바꿈 (Change third element (5) to 4)
x # x 확인 (Check x)
x[2<x&x<5] # 2<x<5인 원소들 모두 출력 (print all x that is greater than 2 and less than 5)
y <- replace(x, c(2,4), c(11,13)) # x의 2,4번째 원소를 11, 13으로 바꿈 (change second and fourth element of x to 11 and 13, respectively)
y

# Vector conditioanl indexing

x[x<=2|x>=5]
x[(x<=2|x>=5) | (x==3)]

# Understanding of vector indexing

rm(list=ls())
x <- c(1,2,3,4,5)
x[0]
x[c(1,2)]
x[c(4,5)]
x<5
x_index <- x<5
is.vector(x)
is.vector(x_index)
x[x_index]


# Matrix

vec1 <- c(1,2,3) # Generate vector (1,2,3) 
vec2 <- c(4,5,6) # Generate vector (4,5,6) 
vec3 <- c(7,8,9) # Generate vector (7,8,9) 
vec4 <- c("a","b","c") # make vector ("a","b","c") 

mat1 <- rbind(vec1, vec2, vec3) # Generate matrix in row-direction
mat1
mat1b <- rbind(vec1, vec2, vec4) # Generate matrix in row-direction
mat1b
mat2 <- cbind(vec1, vec2, vec3) # Generate matrix in column-direction
mat2

mat3 <- matrix(1:12, nrow = 3) # 3개의 row를 가진 3*4 행렬 생성
mat3
mat3b <- matrix(1:12, ncol = 4) # 3개의 row를 가진 3*4 행렬 생성
mat3b
mat3c <- matrix(1:12, ncol = 4, byrow=TRUE) # 3개의 row를 가진 3*4 행렬 생성
mat3c
mat4 <- matrix(1:12, 
               nrow = 3, 
               dimnames = list(c("R1", "R2", "R3"),
                               c("C1", "C2", "C3", "C4"))
               ) # 행과 열 이름 설정
mat4
mat4b <- matrix(1:12, 
                nrow = 4, 
                dimnames = list(c("C1", "C2", "C3", "C4"),
                                c("R1", "R2", "R3")),
                byrow=TRUE
                ) # 행과 열 이름 설정
mat4b

# Matrix indexing

## Elements

mat1[1]
mat1[1,1]
mat1[1,2]
mat1[1,2,drop=FALSE]

## Row

mat1[1,]
mat1[1,,drop=FALSE]

mat1[2]
mat1[2,]
mat1[2,,drop=FALSE]

## Columns

mat1[,1]
mat1[,2]
mat1[,2,drop=FALSE]

## Submatrix 1

mat1[1:1,2:3]
mat1[1:1,2:3]
mat1[1:1,2:3,drop=FALSE]

## Submatrix 2

mat1[c(1)]
mat1[c(1),]
mat1[c(1,3)]
mat1[c(1,3),]
mat1[c(1,3),c(1,3)]

# 문자열

chars <- c("a","b","c","d","e","f","g","h","i","j") # 문자열 벡터
chars
chars2 <- c("apple","banana","card","dimension","erorr","fire","good","high","identifiers","james") # 문자열 벡터
chars2

mat5 <- matrix(chars2) # 문자열 벡터를 '열의 개수가 1개인 행렬'로 만듬
mat5
mat6 <-matrix(chars2, nrow = 5) # 문자열 벡터를 '행의 개수가 5개인 5*2 행렬'로 만듬
mat6

## Reshaping

mat7 <- matrix(1:24, nrow=8)
mat7
dim(mat7) <- c(2,12)

## 행렬 연산

x1 <- matrix(1:8, nrow=2)
x1
x1*3 # 행렬 x1의 각 원소에 3을 곱한다
x1*c(10,20) # 행렬 x1의 첫 번째 행에는 10, 두 번째 행에는 20을 곱한다.
x1*c(10,20,30,40) # 결과 확인 
x1*rep(c(10,20,30,40),2) # 원하는 결과
x1*x1

mat1
apply(mat1, 1, max) # 행렬 mat1의 각 행에서 가장 큰 원소를 출력 (1: 행 방향)
apply(mat1, 2, mean) # 행렬 mat1의 각 열의 원소들의 평균

x1 <- matrix(1:8, nrow=2); x1
x2 <- matrix(9:16, nrow=2); x2
x3 <- matrix(9:16, nrow=4); x3

x1+x2 # 행렬의 덧셈
x1-x2 # 행렬의 뺄셈
x1/x2 # 행렬 각 성분의 나눗셈
x1*x2 # 행렬 각 성분의 곱셈
x1 %*% x3 # 행렬의 곱셈

# Array

x <- array(1:24, dim=c(2,4,3))
x

y <- array(1:120, dim=c(2,4,3,5))
y

x[1,] # error
x[1,,]
mean(x[1,,])
x[1,3,]
mean(x[1,3,])

x[,2,]
x[,2,3]


# Dataframe

x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)
z <- c(6,7,8,9,11)

ticker <- c("AAPL", "MSFT", "AMZN", "GOOG", "FB")
ym <- c(202201,202201,202201,202201,202201)
ym2 <- c(1,2,3,4,5)
prices <- c(174.78, 310.98, 2991.47, 2713.97	,313.26)
shrout <- c(16334371000,7496866000,507148000,317738000,2366278000)

stocks <- data.frame(ticker = ticker, ym = ym, prices = prices, shrout = shrout)
stocks
colnames(stocks)

## indexing by numbers

stocks[1,]
stocks[2:4,]
stocks[,1]
stocks[,1,drop=FALSE]
stocks[,-3]

## indexing by column names

stocks$ticker
stocks$prices

## conditional indexing

stocks$prices
stocks$prices<1000
stocks[stocks$prices<1000] # error
stocks[stocks$prices<1000, ] # should add , to get no errors
portfolios <- stocks[stocks$prices<1000, ]

portfolios

stocks$prices * stocks$shrout
stocks$mktcap <- stocks$price * stocks$shrout
stocks$mktcap
stocks

stocks[stocks$mktcap>1e12,]
portfolios2 <- stocks[stocks$mktcap>1e12,]

# List

db <- list(universe=stocks, country="US", asset_class="Equity")
db$universe
db$country
db$asset_class

check <- db$universe
check2 <- db[1]
check2 <- db[[1]]

## List에 key 추가
db$author <- "Cho"


# Function

multiple <- function(x,y){
  z = x * y
  return(z)
}
multiple(2,3)
multiple(1.8603,0)

# Functions in data preprocess

universe1$mktcap <- universe1$prices*universe1$shrout
universe1_final <- universe1[universe1$mktcap>1e12,]
universe2$mktcap <- universe2$prices*universe2$shrout
universe2_final <- universe2[universe2$mktcap>1e12,]
universe3$mktcap <- universe3$prices*universe3$shrout
universe3_final <- universe3[universe3$mktcap>1e12,]
universe4$mktcap <- universe4$prices*universe1$shrout
universe4_final <- universe4[universe1$mktcap>1e12,]
universe5$mktcap <- universe5$prices*universe1$shrout
universe5_final <- universe5[universe1$mktcap>1e12]
universe6$mktcap <- universe6$prices*universe1$shrout
universe6_final <- universe6[universe1$mktcap>1e12,]
universe7$mktcap <- universe71$prices*universe7$shrout
universe7_final <- universe7[universe1$mktcap>1e12,]
universe8$mktcap <- universe8$prices*universe8$shrout
universe8_final <- universe8[universe1$mktcap>1e12,]
universe9$mktcap <- universe9$prices*universe9$shrout
universe9_final <- universe9[universe9$mktcap>1e12,]
universe10$mktcap <- universe10$prices*universe10$shrout
universe10_final <- universe10[universe10$mktcap>1e12,]

get_universe <- function(df){
  # df<- stocks
  df$mktcap <- df$prices*df$shrout
  df_final <- df[df$mktcap>1e12,]
  return(df_final)
}

universe1_final1 <- get_universe(universe1)
universe1_final2 <- get_universe(universe2)
universe1_final3 <- get_universe(universe3)
universe1_final4 <- get_universe(universe4)
universe1_final5 <- get_universe(universe5)
universe1_final6 <- get_universe(universe6)
universe1_final7 <- get_universe(universe7)
universe1_final8 <- get_universe(universe8)
universe1_final9 <- get_universe(universe9)
universe1_final0 <- get_universe(universe10)

# for loop

for (i in 1:10){
  print(i)
}
# For loop

sum1 <- 0
for (i in 1:10){
  sum1 <- sum1 + i
  print(i)
}
sum1

sum2<-0
for (i in 1:5){
  for (j in 1:5){
    sum2 <- sum2+i*j
  }
}
sum2

universes <- list(stocks, stocks, stocks, stocks, stocks, 
                  stocks, stocks, stocks, stocks, stocks
                 )
list_universe = list()
for (i in 1:10){
  tmp_df <- universes[[i]]
  tmp_universe <- get_universe(tmp_df)
  tmp_list <- list(tmp_universe)
  list_universe <- append(list_universe, tmp_list)
}

list_universe
length(list_universe)

#############
# If exercise

universes <- list(stocks, stocks, stocks, stocks, stocks, 
                  stocks, stocks, stocks, stocks, stocks
)
list_universe = list()
for (i in 1:10){
  if (i<=5){
    tmp_df <- universes[[i]]
    tmp_universe <- get_universe(tmp_df)
    tmp_list <- list(tmp_universe)
    list_universe <- append(list_universe, tmp_list)
  }
}

list_universe
length(list_universe)

#############
# If exercise

universes <- list(stocks, stocks, stocks, stocks, stocks, 
                  stocks, stocks, stocks, stocks, stocks
)
list_universe = list()
for (i in 1:10){
  if (i<=5 | i==10){
    tmp_df <- universes[[i]]
    tmp_universe <- get_universe(tmp_df)
    tmp_list <- list(tmp_universe)
    list_universe <- append(list_universe, tmp_list)
  }
}

list_universe

#############
# If, else if 

universes <- list(stocks, stocks, stocks, stocks, stocks, 
                  stocks, stocks, stocks, stocks, stocks
)
list_universe = list()
for (i in 1:10){
  if (i<=5){
    tmp_df <- universes[[i]]
    tmp_universe <- get_universe(tmp_df)
    tmp_list <- list(tmp_universe)
    list_universe <- append(list_universe, tmp_list)
  } else if (i==10){
    print(i)
    print('Discuss later')
  } else {
    print(i)
    print('No.')
  }
}

list_universe
length(list_universe)

# ifelse function

x <- runif(1); x # 0과 1 사이의 난수를 생성해서 x에 저장
ifelse(x>0.5, "Large", "Small") #x가 0.5보다 크면 Large 출력, 0.5보다 작으면 Small 출력

x <- runif(10); x
ifelse(x>0.5, "Large", "Small")

# Package install and load

##Required packages
#데이터 읽어오기
install.packages('data.table')
install.packages('readxl')
#데이터 전처리
install.packages('plyr')
install.packages('dplyr')
#데이터 합치기
install.packages('bindrcpp')
#데이터 형태 바꾸기
install.packages('reshape')
#데이터 그래프 그리기
install.packages('ggplot2')
install.packages('Rcpp')

#라이브러리 로드
library('data.table')
library('readxl')
library('plyr')
library('dplyr')
library('bindrcpp')
library('readr')

#working directory 설정
getwd()
setwd('C:/Users/Feelab/Dropbox/TA/DFMBA 2022/data')

#data load
ind_data <- read_excel('kospi dataset.xlsx',
                       sheet = 'mktcap&ind code')

rm(ind_data)

ind_data <- read.csv('kospi mktcap&ind code.csv', 
                     head = TRUE)

#data summary
head(ind_data) # 상위 5개 자료 요약

ls(ind_data) # 변수명을 abc 순서로 보여줌

str(ind_data) # 변수의 타입

dim(ind_data) # 변수의 행과 열 개수

summary(ind_data) # 데이터 요약

#data practice

data1 <- ind_data[1:2,]; data1 #ind data의 1, 2행을 분리하여 data1로 저장
data2 <- ind_data[3:6,]; data2 #ind data의 3 ~ 6행을 분리하여 data2로 저장
newdata1 <- rbind(data1, data2); newdata1 # data1, data2를 행 (row) 방향으로 결합

data3 <- ind_data[,1]; data3 #ind data의 1열을 분리하여 data3으로 저장
data4 <- ind_data[,c(2,4)]; data4 #ind data의 2, 4열을 분리하여 data3으로 저장
newdata2 <- cbind(data3, data4); newdata2 # data3, data4를 열 (column) 방향으로 결합

prc_data <- read_excel('kospi dataset.xlsx',
                       sheet = 'stock price')

prc_data1 <- prc_data[,2:6] # date 열 제거

apply(prc_data1, 2, mean) #각 변수(column)별 평균
apply(prc_data1, 2, sum) #각 변수(column)별 총합
apply(prc_data1, 2, max) #각 변수(column)별 최대값
apply(prc_data1, 2, min) #각 변수(column)별 최소값

# 탐색적 데이터 분석
# Categorical variables - nominal

x <- as.numeric(factor(ind_data$industry))
ind_data$ind_code <- x

freq_table01 <- table(ind_data$industry)
freq_table1 <- as.data.frame(freq_table01)
colnames(freq_table1) <- c('cart', 'freq')

freq_table1$ratio <- freq_table1$freq / dim(ind_data)[1]

x <- subset(freq_table1, select = c(cart, ratio))
x <- subset(freq_table1, select = -c(freq))

barplot(freq_table01)

length(freq_table01)
rainbow(7)

barplot(freq_table01, col = rainbow(length(freq_table01)))
barplot(freq_table01, col = rainbow(length(freq_table01)), legend = TRUE)
barplot(freq_table01, col = rainbow(length(freq_table01)), horiz = TRUE, legend = TRUE)


pie(freq_table01)



freq_table1$cart
round(freq_table1$ratio * 100, 1)
paste(freq_table1$cart, round(freq_table1$ratio * 100, 1), '%')


x<-paste(freq_table1$cart, round(freq_table1$ratio * 100, 1), '%'); x

pie(freq_table01, la = x)


col_list <- c("lightblue", "mistyrose", "lightcyan", "lavender", "cornsilk", "bisque", "ivory")
pie(freq_table01, la = x)

# Categorical variables - ordinal

xx <- 2
ifelse(xx >= 5, 'a', ifelse(xx >= 3, 'b', 'c'))

mc <- ind_data$mktcap; mc

mktcap_cart <- ifelse(mc >= 10000000, 'Large',
                      ifelse(mc < 10000000 & mc >=1000000, 'Large-Medium',
                             ifelse(mc < 1000000 & mc >= 500000, 'Medium',
                                    ifelse(mc < 500000 & mc >= 100000, 'Medium-Small', 'Small'))))


ind_data$mktcap_cart <- mktcap_cart

freq_table02 <- table(ind_data$mktcap_cart)
freq_table2 <- as.data.frame(freq_table02)
colnames(freq_table2)[1] <- 'cart'
colnames(freq_table2)[2] <- 'freq'
freq_table2$ratio <- freq_table2$freq / sum(freq_table2$freq)


barplot(freq_table02)
barplot(freq_table02, col = rainbow(length(freq_table02)), legend = TRUE)

col_list <- c("lightblue", "mistyrose", "lightcyan", "lavender", "cornsilk")
barplot(freq_table02, col = col_list, legend = TRUE)

pie(freq_table02)

x<-paste(freq_table2$cart, round(freq_table2$ratio * 100, 1), '%'); x
pie(freq_table02, labels = x)



freq_table03 <- table(ind_data$industry, ind_data$mktcap_cart)

freq_table3 <- as.data.frame(freq_table03)

colnames(freq_table3) <- c('ind','mktcap','freq')

freq_table4 <- unstack(freq_table3, freq~ind)

rownames(freq_table4) <- freq_table2$cart

freq_table5 = freq_table4/sum(freq_table4) * 100

colors()[c(23,89,12,57,29)]

barplot(data.matrix(freq_table4),
        col = colors()[c(23,89,12,57,29)],
        legend = rownames(freq_table4))

freq_table4t <- t(freq_table4)

barplot(data.matrix(freq_table4t),
        col = colors()[c(23,89,12,57,29, 18, 52)],
        legend = colnames(freq_table4),
        ylab = 'Freq',
        xlab = 'Market cap')

barplot(data.matrix(freq_table4),
        col = colors()[c(23,89,12,57,29, 18, 52)],
        legend = colnames(freq_table4),
        beside = T,
        ylab = 'Freq',
        xlab = 'Market cap')


###################Continuous variables###################

hist(prc_data$samsung, breaks = 100)
plot(samsung~date, prc_data)

hist(prc_data$KOSPI)
plot(KOSPI~date, prc_data)

plot(samsung~KOSPI, prc_data)
plot(hyundai~sk, prc_data)
plot(samsung~sk, prc_data)

plot(samsung~date, prc_data)
lines(sk~date, prc_data)

temp <- c(prc_data$samsung, prc_data$sk, prc_data$hyundai)

range(temp)

plot(samsung~date, prc_data, ylim = range(temp), ylab = 'samsung price', xlab = 'Date',
     type = 'l', lty = 5, col = 'red', lwd = 3, main = 'samsung vs sk')

lines(sk~date, prc_data, lty = 1, col = 'black', lwd = 2)
lines(hyundai~date, prc_data, lty = 4, col = 'red', lwd = 2)

legend('topright', legend = c('samsung', 'sk', 'hyundai'), lty = c(5, 1, 4), 
       col = c('red', 'black', 'red'), lwd = c(2, 1, 2), cex = 0.7)

temp <- c(prc_data$lg, prc_data$hyundai)
range(temp)

## lty : line type
plot(lg~date, prc_data, ylim = range(temp), ylab = 'price', xlab = 'date', 
     type = 'l', lty = 3, col = 'blue', lwd = 2, main = 'lg vs hyundai')
lines(hyundai~date, prc_data, lty = 4, col = 'red', lwd = 2)
legend('bottomright', legend=c("LG Chem", "Hyundai motors"), 
       lty = c(3,4), col = c('blue','red'), lwd = c(2,2), cex = 1)


#return data
#(P_(t+1) - P_(t))/P_(t)

lprc_data1 <- lag(prc_data1)

ret_data0 <- (prc_data1 - lprc_data1)/lprc_data1 * 100

date_data <- prc_data['date']

ret_data <- cbind(date_data, ret_data0)

plot(samsung~date, ret_data, type = 'l')

rs <- ret_data$samsung

plot(date_data, rs, type = 'l')

hist(rs, breaks = 100)
mean(rs)
sd(rs)


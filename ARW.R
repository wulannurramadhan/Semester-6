library(forecast)
library(TTR)
library(graphics)
hujan <-read.csv("C:/Users/A&T Unlock/Downloads/hujan.csv",header = TRUE,sep = ";")
hujan
hujan.ts <- ts(hujan, start=c(1813))
#SMA2
hujan.sma2 <- SMA(hujan.ts,n=2)
cbind(hujan.ts,hujan.sma2)
#Prediksi
phujan.sma2 <- lag(hujan.sma2,-1)
phujan.sma2
sma2 <- cbind(hujan.ts,hujan.sma2,phujan.sma2)
sma2
#Evaluasi
SSE2 <- sum((phujan.sma2-hujan.ts)^2,na.rm=T)
MSE2 <- mean((phujan.sma2-hujan.ts)^2,na.rm=T)
MAPE2 <- mean(abs((hujan.ts-phujan.sma2)/hujan.ts),na.rm=T)
MSE2
MAPE2

#SMA3
hujan.sma3 <- SMA(hujan.ts,n=3)
cbind(hujan.ts,hujan.sma3)
#Prediksi
phujan.sma3 <- lag(hujan.sma3,-1)
phujan.sma3
sma3 <- cbind(hujan.ts,hujan.sma3,phujan.sma3)
sma3
#Evaluasi
SSE3 <- sum((phujan.sma3-hujan.ts)^2,na.rm=T)
MSE3 <- mean((phujan.sma3-hujan.ts)^2,na.rm=T)
MAPE3 <- mean(abs((hujan.ts-phujan.sma3)/hujan.ts),na.rm=T)
MSE3
MAPE3

#SMA4
hujan.sma4 <- SMA(hujan.ts,n=4)
cbind(hujan.ts,hujan.sma4)
#Prediksi
phujan.sma4 <- lag(hujan.sma4,-1)
phujan.sma4
sma4 <- cbind(hujan.ts,hujan.sma4,phujan.sma4)
sma4
#Evaluasi
SSE4 <- sum((phujan.sma4-hujan.ts)^2,na.rm=T)
MSE4 <- mean((phujan.sma4-hujan.ts)^2,na.rm=T)
MAPE4 <- mean(abs((hujan.ts-phujan.sma4)/hujan.ts),na.rm=T)
MSE4
MAPE4

#SMA5
hujan.sma5 <- SMA(hujan.ts,n=5)
cbind(hujan.ts,hujan.sma5)
#Prediksi
phujan.sma5 <- lag(hujan.sma5,-1)
phujan.sma5
sma5 <- cbind(hujan.ts,hujan.sma5,phujan.sma5)
sma5
#Evaluasi
SSE5 <- sum((phujan.sma5-hujan.ts)^2,na.rm=T)
MSE5 <- mean((phujan.sma5-hujan.ts)^2,na.rm=T)
MAPE5 <- mean(abs((hujan.ts-phujan.sma5)/hujan.ts),na.rm=T)
MSE5
MAPE5

#SMA6
hujan.sma6 <- SMA(hujan.ts,n=6)
cbind(hujan.ts,hujan.sma6)
#Prediksi
phujan.sma6 <- lag(hujan.sma6,-1)
phujan.sma6
sma6 <- cbind(hujan.ts,hujan.sma6,phujan.sma6)
sma6
#Evaluasi
SSE6 <- sum((phujan.sma6-hujan.ts)^2,na.rm=T)
MSE6 <- mean((phujan.sma6-hujan.ts)^2,na.rm=T)
MAPE6 <- mean(abs((hujan.ts-phujan.sma6)/hujan.ts),na.rm=T)
MSE6
MAPE6

#SMA7
hujan.sma7 <- SMA(hujan.ts,n=7)
cbind(hujan.ts,hujan.sma7)
#Prediksi
phujan.sma7 <- lag(hujan.sma7,-1)
phujan.sma7
sma7 <- cbind(hujan.ts,hujan.sma7,phujan.sma7)
sma7
#Evaluasi
SSE7 <- sum((phujan.sma7-hujan.ts)^2,na.rm=T)
MSE7 <- mean((phujan.sma7-hujan.ts)^2,na.rm=T)
MAPE7 <- mean(abs((hujan.ts-phujan.sma7)/hujan.ts),na.rm=T)
MSE7
MAPE7

#SMA8
hujan.sma8 <- SMA(hujan.ts,n=8)
cbind(hujan.ts,hujan.sma8)
#Prediksi
phujan.sma8 <- lag(hujan.sma8,-1)
phujan.sma8
sma8 <- cbind(hujan.ts,hujan.sma8,phujan.sma8)
sma8
#Evaluasi
SSE8 <- sum((phujan.sma8-hujan.ts)^2,na.rm=T)
MSE8 <- mean((phujan.sma8-hujan.ts)^2,na.rm=T)
MAPE8 <- mean(abs((hujan.ts-phujan.sma8)/hujan.ts),na.rm=T)
MSE8
MAPE8

#SMA9
hujan.sma9 <- SMA(hujan.ts,n=9)
cbind(hujan.ts,hujan.sma9)
#Prediksi
phujan.sma9 <- lag(hujan.sma9,-1)
phujan.sma9
sma9 <- cbind(hujan.ts,hujan.sma9,phujan.sma9)
sma9
#Evaluasi
SSE9 <- sum((phujan.sma9-hujan.ts)^2,na.rm=T)
MSE9 <- mean((phujan.sma9-hujan.ts)^2,na.rm=T)
MAPE9 <- mean(abs((hujan.ts-phujan.sma9)/hujan.ts),na.rm=T)
MSE9
MAPE9

#SMA10
hujan.sma10 <- SMA(hujan.ts,n=10)
cbind(hujan.ts,hujan.sma10)
#Prediksi
phujan.sma10 <- lag(hujan.sma10,-1)
phujan.sma10
sma10 <- cbind(hujan.ts,hujan.sma10,phujan.sma10)
sma10
#Evaluasi
SSE10 <- sum((phujan.sma10-hujan.ts)^2,na.rm=T)
MSE10 <- mean((phujan.sma10-hujan.ts)^2,na.rm=T)
MAPE10 <- mean(abs((hujan.ts-phujan.sma10)/hujan.ts),na.rm=T)
MSE10
MAPE10

#Plot
plot(hujan.ts,xlab="Tahun",ylab="Curah Hujan",lty=1,col="black")
points(hujan.ts)
lines(hujan.sma3, col = "red")


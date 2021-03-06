#a 
xmin <- c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
xmax <- c(25.0,22.8,31.2,27.3,28.4,20.2,24.1)

#b
TempDifference <- xmax - xmin

#c
totalMax <- sum(xmax)
totalMin <- sum(xmin)
avgMax <- totalMax/length (xmax)
avgMin <- totalMin/length (xmin)

#d
xmin [xmin<avgMin]


#e
xmin [xmax>avgMax]

#f
dateNames <- c('01Mon18', '02Tue18','03Wed18','04Thu18',';05Fri18','06Sat18','07Sun18')
names(xmin) <- dateNames

names(xmax) <- dateNames

#g
temperatures <- data.frame(
  df.dateNames = dateNames,
  df.xmin = xmin, 
  df.xmax = xmax,
  df.TempDifference = TempDifference
)
temperatures
length(temperatures)

#h
temperatures <- within(temperatures,{xminFahrenheit<-(9/5)*df.xmin + 32})
temperatures

#i
xmaxFahrenheit <- (9/5)*xmax + 32
xminFahrenheit <- (9/5)*xmin + 32
TempDifferenceF <- xmaxFahrenheit - xminFahrenheit

temperaturesF <- data.frame(
  df.dateNames = dateNames,
  df.xmin = xminFahrenheit, 
  df.xmax = xmaxFahrenheit,df.TempDifference=TempDifferenceF)

temperaturesF

#j
#1)
temperaturesF[c(1,2,3,4,5),c('df.dateNames','df.xmin','df.xmax','df.TempDifference')]
#2)
temperaturesF[c(-6,-7),c('df.dateNames','df.xmin','df.xmax','df.TempDifference')]





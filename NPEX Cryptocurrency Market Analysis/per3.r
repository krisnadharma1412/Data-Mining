num <- c(5,9,NA,6,NA,7,6,NA)
name <- c("Charlie", "Budi", NA, "Kezia", 
          "Nadia", NA, "Kezia", NA)
dataframe <- data.frame(Name = as.factor(name), Age = num)

#Missing Value
is.na(num)

#Mengganti semua value NA menjadi 0
num[is.na(num)] <- 0
num

#Mengganti value NA menjadi angka berurutan
num[is.na(num)] <- c(-1, 0, -5)
num

#Menghilangkan NA
num <- num[!is.na(num)]

# Menghapus seluruh data yang NA pada dataframe
na.omit(dataframe)

# Secara spesifik kolom name
dataframe[!is.na(dataframe$name),]

#Duplicate Value
duplicated(dataframe)
num[duplicated(num)]

dataframe[!duplicated(dataframe), ]

#Less than or greater than value
num >8
num[num > 8]
num[num < 8]
num[num = 6]
num[num == 6]


#                     Aggreate

#SUM -> Jumlah total penjumlahan semua data
sum(num)
#Kalau ada NA
sum(num, na.rm = TRUE)

#LENGTH -> jumlah data
length(num)

#Kalau ada NA
length(num[is.na(num)])

#MEAN -> rata-rata
mean(num)

#MEDIAN
median(num)

#MAX
max(num)

#MIN
min(num)

#STANDART DEVIATION
sd(num)

#SUMMARY
summary(dataframe)

###############LATIHAN SOAL###############
#1
#read csv

npex<-read.csv("Exchange Rate.csv", fileEncoding = 'UTF-8-BOM', stringsAsFactors = TRUE)

btc <- npex[npex$Cryptocurrency == "BTC", ]
eth <- npex[npex$Cryptocurrency == "ETH", ]
xrp <- npex[npex$Cryptocurrency == "XRP", ]

#2 
btc <- btc[order(btc$Date, btc$Time),]
eth <- eth[order(eth$Date, eth$Time), ]
xrp <- xrp[order(xrp$Date, xrp$Time), ]

#descending
btc <- btc[order(btc$Date, btc$Time, decreasing = TRUE),]

#3
eth.16Aug <- eth[eth$Date == "16-Aug-18", ]
eth.16Aug.open <- eth.16Aug$Price[1]
eth.16Aug.close <- eth.16Aug$Price[length(eth.16Aug$Price)]
paste("Open: ", eth.16Aug.open)

length(eth.16Aug)

#4
btc.15Aug <- btc[btc$Date == "15-Aug-18", ]
btc.15Aug$Price
price <- as.numeric(gsub(".","", btc.15Aug$Price, fixed = TRUE))

max(btc.15Aug$Price)
format(max(price), big.mark = ".", decimal.mark = ",")

#5
xrp.18Aug <- xrp[xrp$Date == "18-Aug-18",]
summary(xrp.18Aug)
price <- as.numeric(gsub(".","", xrp.18Aug$Price, fixed = TRUE))
mean(price)
median(price)
sd(price)
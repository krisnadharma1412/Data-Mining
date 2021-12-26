#Pertemuan 1

print("Hello World")

#Tipe Data
#- Skalar
#int / numeric, string, logical

#assignment
# = <-  ->  <<-  ->>
a <- 4 #assign angka 4 ke a
2 -> b #assign angka 2 ke b
c = TRUE

test <- function(){
  xyz <- 10 #panah 1 scoopnya lokal(nilai xyz hanya berada pada scoop function)
}

test <- function(){
  xyz <<- 10 #panah 2 scoopnya global(ada di values global environment)
}

test()


#- Non Skalar 
#(Vector, Table, Matrix, Factor, Dataframe)

#Vector
x <- c(1,5,3,4,5,2)
x[1]

x <- c(305:400) #menghasilkan angka dari 305 sampai 400

x <- 69
char_x <- as.character(x)
char_x

is.character(x) #ngecek apakah x adalah karakter atau bukan

#table
datas <- c(4,2,5,6,1,4,2,1,2,6,2,2)
table(datas) #mengetahui jumlah data unik beserta frekuensinya

#matrix
x <- matrix(1:10, nrow=5, ncol=2)

#ngambil angka 7
x[2,2]

#ngambil angka 3,4,8,9
x[c(3:4), c(1,2)]

#factor
datas <- c("Adit", "Budi", "Adit", "Charlie")

factor(datas) # Menampilkan data yang unik

factored <- factor(datas)
str(factored)

#dataframe
datas <- read.csv("data.csv", sep = ";")
datas <- read.csv("data.csv", sep = ";",stringsAsFactors =  TRUE)
str(datas$city)

# a
x <- c(4, 1, 1, 4)

#b
y <- c(1, 4)

#c
x - y
#It is the difference between the elements of vector x and elements of vector y
## But the question was what happens when x and y have different lengths.
x - y
## here is equivalent to 
x - rep(y, 2)

#d
s <- c(x, y)


#e
rep(s, 10)

length(s)

# f
rep(s, each = 3)

# g) 
 seq(7, 21, by=1)
7:21

# h
length(7:21)

# Collatz
Small haskell program that generates a histogram of the number of steps required to get a number `n` to zero, by looping through:
`if n%2 == 0 {n = n/2} else {n = 3n +1}`
It produces a pretty cool histogram that looks a bit like the vector field of a differential equation whose solution is of the form of something like 1/x with an upper bound. Whatever it is, its a pretty cool pattern, and you can generate the histogram up to any range with this program. This is a naive, totally unoptimized approach.

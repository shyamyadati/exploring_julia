# Reagular print
print("Hello world\n")

# a println statement
println("Hello world - line!")

# Prining a variable value
x = 42
println("The value of x = ", x)

# printing multiple values
y = 11
println("The value of x = ", x, ", and the value of y = ", y)

# printing a long line
print("The value of x = ")
print(x)
print(", And the value of y = ")
println(y)

# formatting a float value
println("pi = ", Float64(pi))
using Printf
@printf("%s %.3f\n", "pi to 3 decimal places = ", Float64(pi))

#concatenating string variables
x_str = "My name is"
y_str = "Zizzybaluba"
sentence = x_str * " " * y_str
println(sentence)

# we ca also concatentate using string
sentence2 = string(x_str, " ", y_str)
println("this is sentence2: ", sentence2)
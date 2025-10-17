using Plots

#Subject 1

temp = 25
raining = false

if 15<temp<30 && raining == false
    println("Go for a walk!")
end

if temp>=30 && raining == false
    println("Go to a beach!")
end

if raining == true || temp<=15
    println("Stay at home")
end

#Subject 2

product = 1

for i in (1:1:6)
    product = product*i
end

println(product)

#Subject 3

function quadratic_roots(a, b, c)
    delta = b^2-4*a*c
    x1 = (-b+sqrt(delta))/(2*a)
    x2 = (-b-sqrt(delta))/(2*a)
    return(x1, x2)
end
#Subject 1 - vectors

x = [10, 14, 21, 90, 12]
y = [3, 4, 22, 100, 13]

x_mean = sum(x)/length(x)
y_mean = sum(y)/length(y)

x_deam = x .- x_mean
y_deam = y .- y_mean

product = x_deam .* y_deam

covariance_xy = sum(product)/(length(product)-1)

println(covariance_xy)
#Subject 2 

function analyze_absences(n_absences)
    n = length(n.abscenes)
    mask = Vector{Int}(0,n)
    for i in 1:n
        if (n_abscenes[i]>3)
            mask[i] = 1
        end
    end
    absent = sum(mask)
    absent_students = Vector{Int}(0,n)
    for i in 1:n
        if mask[i]>0
            absent_students[i] = n_abscenes[i]
        end
    end
    avarage = sum(absent_students)/absent
    return absent, avarage
end
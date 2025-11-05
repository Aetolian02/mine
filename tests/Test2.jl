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

#Subject 2 - mask

function analyze_absences(n_absences)
    n = length(n.abscenes)
    mask = zeros(n)
    for i in 1:n
        if (n_abscenes[i]>3)
            mask[i] = 1
        end
    end
    absent = zeros(n)
    absent_students = Vector{Int}(0,n)
    for i in 1:n
        if mask[i]>0
            absent_students[i] = n_abscenes[i]
        end
    end
    avarage = sum(absent_students)/absent
    return absent, avarage
end

#Subject 3 - matrix

n_rows = 4
n_cols = 3
center_i = 2
center_j = 2

A = zeros(n_rows,n_cols)
for i in 1:n_rows
    for j in 1:n_cols
        A[i,j] = sqrt((i-center_i)^2+(j-center_j)^2)
    end
end

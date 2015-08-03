#Codility
def solution(n)
   size=Math.sqrt(n).floor
   for i in 1..size
        if n%i == 0
            a=i
        end
    end
    b=n/a
    return(2*(a+b))
end

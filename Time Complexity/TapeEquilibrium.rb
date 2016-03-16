#Codility
def solution(a)
    sum=0
    p=0
    for i in 0...a.size
      sum+=a[i]
    end
    min=(sum-2*a[0]).abs
    for i in 0...a.size-1
        p+=a[i]
        diff=(sum-2*p).abs
        if diff<min
            min=diff
        end
    end
    return min
    
end

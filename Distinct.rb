def solution(a)
    a=a.sort
    
    count=0
    for i in 0...a.size-1
        if (a[i]!= a[i+1])
            count+=1
        end
    end
    
    if count==0
        if a.size==0
            return 0
        else
            return 1
        end
    end
     return count+1
end
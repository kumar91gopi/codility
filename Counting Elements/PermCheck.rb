def solution(a)
   sum=0
   len=a.size
   b=Array.new(len,0)
   for i in 0...len
    sum+=a[i]
        if ((a[i]<=len) && (b[a[i]-1]!=a[i]))
            b[a[i]-1]=a[i]
        end
    end
    
    sum-=(len*(len+1))/2
    if sum!=0
        return 0
    end
    for i in 0...len
        if b[i]==0
            return 0
        end
    end
    
    return 1
end
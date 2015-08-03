def solution(a)
   a=a.sort
   for i in 0...a.size-2
        if (a[i+2]<a[i]+a[i+1])
            return 1
            break
        else
            i+=1
        end
    end
    
    return 0
end
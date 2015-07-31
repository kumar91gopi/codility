def solution(a)
    count = 1
    dom = 0
    ans= 0
    for i in 1...a.size
        if a[dom]==a[i]
            count+=1
        else
            count-=1
        end
        
        if count==0
            dom= i
            count=1
        end
        
    end
    
    
    candidate= a[dom]
    for i in 0...a.size
        if a[i]==candidate
            ans+=1
        end
    end
    
    if ans>(a.size/2)
        for i in 0...a.size
            if a[i]==candidate
                return i
            end
        end
    else
        return -1
    end
            
    
end
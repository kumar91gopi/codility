#Codility
def solution(a)
    len=a.size
    b=Array.new(len,0)
    for i in 0...len
        if ((a[i]>0 ) && (a[i]<=len))
            b[a[i]-1]=a[i]
        end
    end
    for i in 0...len
        if b[i]==0
            return i+1
            break
        end
    end
    
    
    return len+1
        
end

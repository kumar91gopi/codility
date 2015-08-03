# Better solution

def solution(n, a)
   b=Array.new(n,0)
   max=0
   temp=0
   for i in 0...a.size
        if a[i]<=n
           
            
            if b[a[i]-1]<=max
                b[a[i]-1]=max+1
            else
                b[a[i]-1]+=1
            end
             if b[a[i]-1]>=temp
                temp=b[a[i]-1]
            end
        else
            max=temp
        end

    end
    
    for i in 0...n
        if b[i]<max
            b[i]=max
        end
    end
    return b
end
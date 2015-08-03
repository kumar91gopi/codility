#Codility
#Not happy with the logic because new array is created again and again. Memory cost is very much.
#Check out MaxCounters1.rb for better solution

def solution(n, a)
    max=0
    b=Array.new(n,0)
    for i in 0...a.size
        if a[i]<=n
            b[a[i]-1]+=1
            if b[a[i]-1]>max
                max=b[a[i]-1]
            end
        end
        if ((a[i]>n) && (a[i-1]<=n))
            b=Array.new(n,max)
        end
    end
    
    return b
        
    
end

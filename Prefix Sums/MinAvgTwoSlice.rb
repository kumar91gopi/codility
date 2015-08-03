#Codility
def solution(a)
    min=a[0]+a[1] #any value you want for initialization
    ans=0
   
    
    for i in 0...a.size-1
        mean=(a[i]+a[i+1]).fdiv(2)
        if (i+2!=a.size)
            if(a[i+2]>mean)
                if min>mean
                    min=mean
                    ans=i
                end
            else
                if ((a[i]+a[i+1]+a[i+2]).fdiv(3))<min
                    min=(a[i]+a[i+1]+a[i+2]).fdiv(3)
                    ans=i
                end
            end
        else
            if min>mean
                    min=mean
                    ans=i
                end
        end
                
            
    end
            
     return ans   
        
    
end

#Codility
#There is one more solution in PassingCars1.rb
def solution(a)
    ones=0
    temp=0
    ans=0
    for i in 0...a.size
        if a[i]==1
            ones+=1
        end
    end
    
    for i in 0...a.size
        if a[i]==1
            temp+=1
        else
            ans+=(ones-temp)
        end
    end
    
    if ans>1000000000
        return -1
    else
        return ans
    end
        
            
end

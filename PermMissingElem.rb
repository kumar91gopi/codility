#Codility
def solution(a)
   sum=0
   for i in 0...a.size
      sum+=a[i]
    end
    
    x= (a.size)+1
    ans=((x*(x+1))/2)-sum
    return ans
end

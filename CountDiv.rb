#Codility
def solution(a, b, k)
    if a%k==0
        a=a
    else
        a+=k-a%k
    end
    b-=b%k
    ans=((b-a)/k)+1
    return ans
    
end

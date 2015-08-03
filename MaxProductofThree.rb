#Codility
def solution(a)
    a=a.sort
    len=a.size
    p1=(a[0]*a[1]*a[len-1])
    p2=(a[len-1]*a[len-2]*a[len-3])
    if p1>p2
        return p1
    else
        return p2
    end
    
end

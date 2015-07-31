# Better solution

def solution(a)
    zeros=0
    ans=0
    for i in 0...a.size
        if a[i]==0
            zeros+=1
        else
            ans+=zeros
        end
    end
    if ans>1000000000
        return -1
    else
        return ans
    end
end
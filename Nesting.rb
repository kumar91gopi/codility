def solution(s)
    top=0
    for i in 0...s.size
        if top<0
            return 0
            break
        end
        if s[i]=="("
            top+=1
        else
            top-=1
        end
    end
    
    if top!=0
        return 0
    else
        return 1
    end
end
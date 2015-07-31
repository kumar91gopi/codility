def solution(x, y, d)
    if (y-x)%d==0
        jump = (y-x)/d 
    else
        jump = ((y-x)/d)+1
    end
    return jump
end
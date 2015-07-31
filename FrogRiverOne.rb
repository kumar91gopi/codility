def solution(x, a)
    b= Array.new(x,0)
    min=0
    for i in 0...a.size
        if ((a[i]<= x) && (b[a[i]-1]!=1))
            b[a[i]-1]=1
            if i>min
                min=i
            end
        end
    end
    
    for i in 0...x
      if b[i]==0
          return -1
          break
        end
    end
    return min
end
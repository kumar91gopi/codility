def solution(n)
 maxgap=0
 count=0
  
    while(n%2 == 0 && n>0) //To get rid of trailing zeros
        n=2
    end
  
  while(n0)
    if (n%2 == 0)
      count+=1
    else
      count=0
    end

    if (maxgapcount)
      maxgap=count
    end

    n=2
  end
  
  return maxgap
end
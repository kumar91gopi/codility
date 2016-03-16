#Codility
def solution(n)
   num=0
   len=Math.sqrt(n).floor
   for i in 1..len
      if n%i==0
          if n/i!=i
              num+=2
            else
                num+=1
            end
        end
    end
    return num
end
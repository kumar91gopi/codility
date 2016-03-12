#Xor each element of array as a^a=0 
def solution(a)
  ans = 0
  for number in a
    ans^=number
  end
  return ans
end
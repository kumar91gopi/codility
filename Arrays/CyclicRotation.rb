#METHOD 1

#Reverse Algorithm for array rotation
# Time Complexity : O(n) and Space-complexity:O(1)

def solution(a, k)
  len=a.length
    if (len>0)       #checking if array is empty
        if(k>=len)   #if rotation is greater than length of array we do modulo 
         k%=len
        end
     reverseArray(a,0,len-1)
     reverseArray(a,0,k-1)
     reverseArray(a,k,len-1)
    end
 return a
end



# Function for reversing array
def reverseArray(a,first,last)
  temp=0
  while(first<last)
    temp=a[first]
    a[first]=a[last]
    a[last]=temp
    first+=1
    last-=1
  end
  return a
end



#Method 2

#Juggling algorithm
#Time Complexity : O(n)


def solution(a, k)
  temp=0
  len=a.length
  if(k>0 && len>0) #checking if array is empty and other border cases
    if k>len         #if rotation is greater than length of array we do modulo
      k%=len
    end
      #Algorithm Logic
      for i in 0...gcd(len,k)
        temp=a[len-i-1]
        j=len-i-1
        while(true)
          p=j-k
          if p<0
            p+=len
          end
          if p==len-i-1
            break
          end
          a[j]=a[p]
          j=p
        end
        a[j]=temp
      end
 end
  return a
end


#Function for finding GCD
def gcd(x,y)
  if y==0
    return x
  elsif (x>=y)
    return gcd(y,x%y)
  end
end
def solution(a, b)
 arr=[]
 arr[0]=0
 n=a.length
 top=0
    
 for i in 1...n
  if b[arr[top]]==0
    top+=1
    arr[top]=i
  else
    if b[i]==0
        top+=1
        arr[top]=i
        
        while ((b[arr[top]]==0 && b[arr[top-1]]==1) && top>0)
            
          if a[arr[top]]>a[arr[top-1]]
            arr[top-1]=arr[top]
            arr.delete_at(top)
            top-=1
          else
            arr.delete_at(top)
            top-=1
          end
            
        end
        
    else
        
      top+=1
      arr[top]=i
        
    end
  end
     
 end
    
 return top+1
    
end
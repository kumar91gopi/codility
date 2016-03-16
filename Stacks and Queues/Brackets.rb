#Codility
def solution(s)
    len = s.size
    top= 0
    a= Array.new(len)
    
    for i in 0...len
        if (top==0) 
            if ( (s[i]== ")" ) || (s[i]== "}" ) || (s[i]== "]" ) )
                return 0
                break
            else
                a[top]= s[i]
                top+=1
            end
            
        else
            
            if (a[top-1]== "(" ) && (s[i]== ")") || (a[top-1]== "{" ) && (s[i]== "}" ) || (a[top-1]== "[" ) && (s[i]== "]" )
                top-=1
             
            else 
                a[top]= s[i]
                top+=1
                
            end
        end
    end
    
    
    if top== 0
        return 1
    else
        return 0
    end
                
                
end

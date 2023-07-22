
function f_list=factorList(n)
   f_list=zeros(0,n);
    
    for i=1:n/2
        if rem(n,i)==0
            f_list=[f_list,i];
            
        end 
    end 
end
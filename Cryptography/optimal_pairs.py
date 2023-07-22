def factors(n):
    for i in range(1, n//2+1):
        if n%i==0:
            lst.append(i)
    print(len(lst))

def combinations(n):
    for i in range(len(lst)):
        ele=lst[i]
        for j in range(len(lst)):
            if ele*lst[j]==n:
                if (lst[j],ele) not in pairs:
                    pairs.append((ele,lst[j]))
    print(pairs)

def optimize(row,col):
    if col>=row:
        square_size=col
    else:
        square_size=row
    #print("square size", square_size)
    #print("row", row)
    #print("column", col)
    zero_pad=(square_size**2)-(row*col)
    #print("zero_pad", zero_pad)
    return zero_pad
    

lst=[]
n=1300000
pairs=[]
factors(n)
combinations(n)
min_zero=None
optimal_pair=pairs[0]
for i in range(len(pairs)):
    zeroes=optimize(pairs[i][0],pairs[i][1])
    if min_zero==None:
        min_zero=zeroes
    else:
        if zeroes<min_zero:
            min_zero=zeroes
            optimal_pair=pairs[i]


print("Min zeroes",min_zero)
print("Optimal pairing",optimal_pair)
        
    

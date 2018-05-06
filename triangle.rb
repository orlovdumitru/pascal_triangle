# pascal_triangle.rb
def print_a(arr)
  m=arr.count
  i=0
  while i<arr.count
    j=0
    print " "*m
    while j<arr.count
      print(arr[i][j]) if arr[i][j]>0
      print "  "
      j+=1
    end
    puts
    m-=1
    i+=1
  end
end

def pascal_triangle(n)
  return [1] if n==0
  arr = Array.new(n+1) { Array.new(n+1, 0) }
  arr[0][0] = 1
   
  i=1
  while i<=n
    j=0
    while j<=n
      arr[i][j] = arr[i-1][j-1] + arr[i-1][j]
      j+=1
    end
    i+=1
  end

  return arr
end

p "What dimension do you want Pascal triangle to have?"
n = gets.to_i

 print_a(pascal_triangle(n))

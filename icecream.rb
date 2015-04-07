# Enter your code here. Read input from STDIN. Print output to STDOUT
T = gets.to_i
array_m = Array.new
array_n = Array.new
array_f = Array.new

#loop T times
i = 0
while i < T do
  array_m << gets.to_i
  array_n << gets.to_i
  array_f << gets.to_s
  i +=1
end

i = 0
while i < T do
  prices = array_f[i].split(' ')
  j = 0
  while j < prices.length do
    k = j+1 
    while k < prices.length do
      if prices[j].to_i + prices[k].to_i == array_m[i]
        puts (j.to_i+1).to_s + ' ' + (k.to_i+1).to_s + "\n"
      end
      k +=1
    end
    j += 1
  end
  i += 1
end

# Task:  Return all distinct positive integer solutions to the equation
#        a**3 + b**3 = c**3 + d**3 where a, b, c and d are integers between 1 and k.
def pairs_of_cubes k
  sum_pairs = {}

  (1..k).each do |a|
    (a+1..k).each do |b|
      sum = a**3 + b**3
      sum_pairs[sum] ||= []
      sum_pairs[sum] << [a,b]
    end
  end

  solution = []
  
  sum_pairs.each do |_, pairs|
    last_index = pairs.length - 1
    (0..last_index).each do |i|
      (i+1..last_index).each do |j|
        solution << [pairs[i], pairs[j]]
      end
    end
  end

  return solution
end

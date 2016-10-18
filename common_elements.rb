# Find common elements in two arrays in O(n) time and O(1) space.

def common_elements a, b
  common = []
  j = 0

  (0...a.length).each do |i|
    until !b[j] || b[j] >= a[i]
      j += 1
    end
    common << a[i] if b[j] == a[i]
  end

  common
end

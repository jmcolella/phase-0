# I worked on this challenge with: Shaun Sweet.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
  elsif a + b > c && a + c > b && b + c > a
    return true
  elsif a == b && b == c
    return true
  end
end

#Ask Emmanual about the order of elsif statements; rspec failed when second statement was second and third as third, then we switch them and it worked, and then we switched back, it still failed, then randomly it passed.

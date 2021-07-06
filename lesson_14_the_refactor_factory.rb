=begin
Lesson 14: The Refactor Factory
(all lessons from Codecademy's Ruby curriculum)
=end

require 'prime'   # This is a module. We'll cover these soon!

# INITIAL CODE 
def first_n_primes_v0(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  return Prime.first n
end

first_n_primes_v0(10)

# Refactored - single line ifs, removed unnecessary return statement
def first_n_primes_v1(n)

    return "n must be an integer." unless n.is_a? Integer
    return "n must be greater than 0." if n <= 0
    
    Prime.first n
  end
  
  first_n_primes_v1(10)
=begin
Lesson 10: Ordering Your Library
(all lessons from Codecademy's Ruby curriculum)
=end

# DEFAULT PARAMETERS - used when no 2nd argument specified

numbers = [4, 1, 2, 3]
def alphabetize(arr, rev=false)
    arr.sort!
    if rev
        arr.reverse!
    else
        return arr
    end
end

puts alphabetize(numbers)
puts alphabetize(numbers, rev=true)
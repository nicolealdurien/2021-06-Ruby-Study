=begin
Lesson 15b: Blocks, Procs, and Lambdas, Part 1
(all lessons from Codecademy's Ruby curriculum)
=end

=begin
LAMBDAS - same as procs except for a bit of syntax and some behavioral quirks
lamba { puts "Hello!" }
is very nearly the same as
Proc.new { puts "Hello!"}
Lambda syntax is lambda { |param| block }
=end

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda { |string| string.to_sym}

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

=begin
DIFFERENCES BTW LAMBDAS AND PROCS
1) a lambda checks the number of arguments passed to it and will throw an error if you pass it the wrong number. a proc will ignore unexpected arguments and assign nil to any that are missing
2) when a lambda returns, it passes control back to the calling method. a proc does not go back to the calling method. This means a proc essentially functions as a 'break' in the calling method.
=end

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |item| item.is_a? Symbol}

symbols = my_array.select(&symbol_filter)

puts symbols

# BLOCK: bit of code beteween do..end or {}, can be passed to .each/.select

# PROC: saved block that can be used repeatedly

# LAMBDA: proc that cares about # of args it gets & returns to calling method

# .is_a method returns true/false depending on item type.

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |item| item.is_a? Integer }

puts ints

# - - - - - - -

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!

under_100 = Proc.new { |num| num < 100 }

youngsters = ages.select(&under_100)

puts youngsters

# - - - - - - -

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |key, value| value < "M" }

a_to_m = crew.select(&first_half)

puts a_to_m
ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation

# When you find the standard deviation, print it out

sum = ages.sum
count = ages.count
average = (sum.to_f/count)

subtract_each = []

ages.each do |age|
  subtract_each << (age - average)
end

square_each = []

subtract_each.each do |subtraction|
  square_each << (subtraction ** 2)
end

sum_of_squared = square_each.sum
squared_divided_by_count = sum_of_squared/count


puts Math.sqrt(squared_divided_by_count)

class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
   @ages.sort.last.to_i
  end

  def min_age
   @ages.sort.first.to_i
  end

  def average_age
   average = (@ages.sum.to_f.round(2)/@ages.count).round(2)
   average
  end

  def standard_deviation_age
    average = average_age

    subtracted_each = (
      @ages.map do |age|
        age - average
      end)

    squared_each = (
      subtracted_each.map do |subtraction|
        subtraction ** 2
      end)

    sum_of_squared = squared_each.sum
    squared_divided_by_count = sum_of_squared/@ages.count


    Math.sqrt(squared_divided_by_count).round(2)
  end

end # class

event = Event.new("Steeple Jump", [24, 30, 18, 20, 41])
puts event.name
puts event.ages
puts event.max_age
puts event.min_age
puts event.average_age
puts event.standard_deviation_age

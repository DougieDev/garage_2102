class Car
  attr_reader :make,
              :model,
              :color,
              :year,
              :age

  def initialize(attributes)
    info = attributes[:description].split(" ")
    @make = info[1]
    @model = info[2]
    @color = info[0]
    @year = attributes[:year]
    year_today = Time.new.year
    @age = year_today - @year.to_i
  end
end
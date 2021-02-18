class Transport
  attr_reader :speed, :direction
  attr_writer :speed, :direction

  def initialize(input_options)
    @speed = input_options[:speed]
    @direction = input_options[:direction]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def current_speed
    puts @speed
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Transport
  attr_reader :model, :color

  def initialize(input_options)
    @model = input_options[:model]
    @color = input_options[:color]
  end

  def model
    puts @type_model
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

  def car_info
    puts "the color is #{@color} and the model type is #{@model}"
  end
end

class Bike < Transport
  attr_reader :type

  def initialize(input_options)
    super
    @type = input_options[:type]
  end

  def type
    puts @type
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new ({ type: "mountain", speed: 10, direction: "north" })
car = Car.new ({ model: "standard", color: "blue", speed: 50, direction: "south" })

puts car.car_info
p car
p bike

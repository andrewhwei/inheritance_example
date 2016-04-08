module VehicleFunctions
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include VehicleFunctions

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include VehicleFunctions

  def ring_bell
    puts "Ring ring!"
  end
end

red_car = Car.new
blue_bike = Bike.new

red_car.accelerate
p red_car
red_car.honk_horn

blue_bike.accelerate
p blue_bike
blue_bike.ring_bell
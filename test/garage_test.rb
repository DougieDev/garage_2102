require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'
require './lib/garage'

class GarageTest < Minitest::Test
  def setup
    @garage = Garage.new('Totally Safe Parking')
    @owner_1 = Owner.new('Regina George', 'Heiress')
    @owner_2 = Owner.new('Glen Coco', 'Unknown')
    @car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    @car_2 = Car.new({description: 'Silver BMW 3-Series', year: '2001'})
    @car_3 = Car.new({description: 'Green Chevrolet Corvette', year: '1963'})
    @car_4 = Car.new({description: 'Blue Ford Escape', year: '2001'})
    @car_5 = Car.new({description: 'Silver Volvo XC90', year: '2020'})
  end

  def test_it_exists
    assert_instance_of Garage, @garage
  end

  def test_it_has_attributes
    assert_equal 'Totally Safe Parking', @garage.name
  end

  def test_it_starts_with_no_customers
    assert_equal [], @garage.customers
  end

  def test_it_can_add_customers
    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)

    assert_equal [@owner_1, @owner_2], @garage.customers
  end

    # ======UNFINISHED=====
  # def test_it_can_list_all_cars
  #   @garage.add_customer(@owner_1)
  #   @garage.add_customer(@owner_2)
  #   @owner_1.buy(@car_1)
  #   @owner_1.buy(@car_4)
  #   @owner_2.buy(@car_3)
  #   @owner_2.buy(@car_5)

  #   assert_equal [@car_1, @car_4, @car_3, @car_5], @garage.all_cars
  # end

end
# load BikeContainer
require_relative 'bike_container'

class DockingStation

  # this gives us all the methods that used to be in the class
  include BikeContainer

  def initialize(options = {})
    # @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    # @bikes = []
    self.capacity = options.fetch(:capacity, capacity)
  end

end

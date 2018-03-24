class Bike
attr_accessor :working

  def initialize
    @working = true
  end

  def working?
    @working
  end

  def break!
    @working = false
  end


end

# bike1 = Bike.new
# puts "New Instance = #{bike1}"
# bike1 = bike1.working?
# p bike1
# puts "Returning after calling working? = #{bike1}"
# bike1 = bike1.break!
# puts "Should be broken = #{bike1}"
# bike1 = bike1.working?
# puts "Returning after calling working? = #{bike1}"

=begin

- what the heck is '&' ???
	def self.total_amount(*books)
	    books.map(&:price).inject(0, &:+)
	end

- class methods

=end

class DiceSet
  attr_reader :values
  
  values = Array.new
  def roll(size)
    @values = [0] * size
    (0...size).each do |num|
      @values[num] = rand(1..6)
    end
    @values
  end

end

d = DiceSet.new
puts d.roll(5)
puts "SIZE OF VALUES IS: " << d.values.size.to_s

d.values.each do |val|
  puts ">>> #{val} <<<" if val >= 1 && val <= 6
end
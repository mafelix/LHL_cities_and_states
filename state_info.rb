require 'pry'

#binding.pry
@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}
@states[:AB] = "Alabama"
@states[:HI] = "Hawaii"
#puts states

@cities = {
  OR: ['Portland', 'Oregen City'],
  FL: ['Miami','Jacksonville'],
  CA: ['San Francisco','San Jose'],
  NY: ['New York City','Buffalo'],
  MI: ['Detroit','Grand Rapids'],
  AB: ['Auburn','Troy'],
  HI: ['Honolulu','Kailua']
}

#print cities

@taxes = {
  OR: 7.5,
  FL: 12,
  CA: 10,
  NY: 18,
  MI: 7,
  AB: 7,
  HI: 15,
}

#puts @taxes.values

def describe_states
  puts "Enter state code"
  input = gets.chomp.upcase!
  key = input.to_sym
  puts "Your city is #{@states[key]}, it has "+ @cities[key].count.to_s + " cities: #{@cities[key]} and tax rate is #{@taxes[key]}"
end

def calculate_tax(statecode, amount)
  key = statecode.upcase!.to_sym
  tax_rate = @taxes[key]
  total = (amount * (tax_rate/100))
  return total.round(2)
end

# puts calculate_tax('or', 120)

def find_state_for_city(city)
  state =  @cities.map { |k, v| return @states[k] if v.include?(city) }
end

p find_state_for_city('Portland')
p find_state_for_city('Honolulu')
# result = describe_states
# puts "#{result}"

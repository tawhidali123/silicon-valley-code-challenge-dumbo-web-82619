require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
startup1 = Startup.new("Firstname", "ali", "wtf")
startup2 = Startup.new("second", "bob", "wtf!!!!!")

billy = VentureCapitalist.new("aiebek", 1000000000000000000)
franky = VentureCapitalist.new("frank", 100000000000)

first_round = FundingRound.new(startup1, billy, "series B", 10000)
second_round = FundingRound.new(startup2, franky, "angel", 1000)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
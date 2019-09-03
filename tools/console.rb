require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


billy = VentureCapitalist.new("aiebek", 1000000000000000000)
franky = VentureCapitalist.new("frank", 100000000000)
broke = VentureCapitalist.new("timmy", 345)

startup1 = Startup.new("Firstname", "ali", "HBO")
startup2 = Startup.new("second", "bob", "wtf!!!!!")


first_round = FundingRound.new(startup1, billy, "series B", 10000)
second_round = FundingRound.new(startup2, franky, "angel", 1000)
third_round = FundingRound.new(startup1, broke, "angel", 3456)


# start1 = Startup.new("Jans", "twitter.cos")
# start2 = Startup.new("Harols", "google.cos")
# start3 = Startup.new("Nkoss", "facebook.cos")
# start4 = Startup.new("Laures", "flatiron.cos")
# cap1 = VentureCapitalist.new("Big Bucks", 2000000000)
# cap2 = VentureCapitalist.new("Lil Bucks", 900000000)
# cap3 = VentureCapitalist.new("Few Bucks", 1000000)
# cap4 = VentureCapitalist.new("Broke As", 100)
# start1.sign_contract(cap1, "anges", 2000)
# start1.sign_contract(cap2, "angs", 500)
# start1.sign_contract(cap3, "ans", 900)
# start2.sign_contract(cap4, "as", 1800)
# start2.sign_contract(cap1, "s", 3000)
# start2.sign_contract(cap2, "as", 10000)
# start3.sign_contract(cap3, "aes", 4000)
# start3.sign_contract(cap4, "ages", 6000)
# start1.sign_contract(cap2, "angs", 600)
# start1.sign_contract(cap2, "angs", 500)
# start1.sign_contract(cap2, "angs", 1000)
# start1.sign_contract(cap2, "angs", 500)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
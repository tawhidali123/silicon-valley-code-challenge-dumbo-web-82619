class FundingRound
    attr_reader :startup, :venture_capitalist, :type_of_fund, :investment
    @@all = []

    def initialize(startup, venture_capitalist, type_of_fund, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type_of_fund = type_of_fund
        @investment = investment
        @@all << self
    end

    def self.all
        @@all
    end

    
end

class Startup
    attr_reader :domain, :founder
    attr_accessor :name
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end


    def pivot(new_name, new_domain)
        @name = new_name
        @domain = new_domain
    end

    def self.find_by_founder(search_this_guy)
        @@all.find{
            |this_guy|
            this_guy.founder == search_this_guy
        }
    end

    def self.domains 
        @@all.map {
            |each_instance|
            each_instance.domain
        }
    end

    def sign_contract(venture_cap, type, investment)
        FundingRound.new(self, venture_cap, type, investment)
    end

    def num_funding_rounds
        var = FundingRound.all.select{
            |each_fund|
            each_fund.startup == self
        }
        return var.count
    end

    def total_funds
        # sum = 0
        # var = FundingRound.all.select{
        #     |each_fund|
        #     each_fund.startup == self
        # }

        # var.each{
        #     |fund|
        #     fund.investment += sum 
        # }
        # return sum
    end

end

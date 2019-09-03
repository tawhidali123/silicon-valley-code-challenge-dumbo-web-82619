class Startup
    attr_reader :domain, :founder
    attr_accessor :name
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        # @venture = venture
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

    def helper_fund
        FundingRound.all.select{
            |each_fund|
            each_fund.startup == self
        }
    end

    def num_funding_rounds
       helper = helper_fund
       helper.count
    end

    def total_funds
        fund = 0
        helper_fund.each{
            |amount|
            fund += amount.investment
        }
        fund
    end

    def investors
        helper_fund.map {
            |each_round|
            each_round.venture_capitalist.name
        }
    end

    def big_investors
        # VentureCapitalist.tres_commas_club.map{
        #     |capitalist|
        #     capitalist
        # }

        # helper_fund.map {
        #     |each|
        #     if VentureCapitalist.tres_commas_club == each.venture_capitalist
        #         each
        #     end
        # }

        # let = VentureCapitalist.tres_commas_club
        # helper_fund.select {
        #     |each|
        #     each.venture_capitalist == let
        # }
        self.investors.select{
            |each|
            VentureCapitalist.tres_commas_club
        }
        


    end

end

class VentureCapitalist
    attr_reader :name, :total_worth 
    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end


    def self.tres_commas_club
        @@all.select{
            |each_person|
            each_person.total_worth >= 1000000000 
        }
    end

    def offer_contract(startup,type_of_investment, amount_invested)
        FundingRound.new(startup, self, type_of_investment, amount_invested)
    end

    def helper_fund
        FundingRound.all.select{
            |fund|
            fund.venture_capitalist == self
        }
    end

    def funding_rounds
        self.helper_fund
    end

    def portfolio
        helper_fund.map{
            |fund|
            fund.startup.name
        }
    end

    def biggest_investment
        holder = helper_fund.find{
            |each|
            each.investment
        }
    end



end

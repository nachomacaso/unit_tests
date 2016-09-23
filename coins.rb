require 'rspec'

class Money 
  def coins(cents)
    # refracted code
    denominations = [25, 10, 5, 1]
    coins = []
    denominations.each do |denomination|
      while cents >= denomination
        coins << denomination
        cents -= denomination
      end
    end
    coins
  end
end

    # coins = []
    # while cents > 0
    #   if cents >= 25
    #     coin = 25
    #   elsif cents >= 10
    #     coin = 10 
    #   elsif cents >= 5
    #     coin = 5
    #   elsif cents < 5  
    #     coin = 1
    #   end
    #   coins << coin
    #   cents -= coin
    # end
    # coins

RSpec.describe Money do
  let(:money) { Money.new }
  
  describe '#coins' do
    it "should return [1] if given 1." do
      expect(money.coins(1)).to eq([1])
    end

    it "should return [1,1] if given 2." do
      expect(money.coins(2)).to eq([1, 1])
    end

    it "should return [1,1,1] if given 3." do
      expect(money.coins(3)).to eq([1, 1, 1])
    end

    it "should return [1,1,1,1] if given 4." do
      expect(money.coins(4)).to eq([1, 1, 1, 1])
    end

    it "should return [5] if given 5." do
      expect(money.coins(5)).to eq([5])
    end

    it "should return [5, 1] if given 6." do
      expect(money.coins(6)).to eq([5, 1])
    end

    it "should return [5, 1, 1] if given 7." do
      expect(money.coins(7)).to eq([5, 1, 1])
    end

    it "should return [10] if given 10." do
      expect(money.coins(10)).to eq([10])
    end

    it "should return [10, 1] if given 11." do
      expect(money.coins(11)).to eq([10, 1])
    end

    it "should return [10, 5] if given 15." do
      expect(money.coins(15)).to eq([10, 5])
    end

    it "should return [10, 5, 1] if given 16." do
      expect(money.coins(16)).to eq([10, 5, 1])
    end

    it "should return [10, 10] if given 20." do
      expect(money.coins(20)).to eq([10, 10])
    end

    it "should return [10, 10, 1] if given 21." do
      expect(money.coins(21)).to eq([10, 10, 1])
    end

    it "should return [25] if given 25." do
      expect(money.coins(25)).to eq([25])
    end

    it "should return [25, 1] if given 26." do
      expect(money.coins(26)).to eq([25, 1])
    end

    it "should return [25, 5] if given 30." do
      expect(money.coins(30)).to eq([25, 5])
    end

    it "should return [25, 5, 1] if given 31." do
      expect(money.coins(31)).to eq([25, 5, 1])
    end

    it "should return [25, 10] if given 35." do
      expect(money.coins(35)).to eq([25, 10])
    end

    it "should return [25, 10, 1] if given 36." do
      expect(money.coins(36)).to eq([25, 10, 1])
    end

    it "should return [25, 10, 5] if given 40." do
      expect(money.coins(40)).to eq([25, 10, 5])
    end

    it "should return [25, 10, 5, 1] if given 41." do
      expect(money.coins(41)).to eq([25, 10, 5, 1])
    end

    it "should return [25, 25] if given 50." do
      expect(money.coins(50)).to eq([25, 25])
    end

    it "should return [25, 25, 10, 5, 1] if given 66." do
      expect(money.coins(66)).to eq([25, 25, 10, 5, 1])
    end

    it "should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119." do
      expect(money.coins(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
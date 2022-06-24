require_relative '../sum_digit'

describe SumDigit do
    let (:sum) { SumDigit.new }
    it "must return 7" do
        
        expect(sum.split_and_sum("16")).to eq('7')
    
    end

    it "must return 6" do
        
        expect(sum.split_and_sum("942")).to eq('6')
    
    end

    it "must return 6" do
        
        expect(sum.split_and_sum("132189")).to eq('6')
    
    end

    it "must return 2" do
        
        expect(sum.split_and_sum("493193")).to eq('2')
    
    end

    it "must return invalid number" do 

        expect(sum.split_and_sum("-122")).to eq('Invalid number')

    end
end
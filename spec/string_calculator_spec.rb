require "string_calculator"

describe StringCalculator do
  describe "#add" do
    context "If pass an empty string then" do
      it "It should be returned zero" do
        expect(StringCalculator.new.add("")).to eq(0)
      end
    end

    context "Pass numbers to method" do
      it "Given 1 then it should be returned 1" do 
        expect(StringCalculator.new.add("1")).to eq(1)
      end

      it "Given 1 and 5 then it should be sum and returned 6" do 
        expect(StringCalculator.new.add("1, 5")).to eq(6)
      end
    end
  end
end

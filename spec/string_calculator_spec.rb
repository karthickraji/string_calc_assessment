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

      it "Handle any amount of numbers - Given 243 and 357 then it should be sum and returned 600" do 
        expect(StringCalculator.new.add("243, 357")).to eq(600)
      end
    end

    context "If pass new lines between numbers then" do
      it "Numbers only can be taken and added them" do
        expect(StringCalculator.new.add("1\n2,3")).to eq(6)
      end
    end

    context "If pass delimiters between numbers then" do
      it "Numbers only can be taken and added them" do
        expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
      end
    end
  end
end

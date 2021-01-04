class Question

  attr_accessor :result, :num1, :num2

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @result = self.num1 + self.num2
  end

  def question()
    puts "What does #{self.num1} + #{self.num2} equal?"
  end

  def answer(num)
    if self.result == num
      return true
    else 
      return false
    end
  end

end

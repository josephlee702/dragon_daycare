class RiskAnalysis
  attr_accessor :answers

  def initialize(answers)
    #answers will be in the form of an array
    @answers = answers
  end

  def determine_severity
    if @answers[1] == "yes" && @answers[3] == "yes"
      "immediate risk"
    elsif @answers[0] == "yes"
      "high risk"
    else
      "low risk"
    end
  end
end
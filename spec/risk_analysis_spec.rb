require 'rails_helper'

RSpec.describe RiskAnalysis do
  describe "#initialize" do
    it 'exists' do
      brunos_answers = ["yes", "yes", "yes", "yes", "Test"]
      bruno = RiskAnalysis.new(brunos_answers)
      
      expect(bruno.answers.count).to eq(5)
      expect(bruno.answers[0]).to eq("yes")
      expect(bruno.answers[1]).to eq("yes")
      expect(bruno.answers[2]).to eq("yes")
      expect(bruno.answers[3]).to eq("yes")
      expect(bruno.answers[4]).to eq("Test")
    end
  end

  describe "#determine_severity" do
    it 'returns immediate risk' do
      brunos_answers = ["no", "yes", "no", "yes", "test"]
      bruno = RiskAnalysis.new(brunos_answers)

      severity = bruno.determine_severity
      expect(severity).to eq("immediate risk")
    end

    it 'returns immediate risk edge case' do
      brunos_answers = ["yes", "yes", "no", "yes", "test"]
      bruno = RiskAnalysis.new(brunos_answers)

      severity = bruno.determine_severity
      expect(severity).to eq("immediate risk")
    end

    it 'returns high risk' do
      brunos_answers = ["yes", "no", "no", "no", "test"]
      bruno = RiskAnalysis.new(brunos_answers)

      severity = bruno.determine_severity
      expect(severity).to eq("high risk")
    end

    it 'returns low risk' do
      brunos_answers = ["no", "no", "no", "no", "test"]
      bruno = RiskAnalysis.new(brunos_answers)

      severity = bruno.determine_severity
      expect(severity).to eq("low risk")
    end
  end

  describe "#change answers" do
    it "changes the answer to question 1" do
      brunos_answers = ["yes", "no", "no", "no", "test"]
      bruno = RiskAnalysis.new(brunos_answers)

      bruno.answers[0] = "no"
      expect(bruno.answers[0]).to eq("no")
    end
  end
end

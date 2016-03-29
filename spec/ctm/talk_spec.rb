require_relative '../../lib/ctm/talk'

RSpec.describe Talk do

  context "when a valid talk is given" do

    it "returns a talk object with description and length" do
      talk = Talk.new("Writing Fast Tests Against Enterprise Rails 60min")
      expect(talk.description).to eq "Writing Fast Tests Against Enterprise Rails"
    end

    it "returns a talk object with description and length" do
      talk = Talk.new("Overdoing it in Python 45min")
      expect(talk.length).to eq 45
    end

  end

  context "when a valid lightning talk is given" do

    it "returns a talk object with description and length" do
      talk = Talk.new("Rails for Python Developers lightning")
      expect(talk.description).to eq "Rails for Python Developers"
    end

    it "returns a talk object with description and length" do
      talk = Talk.new("Rails for Python Developers lightning")
      expect(talk.length).to eq 5
    end

  end

end

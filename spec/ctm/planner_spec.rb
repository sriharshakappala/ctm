require_relative '../../lib/ctm/session'
require_relative '../../lib/ctm/talk'
require_relative '../../lib/ctm/planner'

RSpec.describe Planner do

  context "when valid sessions and talks are given" do

    it "will create a conference plan of one track with two sessions when there are available talks" do
      talk1 = Talk.new 'Example1 20min'
      talk2 = Talk.new 'Example2 30min'
      talk3 = Talk.new 'Example3 15min'
      talks = [talk1, talk2, talk3]
      session1 = Session.new 50, :morning
      session2 = Session.new 40, :morning
      tracks = [session1, session2]
      Planner.new(talks, tracks).plan_conference
      expect(session1.talks).to include talk1
      expect(session1.talks).to include talk2
      expect(session2.talks).to include talk3
    end

  end

end

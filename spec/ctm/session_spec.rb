require_relative '../../lib/ctm/session'
require_relative '../../lib/ctm/talk'

RSpec.describe Session do

  it "will add a talk to a session" do
    session = Session.new 50, :morning
    talk = Talk.new 'Example Talk 25min'
    session.add talk
    expect(session.talks).to include talk
  end

  it "will not add a talk if there is no enough time in session" do
    session = Session.new 50, :morning
    talk = Talk.new 'Example Talk 60min'
    expect { session.add talk }.to raise_error 'TalkTooLongException'
  end

end

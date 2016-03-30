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

  it "must return true when checking whether a talk can be added into session when there is enough time" do
    session = Session.new 50, :morning
    talk = Talk.new 'Example Talk 10min'
    expect(session.add? talk).to eq true
  end

  it "must return false when checking whether a talk can be added into session when there is no enough time" do
    session = Session.new 50, :morning
    talk = Talk.new 'Example Talk 60min'
    expect(session.add? talk).to eq false
  end

  it "will not add a second talk if the available time is zero or less than the second talk length" do
    session = Session.new 50, :morning
    talk1 = Talk.new 'Example Talk 30min'
    talk2 = Talk.new 'Example Talk 2 30min'
    session.add talk1
    expect(session.talks).to include talk1
    expect { session.add talk2 }.to raise_error 'TalkTooLongException'
  end

  it "must have accurate availabe time after adding talks to session" do
    session = Session.new 50, :morning
    talk1 = Talk.new 'Example Talk 10min'
    talk2 = Talk.new 'Example Talk 2 20min'
    session.add talk1
    session.add talk2
    expect(session.talks).to include talk1
    expect(session.talks).to include talk2
    expect(session.length).to eq 20
  end

end

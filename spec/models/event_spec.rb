require "rails_helper"

describe Event do

  describe "self.all" do

    it "returns events ordered by start date" do
      event1 = Event.create!(name: 'Test Event',
                             starts_at: Time.now,
                             ends_at: Time.now + 1.hour, 
                             challonge_id: nil)

      event2 = Event.create!(name: 'Test Event',
                             starts_at: Time.now - 30.minutes,
                             ends_at: Time.now + 1.hour, 
                             challonge_id: nil)

      expect(Event.all.map(&:id)).to eql [event2.id, event1.id]
    end

  end

end

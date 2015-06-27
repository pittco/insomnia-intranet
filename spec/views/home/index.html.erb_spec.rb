require "rails_helper"

describe "home/index.html.erb" do
 
 describe "events" do 
    
    let(:event) do
      Event.create!(name: 'Test Event',
                    starts_at: Time.now,
                    ends_at: Time.now + 1.hour, 
                    challonge_id: nil)
    end

    before do
      assign :posts, []
      assign :events, [event]
    end

    it "displays event attributes" do
      render

      expect(rendered).to match /#{event.name}/
      expect(rendered).to match /#{event.starts_at.strftime("%A @ %l:%M %p")}/
    end

  end

end

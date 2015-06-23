require "rails_helper"

describe User do

  describe "self.from_oauth" do

    context 'user does not have pittco.org email address' do

      it 'returns nil' do
        access_token = double 'oauth', info: {
          'email' => 'colin@gmail.com'
        }
        user = described_class.from_omniauth(access_token)
        expect(user).to be_nil 
      end

    end

    context 'user has pittco.org email address' do    

      it 'creates new user' do
        access_token = double 'oauth', info: {
          'email' => 'colin@pittco.org'
        }
        user = described_class.from_omniauth(access_token)
        expect(user.email).to eql 'colin@pittco.org' 
      end

      it 'retrieves user by email address' do
        expected_user = User.create username: 'Jon Daniel', 
                                    email: 'jon@pittco.org'
        access_token = double 'oauth', info: {
          'email' => 'jon@pittco.org'
        }
        user = described_class.from_omniauth(access_token)
        expect(user).to eql expected_user 
      end

    end

  end

end

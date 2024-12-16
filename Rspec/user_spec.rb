require_relative 'user'


RSpec.describe User do

  before(:each) do

    User.class_variable_set(:@@users, [])

  end


  describe 'validations' do

    let(:valid_email) { "test@example.com" }

    

    it 'validates presence of email' do

      user = User.new(nil)

      expect(user.save).to be false 

      expect(user.errors[:email]).to include("can't be blank")

    end

    it 'validates uniqueness of email' do

      User.new(valid_email).save 

      duplicate_user = User.new(valid_email)

      expect(duplicate_user.save).to be false 

      expect(duplicate_user.errors[:email]).to include("has already been taken")

    end


    it 'is valid with a unique email' do

      user = User.new("unique@example.com")

      expect(user.save).to be true 

    end

  end 

end 
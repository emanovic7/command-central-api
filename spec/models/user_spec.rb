require 'rails_helper'

RSpec.describe User, type: :model do
  # it 'is valid with a name, username, and password' do 
  #   user = User.new(
  #     name: 'Prince',
  #     username: 'PurplePrince',
  #     password: 'purpleRain'
  #   )
  #   expect(user).to be_valid

  let(:user) { create :user }

    it 'is invalid without a name' do 
      binding.pry
      # user = User.new(name: nil)
      # user.valid?
      # expect(user.errors[:name]).to include("can't be blank")
    end

    describe 'validations' do 
      it { should validate_presence_of(:name) }
    end

  end


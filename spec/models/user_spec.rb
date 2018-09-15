require 'rails_helper'

describe User, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :provider }
    it { should validate_presence_of :uid }
    it { should validate_presence_of :email }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :photo }
    it { should validate_presence_of :token }
    it {should have_many :trips}
  end
end

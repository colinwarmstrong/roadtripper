require 'rails_helper'

describe Trip, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should belong_to :user}
  end
end

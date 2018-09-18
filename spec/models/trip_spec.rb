require 'rails_helper'

describe Trip, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :distance }
    it { should validate_presence_of :start_location }
    it { should validate_presence_of :end_location }
    it { should belong_to :user}
  end
end

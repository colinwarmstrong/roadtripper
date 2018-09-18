require 'rails_helper'

describe 'A user' do
  context 'visiting /' do
    it 'can log in and logout' do
      stub_omniauth

      visit root_path

      click_on 'Sign In With Google'

      expect(current_path).to eq(dashboard_path)

      click_on 'Logout'

      expect(current_path).to eq(root_path)
    end
  end
end

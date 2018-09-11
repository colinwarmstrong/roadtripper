class User < ApplicationRecord
  has_many :trips
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.email = auth['info']['email']
      user.first_name = auth['info']['first_name']
      user.last_name = auth['info']['last_name']
      user.photo = auth['info']['image']
      user.token = auth['credentials']['token']
    end
  end
end

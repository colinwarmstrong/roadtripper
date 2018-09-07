class User < ApplicationRecord
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.email = auth['info']['email']
      user.first_name = auth['info']['first_name']
      user.last_name = auth['info']['last_name']
      user.photo = auth['provider']
      user.token = auth['credentials']['token']
    end
  end
end

class User < ApplicationRecord
  validates_presence_of :provider, :uid, :email, :first_name, :last_name, :photo, :token

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

  def trip_count
    trips.count
  end

  def total_trip_distance
    trips.sum(:distance)
  end

  def ordered_trips
    trips.order(created_at: :desc)
  end
end

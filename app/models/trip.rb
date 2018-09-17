class Trip < ApplicationRecord
  validates_presence_of :title, :distance, :start_location, :end_location

  belongs_to :user
end

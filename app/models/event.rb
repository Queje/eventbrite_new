class Event < ApplicationRecord
has_many :participations
has_many :participants, through: :attendances, source: :event
belongs_to :admin, class_name: "User"


validates :start_date, presence: true
validates :duration, presence: true
validates :title, presence: true
validates :description, presence: true
validates :price, presence: true
validates :location, presence: true
end

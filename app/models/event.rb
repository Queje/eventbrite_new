class Event < ApplicationRecord
has_many :participations
has_many :users, through: :participations
belongs_to :user
validates :start_date, presence: true
validates :duration, presence: true
validates :title, presence: true
validates :description, presence: true
validates :price, presence: true
validates :location, presence: true
end

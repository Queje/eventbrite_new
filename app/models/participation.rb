class Participation < ApplicationRecord
  after_create :accepted

  def accepted
    ParticipationMailer.accept(self).deliver_now
  end


  belongs_to :user, optional: true
belongs_to :event, optional: true
end

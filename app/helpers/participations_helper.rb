module ParticipationsHelper
    def participant_email
        User.find(@participation.id).email
    end
end

class ParticipationMailer < ApplicationMailer
  default from: 'joesender@yopmail.com'
 
  def accept(participation)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = User.find(participation.user_id)

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'Event new' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: ' Tu participes à un evenement!') 
  end
end

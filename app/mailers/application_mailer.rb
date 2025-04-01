class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  def send_reminder(booking)
    @booking = booking
    details = {to: 'fakeuser@roadstr.fr',
               object: 'Reminder for your booking'}
    mail(details)
  end

  def send_confirmation(booking)
    @booking = booking
    details = {to: 'fakeuser@roadstr.fr',
               object: 'Confirmation de votre réservation'}
    mail(details)
  end
  
end

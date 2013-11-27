class TicketMailer < ActionMailer::Base
  default from: "from@example.com"

  def weekly
    @greeting = "Hi"

    mail to: email, subject: "RailsCasts Weekly"
  end
end

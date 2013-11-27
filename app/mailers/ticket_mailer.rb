class TicketMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_ticket
    @greeting = "Hi"

    mail to: email, subject: "New Ticket"
  end
end

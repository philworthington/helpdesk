class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      TicketMailer.new_ticket(@ticket).deliver
      redirect_to @ticket
    else
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def ticket_params
      params.require(:ticket).permit(:name, :email, :issue)
    end
end

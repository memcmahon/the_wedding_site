class AttendeesController < ApplicationController
  def new
  end

  def create
    attendee = Attendee.new(names: params['names'],
                    welcome: attending?(params['welcome']),
                    wedding: attending?(params['wedding']))
    if attendee.save
      redirect_to '/thewedding', notice: 'Thank you for letting us know!'
    else
      redirect_to '/rsvp', notice: 'Oops, please try again!'
    end
  end

  private

  def attending?(indicator)
    indicator == 'yes'
  end
end

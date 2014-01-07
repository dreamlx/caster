module Api
  class RoomsController < Api::BaseController
    def index
      @rooms = Room.all
    end
    def show
      @room = Room.find(params[:id])
    end
  end
end
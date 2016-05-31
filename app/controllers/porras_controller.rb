class PorrasController < ApplicationController
	before_action :authenticate_user!

  def index
		@matches = Match.today
  end

  def new
		@porra = Porra.new
		@matches = Match.all
  end

  def show
  end

  def create
		@porra = current_user.porras.new
		@porra.save
		@matches = Match.all
    1.upto(@matches.length) do |r|
      @apuesta = @porra.apuestas.new
      @apuesta.match_id = r
      @apuesta.apuesta = params[:partido][r.to_s]
      @apuesta.save
    end
		flash[:notice] = 'Apuesta realizada'
    redirect_to porras_path
  end

  def get_clasification
  end
end

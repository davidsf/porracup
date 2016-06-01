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
		@porra = Porra.find(params[:id])
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
    redirect_to porra_path(@porra)
  end

  def get_clasification
  end

	def destroy
		porra = current_user.porras.find(params[:id])
		porra.destroy
		flash[:notice] = 'Porra borrada'
		redirect_to porras_path
	end
end

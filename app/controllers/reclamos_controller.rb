class ReclamosController < ApplicationController

	def create
		@empresa = Empresa.find(params[:empresa_id])
		@reclamo = Reclamo.new(content:params[:reclamo][:content], user: current_user)
		@empresa.reclamos << @reclamo
		@reclamo.save

	end


end

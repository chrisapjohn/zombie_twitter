class BrainsController < ApplicationController

	 def new
    @brain = Brain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tweet }
    end
  end

	def create
	end
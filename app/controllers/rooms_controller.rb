class RoomsController < ApplicationController
	before_action :set_rooms, only: [:show, :edit, :update]

	def new 
		@room = Room.new
	end 

	def create 
		@room = Room.new(room_params)

		if @room.save
		  redirect_to rooms_path(@room)
		else 
		  render :new
		end 	
	end 

	def index 
		@rooms = Room.all 
	end 

	def edit
	end 

	def show
	end 

	def update
		if @room.update_attributes(room_params)
			redirect_to rooms_path(@room)
		else 
			render :edit
		end 
	end 



	private 

	def room_params 
		params.require(:room).permit(:room_name, :description)
	end 

	def set_rooms
		@room = Room.find(params[:id])
	end 

end

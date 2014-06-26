class BallerController < ApplicationController
   def index
    @ballers = Baller.all
   end 

   def create
    Baller.create!(baller_params)
    redirect_to baller_index_path
   end

   private

   def baller_params
     params.require(:baller).permit(:name, :jersey, :sponsor)
   end
end

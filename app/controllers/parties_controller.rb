class PartiesController < ApplicationController

    def index
        parties = Party.all
        render json: parties, include: :comments
    end 

    def show
        party = Party.find(params[:id])
        render json: party, include: :comments
    end

    def create
        party = Party.new(party_params)
        party.save ? (render json: party) : (render json: {message: "Invalid Input"})
    end

    def update
        party = Party.find(params[:id])
        party.update(party_params)
        render json: party
    end

    def destroy
        party = Party.find(params[:id])
        party.destroy
        render json: {message: "Party DESTROYED!"}
    end


    private

    def party_params
        params.require(:party).permit(:title, :description, :venue, :date, :image_url, :likes)
    end
end

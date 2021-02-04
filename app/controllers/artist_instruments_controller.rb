class ArtistInstrumentInstrumentsController < ApplicationController

    def index  
        @artistInstruments = ArtistInstrument.all 
    end
    
    def show
        @artistInstrument = ArtistInstrument.find(params[:id])
    end 

    def new
        @artistInstrument = ArtistInstrument.new 
    end 

    def create
        @artistInstrument = ArtistInstrument.create(artistInstrument_params)
        redirect_to artistInstrument_path(@artistInstrument)
    end 

    def edit
        @artistInstrument = ArtistInstrument.find(params[:id])
    end 

    def update 
        @artistInstrument = ArtistInstrument.find(params[:id])
        @artistInstrument.update(artistInstrument_params)
        redirect_to artistInstrument_path(@artistInstrument)
    end 

    def destroy
        @artistInstrument = ArtistInstrument.find(params[:id])
        @artistInstrument.destroy
        redirect_to artist_path(@artistInstrument.artist_id)
    end 

    private

    def artistInstrument_params
        params.require(:artistInstrument).permit(:name, :age, :title)
    end  

end

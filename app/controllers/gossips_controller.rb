class GossipsController < ApplicationController
    def index
        @gossips = Gossip.all
    end

    def new
        @gossip = Gossip.new
    end
    
    def show
        @gossip = Gossip.find(params[:id])
    end
    
    def edit
        @gossip = Gossip.find(params[:id])
    end

    def create
        @gossip = Gossip.new(gossip_params)
        @gossip.save 
        render 'show'
    end
    
    def update
        @gossip = Gossip.find(params[:id])
        @gossip.update(gossip_params)
        @gossip.save
        render 'show'
    end
    
    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to index_path
    end
    
    private
    def gossip_params
        params.require(:gossip).permit(:anonymous_author, :content)
    end
end

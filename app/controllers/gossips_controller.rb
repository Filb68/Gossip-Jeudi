class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
    end

  def new
    @gossip = Gossip.new
    
  end

  def create
    
    @gossip = Gossip.new('text'=> params[:text], 'content' => params[:content])
   
    if  gossip.save
      
      redirect_to gossips_path
      else
      render :new, status: unprocessable_entity
      end   

  end

end

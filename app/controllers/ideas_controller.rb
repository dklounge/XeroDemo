class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
  #  @idea = Idea.new(idea_params)
    @idea = Idea.new(params[:idea])
    if @idea.save
      redirect_to @idea
    else
      render action :new
    end
  end
        
  #   respond_to do |f|
  #     if @idea.save
  #       format.html { redirect_to @idea, notice: "Thanks for your great idea!" }
  #       format.json { render json: @idea, status: :created, location: @idea }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @idea.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  #   private
  #     # In rails 4, used to whitelist the permissible parameters.
  #     # Example: params.require(:person).permit(:name, :age)
  #     def idea_params
  #       params.require(:idea).permit(:title, :body)
  #     end
  
    
end

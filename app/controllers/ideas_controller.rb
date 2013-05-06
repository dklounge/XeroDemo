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
  
  @idea = Idea.new(params[:idea])
    if @idea.save
      redirect_to @idea
    else
      flash[:error] = @idea.errors.full_messages.to_sentence
      render action: :new
    end
  end
  

  #  not sure how to implement Rails 4 yet
  #
  #  @idea = Idea.new(idea_params)
  #      
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

  def update
    @idea = Idea.find(params[:id])
    @idea.update_attributes(params[:id])

    flash.notice = "#{@idea.title} was successfully updated!"

    redirect_to idea_path(@idea)
  end  
    
end

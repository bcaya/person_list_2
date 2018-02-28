class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new 
  end

  def create 
    @person = Person.new(page_params)

    if @person.save
      redirect_to pages_path 
    else
      render :new
    end 
  end 

  private 
    def pages_params
      params.require(:person).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
    end 
    
end

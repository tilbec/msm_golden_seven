class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render("index.html.erb")
  end

  def show
    id = params[:id]
    @director = Director.find(id)
    render("show.html.erb")
  end

  def destroy
    id = params[:id]
    director = Director.find(id)
    director.destroy

    redirect_to("/directors")
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    director = Director.new
    director.name = params[:the_name]
    director.bio = params[:the_bio]
    director.dob = params[:the_dob]
    director.image_url = params[:the_url]
    director.save

    redirect_to("/directors")
  end

  def edit_form
    id = params[:id]
    @director = Director.find(id)

    render("edit_form.html.erb")
  end

  def update_row
    @id = params[:id]
    director = Director.find(@id)
    director.name = params[:new_name]
    director.bio = params[:new_bio]
    director.dob = params[:new_dob]
    director.image_url = params[:new_url]
    director.save

    redirect_to action: "show", id: @id

  end

end

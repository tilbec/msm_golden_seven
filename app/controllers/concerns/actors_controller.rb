class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render("index.html.erb")
  end

  def show
    id = params[:id]
    @actor = Actor.find(id)
    render("show.html.erb")
  end

  def destroy
    id = params[:id]
    actor = Actor.find(id)
    actor.destroy

    redirect_to("/actors")
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    actor = Actor.new
    actor.name = params[:the_name]
    actor.dob = params[:the_dob]
    actor.bio = params[:the_bio]
    actor.image_url = params[:the_url]
    actor.save

    redirect_to("/actors")
  end

  def edit_form
    id = params[:id]
    @actor = Actor.find(id)
    render("edit_form.html.erb")
  end

  def update_row
    @id = params[:id]
    actor = Actor.find(@id)
    actor.name = params[:new_name]
    actor.bio = params[:new_bio]
    actor.dob = params[:new_dob]
    actor.image_url = params[:new_url]
    actor.save

    redirect_to action: "show", id: @id

  end


end

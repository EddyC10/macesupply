class MaceController < ApplicationController 
  def index
    @items = Item.all
  end

  def new
  
  end

  def show
    #@item = params.fetch(:id)

    item = Item.new

    item.name = params.fetch("name")
    item.description = params.fetch("description")
    item.quantity = params.fetch("quantity")
    item.item_number = params.fetch("item_number")
    item.image = params.fetch("image")

    item.save

    redirect_to "/"
  end

  def edit
    @item = Item.find(params.fetch(:id))
  end

  def update
    #@item = Item.find(params.fetch(:id))
    item_path = params.fetch(:id)
    item = Item.where(id: item_path).first

    item.name = params.fetch("name")
    item.description = params.fetch("description")
    item.quantity = params.fetch("quantity")
    item.item_number = params.fetch("item_number")
    item.image = params.fetch("image")

    item.save

    redirect_to "/"

  end

  def contact
    render "contact.html.erb"
  end

  def locations
    render "locations.html.erb"
  end

  def destroy
    the_id = params.fetch(:id)

    item = Item.where( id: the_id ).first

    item.delete

    redirect_to "/", notice: "Item successfully deleted"

  end 
end 

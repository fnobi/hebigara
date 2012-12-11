class SnakesController < ApplicationController
  # GET /snakes
  # GET /snakes.json
  def index
    @snakes = Snake.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @snakes }
    end
  end

  # GET /snakes/1
  # GET /snakes/1.json
  def show
    @snake = Snake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @snake }
    end
  end

  # GET /snakes/new
  # GET /snakes/new.json
  def new
    @snake = Snake.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @snake }
    end
  end

  # GET /snakes/1/edit
  def edit
    @snake = Snake.find(params[:id])
  end

  # POST /snakes
  # POST /snakes.json
  def create
    @snake = Snake.new(params[:snake])

    respond_to do |format|
      if @snake.save
        format.html { redirect_to @snake, :notice => 'Snake was successfully created.' }
        format.json { render :json => @snake, :status => :created, :location => @snake }
      else
        format.html { render :action => "new" }
        format.json { render :json => @snake.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /snakes/1
  # PUT /snakes/1.json
  def update
    @snake = Snake.find(params[:id])

    respond_to do |format|
      if @snake.update_attributes(params[:snake])
        format.html { redirect_to @snake, :notice => 'Snake was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @snake.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /snakes/1
  # DELETE /snakes/1.json
  def destroy
    @snake = Snake.find(params[:id])
    @snake.destroy

    respond_to do |format|
      format.html { redirect_to snakes_url }
      format.json { head :no_content }
    end
  end
end

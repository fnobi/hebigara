class BgimagesController < ApplicationController
  # GET /bgimages
  # GET /bgimages.json
  def index
    @bgimages = Bgimage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bgimages }
    end
  end

  # GET /bgimages/1
  # GET /bgimages/1.json
  def show
    @bgimage = Bgimage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bgimage }
    end
  end

  # GET /bgimages/new
  # GET /bgimages/new.json
  def new
    @bgimage = Bgimage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bgimage }
    end
  end

  # GET /bgimages/1/edit
  def edit
    @bgimage = Bgimage.find(params[:id])
  end

  # POST /bgimages
  # POST /bgimages.json
  def create
    @bgimage = Bgimage.new(params[:bgimage])

    respond_to do |format|
      if @bgimage.save
        format.html { redirect_to @bgimage, :notice => 'Bgimage was successfully created.' }
        format.json { render :json => @bgimage, :status => :created, :location => @bgimage }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bgimage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bgimages/1
  # PUT /bgimages/1.json
  def update
    @bgimage = Bgimage.find(params[:id])

    respond_to do |format|
      if @bgimage.update_attributes(params[:bgimage])
        format.html { redirect_to @bgimage, :notice => 'Bgimage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bgimage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bgimages/1
  # DELETE /bgimages/1.json
  def destroy
    @bgimage = Bgimage.find(params[:id])
    @bgimage.destroy

    respond_to do |format|
      format.html { redirect_to bgimages_url }
      format.json { head :no_content }
    end
  end
end

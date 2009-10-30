class DescriptionsController < ApplicationController
  # GET /descriptions
  # GET /descriptions.xml
  def index
    @descriptions = Description.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @descriptions }
    end
  end

  # GET /descriptions/1
  # GET /descriptions/1.xml
  def show
    @description = Description.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @description }
    end
  end

  # GET /descriptions/new
  # GET /descriptions/new.xml
  def new
    @description = Description.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @description }
    end
  end

  # GET /descriptions/1/edit
  def edit
    @description = Description.find(params[:id])
  end

  # POST /descriptions
  # POST /descriptions.xml
  def create
    @description = Description.new(params[:description])

    respond_to do |format|
      if @description.save
        flash[:notice] = 'Description was successfully created.'
        format.html { redirect_to(@description) }
        format.xml  { render :xml => @description, :status => :created, :location => @description }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @description.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /descriptions/1
  # PUT /descriptions/1.xml
  def update
    @description = Description.find(params[:id])

    respond_to do |format|
      if @description.update_attributes(params[:description])
        flash[:notice] = 'Description was successfully updated.'
        format.html { redirect_to(@description) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @description.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptions/1
  # DELETE /descriptions/1.xml
  def destroy
    @description = Description.find(params[:id])
    @description.destroy

    respond_to do |format|
      format.html { redirect_to(descriptions_url) }
      format.xml  { head :ok }
    end
  end
end

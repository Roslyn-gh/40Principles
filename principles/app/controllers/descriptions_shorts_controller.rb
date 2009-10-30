class DescriptionsShortsController < ApplicationController
  # GET /descriptions_shorts
  # GET /descriptions_shorts.xml
  def index
    @descriptions_shorts = DescriptionsShort.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @descriptions_shorts }
    end
  end

  # GET /descriptions_shorts/1
  # GET /descriptions_shorts/1.xml
  def show
    @descriptions_short = DescriptionsShort.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @descriptions_short }
    end
  end

  # GET /descriptions_shorts/new
  # GET /descriptions_shorts/new.xml
  def new
    @descriptions_short = DescriptionsShort.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @descriptions_short }
    end
  end

  # GET /descriptions_shorts/1/edit
  def edit
    @descriptions_short = DescriptionsShort.find(params[:id])
  end

  # POST /descriptions_shorts
  # POST /descriptions_shorts.xml
  def create
    @descriptions_short = DescriptionsShort.new(params[:descriptions_short])

    respond_to do |format|
      if @descriptions_short.save
        flash[:notice] = 'DescriptionsShort was successfully created.'
        format.html { redirect_to(@descriptions_short) }
        format.xml  { render :xml => @descriptions_short, :status => :created, :location => @descriptions_short }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @descriptions_short.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /descriptions_shorts/1
  # PUT /descriptions_shorts/1.xml
  def update
    @descriptions_short = DescriptionsShort.find(params[:id])

    respond_to do |format|
      if @descriptions_short.update_attributes(params[:descriptions_short])
        flash[:notice] = 'DescriptionsShort was successfully updated.'
        format.html { redirect_to(@descriptions_short) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @descriptions_short.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptions_shorts/1
  # DELETE /descriptions_shorts/1.xml
  def destroy
    @descriptions_short = DescriptionsShort.find(params[:id])
    @descriptions_short.destroy

    respond_to do |format|
      format.html { redirect_to(descriptions_shorts_url) }
      format.xml  { head :ok }
    end
  end
end

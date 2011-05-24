class GlosconsController < ApplicationController
  # GET /gloscons
  # GET /gloscons.xml
  def index
    @gloscons = Gloscon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gloscons }
    end
  end

  # GET /gloscons/1
  # GET /gloscons/1.xml
  def show
    @gloscon = Gloscon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gloscon }
    end
  end

  # GET /gloscons/new
  # GET /gloscons/new.xml
  def new
    @gloscon = Gloscon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gloscon }
    end
  end

  # GET /gloscons/1/edit
  def edit
    @gloscon = Gloscon.find(params[:id])
  end

  # POST /gloscons
  # POST /gloscons.xml
  def create
    @gloscon = Gloscon.new(params[:gloscon])

    respond_to do |format|
      if @gloscon.save
        format.html { redirect_to(@gloscon, :notice => 'Gloscon was successfully created.') }
        format.xml  { render :xml => @gloscon, :status => :created, :location => @gloscon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gloscon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gloscons/1
  # PUT /gloscons/1.xml
  def update
    @gloscon = Gloscon.find(params[:id])

    respond_to do |format|
      if @gloscon.update_attributes(params[:gloscon])
        format.html { redirect_to(@gloscon, :notice => 'Gloscon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gloscon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gloscons/1
  # DELETE /gloscons/1.xml
  def destroy
    @gloscon = Gloscon.find(params[:id])
    @gloscon.destroy

    respond_to do |format|
      format.html { redirect_to(gloscons_url) }
      format.xml  { head :ok }
    end
  end
end

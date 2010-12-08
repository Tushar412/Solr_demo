class PropertiesController < ApplicationController
  # GET /properties
  # GET /properties.xml
  def index
    @properties = Property.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @properties }
    end
  end

  # GET /properties/1
  # GET /properties/1.xml
  def show
    @property = Property.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @property }
    end
  end

  # GET /properties/new
  # GET /properties/new.xml
  def new
    @property = Property.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @property }
    end
  end

  # GET /properties/1/edit
  def edit
    @property = Property.find(params[:id])
  end

  # POST /properties
  # POST /properties.xml
  def create
    @property = Property.new(params[:property])

    respond_to do |format|
      if @property.save
        format.html { redirect_to(@property, :notice => 'Property was successfully created.') }
        format.xml  { render :xml => @property, :status => :created, :location => @property }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /properties/1
  # PUT /properties/1.xml
  def update
    @property = Property.find(params[:id])

    respond_to do |format|
      if @property.update_attributes(params[:property])
        format.html { redirect_to(@property, :notice => 'Property was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.xml
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    respond_to do |format|
      format.html { redirect_to(properties_url) }
      format.xml  { head :ok }
    end
  end
  
  def property_search
    @result=Property.find_by_solr("#{params[:search]}", :order=>"created_at desc")
    #Query to search for the properties which have exactly 3 bedrooms
  #  @result=Property.find_by_solr("#{params[:search]} AND no_of_bedrooms:3")
    #---------------------------------------------------------------#
    #Query to search for the properties with name which have bedrooms between 1 and 4
   # @result=Property.find_by_solr("#{params[:search]} AND no_of_bedrooms:[1 TO 3]")
    #-------------------------------------------------------------------------#
    #Query to search for the properties wither match the decsription or property have an 2 bedrooms
  #  @result=Property.find_by_solr("#{params[:search]} OR no_of_bedrooms:2")
   #Query to search for the properties WITH ORDER BY NAME 
   # @result=Property.find_by_solr("no_of_bedrooms:[1 TO 4]", :order=>'name_s asc')
  
  end
end

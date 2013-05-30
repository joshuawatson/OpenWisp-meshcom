class CpeTemplatesController < ApplicationController
  # GET /cpe_templates
  # GET /cpe_templates.xml
  def index
    @cpe_templates = CpeTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cpe_templates }
    end
  end

  # GET /cpe_templates/1
  # GET /cpe_templates/1.xml
  def show
    @cpe_template = CpeTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cpe_template }
    end
  end

  # GET /cpe_templates/new
  # GET /cpe_templates/new.xml
  def new
    @cpe_template = CpeTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cpe_template }
    end
  end

  # GET /cpe_templates/1/edit
  def edit
    @cpe_template = CpeTemplate.find(params[:id])
  end

  # POST /cpe_templates
  # POST /cpe_templates.xml
  def create
    @cpe_template = CpeTemplate.new(params[:cpe_template])

    respond_to do |format|
      if @cpe_template.save
        format.html { redirect_to(@cpe_template, :notice => 'CpeTemplate was successfully created.') }
        format.xml  { render :xml => @cpe_template, :status => :created, :location => @cpe_template }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cpe_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cpe_templates/1
  # PUT /cpe_templates/1.xml
  def update
    @cpe_template = CpeTemplate.find(params[:id])

    respond_to do |format|
      if @cpe_template.update_attributes(params[:cpe_template])
        format.html { redirect_to(@cpe_template, :notice => 'CpeTemplate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cpe_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cpe_templates/1
  # DELETE /cpe_templates/1.xml
  def destroy
    @cpe_template = CpeTemplate.find(params[:id])
    @cpe_template.destroy

    respond_to do |format|
      format.html { redirect_to(cpe_templates_url) }
      format.xml  { head :ok }
    end
  end
end

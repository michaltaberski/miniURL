class ShortcutsController < ApplicationController
  # GET /shortcuts
  # GET /shortcuts.xml
  def index
    @shortcuts = Shortcut.all
    @shortcut = Shortcut.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shortcuts }
    end
  end

  # GET /shortcuts/1
  # GET /shortcuts/1.xml
  def show
    @shortcut = Shortcut.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shortcut }
    end
  end
  
  
  def go
    @shortcut = Shortcut.find(params[:alias])
    redirect_to 'http://' + @shortcut.link
  end

  # GET /shortcuts/new
  # GET /shortcuts/new.xml
  def new
    @shortcut = Shortcut.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shortcut }
    end
  end

  # GET /shortcuts/1/edit
  def edit
    @shortcut = Shortcut.find(params[:id])
  end

  # POST /shortcuts
  # POST /shortcuts.xml
  def create
    @shortcut = Shortcut.new(params[:shortcut])
    
    respond_to do |format|
      if @shortcut.save
        format.html { redirect_to(@shortcut, :notice => 'Shortcut was successfully created.') }
        format.xml  { render :xml => @shortcut, :status => :created, :location => @shortcut }
        format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shortcut.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shortcuts/1
  # PUT /shortcuts/1.xml
  def update
    @shortcut = Shortcut.find(params[:id])

    respond_to do |format|
      if @shortcut.update_attributes(params[:shortcut])
        format.html { redirect_to(@shortcut, :notice => 'Shortcut was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shortcut.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shortcuts/1
  # DELETE /shortcuts/1.xml
  def destroy
    @shortcut = Shortcut.find(params[:id])
    @shortcut.destroy

    respond_to do |format|
      format.html { redirect_to(shortcuts_url) }
      format.xml  { head :ok }
    end
  end
  
end

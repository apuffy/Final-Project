class EmailsController < ApplicationController
  # GET /emails
  # GET /emails.json
  def index
    @title = "index"
    @emails = Email.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emails }
    end
  end

  # GET /emails/1
  # GET /emails/1.json
  def show
    @title = "show"    
    @email = Email.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @email }
    end
  end

  # GET /emails/new
  # GET /emails/new.json
  def new
    @title = "New Email"    
    @email = Email.new
    @contacts = Contact.where("user_id = ?", cookies[:remember_token])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email }
      format.json { render json: @contact }
    end
  end

  # GET /emails/1/edit
  def edit
    @title = "Edit"
    @email = Email.find(params[:id])
  end

  # POST /emails
  # POST /emails.json
  def create
    @title ="create"
    @email = Email.new(params[:email])

    respond_to do |format|
      if @email.save
        format.html { redirect_to message_path, notice: 'Email was successfully created.' }
        format.json { render json: @email, status: :created, location: @email }
      else
        format.html { render action: "new" }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emails/1
  # PUT /emails/1.json
  def update
    @title = "Update"
    @email = Email.find(params[:id])

    respond_to do |format|
      if @email.update_attributes(params[:email])
        format.html { redirect_to message_path, notice: 'Email was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to message_path }
      format.json { head :ok }
    end
  end
end

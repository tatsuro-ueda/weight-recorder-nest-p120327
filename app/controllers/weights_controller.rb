class WeightsController < ApplicationController
  # GET /weights
  # GET /weights.json
  def index
    @user = User.find(params[:user_id])
    @weights = @user.weight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weights }
    end
  end

  # GET /weights/1
  # GET /weights/1.json
  def show
    @user = User.find(params[:user_id])
    @weight = @user.weight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weight }
    end
  end

  # GET /weights/new
  # GET /weights/new.json
  def new
    @user = User.find(params[:user_id])
    @weight = @user.weight.build
    #respond_with(@weight)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weight }
    end
  end

  def create
    @user = User.find(params[:user_id])
    @weight = @user.weight.build(params[:weight])

    respond_to do |format|
      if @weight.save
        format.html { redirect_to [@user, @weight], notice: 'Weight was successfully created.' }
        format.json { render json: @weight, status: :created, location: @weight }
      else
        format.html { render action: "new" }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  #def new
  #  @weight = Weight.new
  #  logger.debug "@weight=#{@weight.to_yaml}"
  #
  #  respond_to do |format|
  #    format.html # new.html.erb
  #    format.json { render json: @weight }
  #  end
  #end

  # GET /weights/1/edit
  def edit
    @user = User.find(params[:user_id])
    @weight = @user.weight.find(params[:id])
  end

  # TODO should be able to enter weight
  # POST /weights
  # POST /weights.json
  #def create
  #  user = User.find params[:user_id]
  #  user.weight.create params[:weight]
  #  #@weight = Weight.new(params[:weight])
  #  #
  #  #respond_to do |format|
  #  #  if @weight.save
  #  #    format.html { redirect_to @weight, notice: 'Weight was successfully created.' }
  #  #    format.json { render json: @weight, status: :created, location: @weight }
  #  #  else
  #  #    format.html { render action: "new" }
  #  #    format.json { render json: @weight.errors, status: :unprocessable_entity }
  #  #  end
  #  #end
  #end

  # PUT /weights/1
  # PUT /weights/1.json
  def update
    @user = User.find(params[:user_id])
    @weight = @user.weight.find(params[:id])

    respond_to do |format|
      if @weight.update_attributes(params[:weight])
        format.html { redirect_to @weight, notice: 'Weight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @user = User.find(params[:user_id])
    @weight = @user.weight.find(params[:id])
    @weight.destroy

    respond_to do |format|
      format.html { redirect_to weights_url }
      format.json { head :no_content }
    end
  end
end

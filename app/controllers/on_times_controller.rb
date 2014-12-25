class OnTimesController < ApplicationController
  before_action :set_on_time, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

  # GET /on_times
  # GET /on_times.json
  def index
    @on_times = current_user.on_times.all
  end

  # GET /on_times/1
  # GET /on_times/1.json
  def show
  end

  # GET /on_times/new
  def new
    @on_time = current_user.on_times.new
  end

  # GET /on_times/1/edit
  def edit
  end

  # POST /on_times
  # POST /on_times.json
  def create
    @on_time = current_user.on_times.new(on_time_params)

    respond_to do |format|
      if @on_time.save
        format.html { redirect_to @on_time, notice: 'On time was successfully created.' }
        format.json { render :show, status: :created, location: @on_time }
      else
        format.html { render :new }
        format.json { render json: @on_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /on_times/1
  # PATCH/PUT /on_times/1.json
  def update
    respond_to do |format|
      if @on_time.update(on_time_params)
        format.html { redirect_to @on_time, notice: 'On time was successfully updated.' }
        format.json { render :show, status: :ok, location: @on_time }
      else
        format.html { render :edit }
        format.json { render json: @on_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /on_times/1
  # DELETE /on_times/1.json
  def destroy
    @on_time.destroy
    respond_to do |format|
      format.html { redirect_to on_times_url, notice: 'On time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_on_time
      @on_time = current_user.on_times.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def on_time_params
      params.require(:on_time).permit(:Task, :Deadline)
    end
end

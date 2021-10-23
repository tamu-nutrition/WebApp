class ParticipationsController < ApplicationController
  before_action :set_participation, only: %i[ show edit update destroy ]

  # GET /participations or /participations.json
  def index
    if params[:id].present? 
      @participations = Participation.where(event_id: params[:id])
    else
      @participations = Participation.all
    end
  end

  # GET /participations/1 or /participations/1.json
  def show
  end

  # GET /participations/new
  def new
    event = Event.find(params[:event])
    puts event.event_id
    puts event.event_name
    @participation = Participation.new(event_id: event.event_id, event_name: event.event_name)
  end

  # GET /participations/1/edit
  def edit
  end

  # POST /participations or /participations.json
  def create
    @participation = Participation.new(participation_params)

    respond_to do |format|
      if @participation.save
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :created, location: @participation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participations/1 or /participations/1.json
  def update
    respond_to do |format|
      if @participation.update(participation_params)
        format.html { redirect_to @participation, notice: "Participation was successfully updated." }
        format.json { render :show, status: :ok, location: @participation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participations/1 or /participations/1.json
  def destroy
    @participation.destroy
    respond_to do |format|
      format.html { redirect_to participations_url, notice: "Participation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participation
      @participation = Participation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def participation_params
      params.require(:participation).permit(:event_id, :uin, :event_name)
    end
end
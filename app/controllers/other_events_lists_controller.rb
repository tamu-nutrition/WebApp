class OtherEventsListsController < ApplicationController
  before_action :set_other_events_list, only: %i[ show edit update destroy ]

  # GET /other_events_lists or /other_events_lists.json
  def index
    @other_events_lists = OtherEventsList.all
  end

  # GET /other_events_lists/1 or /other_events_lists/1.json
  def show
  end

  # GET /other_events_lists/new
  def new
    @other_events_list = OtherEventsList.new
  end

  # GET /other_events_lists/1/edit
  def edit
  end

  # POST /other_events_lists or /other_events_lists.json
  def create
    @other_events_list = OtherEventsList.new(other_events_list_params)

    respond_to do |format|
      if @other_events_list.save
        format.html { redirect_to @other_events_list, notice: "Other events list was successfully created." }
        format.json { render :show, status: :created, location: @other_events_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @other_events_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_events_lists/1 or /other_events_lists/1.json
  def update
    respond_to do |format|
      if @other_events_list.update(other_events_list_params)
        format.html { redirect_to @other_events_list, notice: "Other events list was successfully updated." }
        format.json { render :show, status: :ok, location: @other_events_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @other_events_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_events_lists/1 or /other_events_lists/1.json
  def destroy
    @other_events_list.destroy
    respond_to do |format|
      format.html { redirect_to other_events_lists_url, notice: "Other events list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_events_list
      @other_events_list = OtherEventsList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def other_events_list_params
      params.require(:other_events_list).permit(:event_id, :point_worth, :event_type, :number_participation)
    end
end

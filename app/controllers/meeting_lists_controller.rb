class MeetingListsController < ApplicationController
  before_action :set_meeting_list, only: %i[ show edit update destroy ]

  # GET /meeting_lists or /meeting_lists.json
  def index
    @meeting_lists = MeetingList.all
  end

  # GET /meeting_lists/1 or /meeting_lists/1.json
  def show
  end

  # GET /meeting_lists/new
  def new
    @meeting_list = MeetingList.new
  end

  # GET /meeting_lists/1/edit
  def edit
  end

  # POST /meeting_lists or /meeting_lists.json
  def create
    @meeting_list = MeetingList.new(meeting_list_params)

    respond_to do |format|
      if @meeting_list.save
        format.html { redirect_to @meeting_list, notice: "Meeting list was successfully created." }
        format.json { render :show, status: :created, location: @meeting_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meeting_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meeting_lists/1 or /meeting_lists/1.json
  def update
    respond_to do |format|
      if @meeting_list.update(meeting_list_params)
        format.html { redirect_to @meeting_list, notice: "Meeting list was successfully updated." }
        format.json { render :show, status: :ok, location: @meeting_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_lists/1 or /meeting_lists/1.json
  def destroy
    @meeting_list.destroy
    respond_to do |format|
      format.html { redirect_to meeting_lists_url, notice: "Meeting list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting_list
      @meeting_list = MeetingList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meeting_list_params
      params.require(:meeting_list).permit(:meeting_id, :meeting_name, :date, :location, :start_time)
    end
end

class RequestsController < ApplicationController
<<<<<<< HEAD
  before_action :set_request, only: %i[ show edit update destroy  ]

  def accept
  end

  def reject
    @request.destroy
  end

=======
  before_action :set_request, only: %i[ show edit update destroy ]

  # GET /requests or /requests.json
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
  def index
    @requests = Request.all
  end

<<<<<<< HEAD
=======
  # GET /requests/1 or /requests/1.json
  def show
  end

  # GET /requests/new
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
  def new
    @request = Request.new
  end

<<<<<<< HEAD
=======
  # GET /requests/1/edit
  def edit
  end

  # POST /requests or /requests.json
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: "Request was successfully created." }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
=======
  # PATCH/PUT /requests/1 or /requests/1.json
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: "Request was successfully updated." }
<<<<<<< HEAD
        format.json { render :show, status: :ok, location: @request}
=======
        format.json { render :show, status: :ok, location: @request }
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
=======
  # DELETE /requests/1 or /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: "Request was successfully destroyed." }
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
      format.json { head :no_content }
    end
  end

<<<<<<< HEAD
  def edit
  end

  private
=======
  private
    # Use callbacks to share common setup or constraints between actions.
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
    def set_request
      @request = Request.find(params[:id])
    end

<<<<<<< HEAD
    def request_params
      params.require(:request).permit(:event_id, :uin, :date, :points, :request_type, :approved)
=======
    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:event_id, :UIN, :date_of_request, :points_requested, :request_time, :approved, :id)
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
    end
end

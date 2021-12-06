# frozen_string_literal: true

# Meetings Controller is used to create a list of meetings

# Class and methods define basic CRUD of meetings and relevant parameters for referencing meetings
class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[show edit update destroy]

  # GET /meetings or /meetings.json
  def index
    @meetings = Meeting.all
  end

  # GET /meetings/1 or /meetings/1.json
  def show
    if authenticate_officer == false
      respond_to do |format|
        format.html { redirect_to root_path, alert: 'You are not authorized to perform this action!' }
        format.json { render :show, status: :bad_request }
      end
      return nil
    end
  end

  # GET /meetings/new
  def new
    @meetings = Meeting.all
    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit; end

  # POST /meetings or /meetings.json
  def create
    if authenticate_officer == false
      respond_to do |format|
        format.html { redirect_to root_path, alert: 'You are not authorized to perform this action!' }
        format.json { render :show, status: :bad_request }
      end
      return nil
    end
    @meeting = Meeting.new(meeting_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: 'Meeting list was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/1 or /meetings/1.json
  def update
    if authenticate_officer == false
      respond_to do |format|
        format.html { redirect_to root_path, alert: 'You are not authorized to perform this action!' }
        format.json { render :show, status: :bad_request }
      end
      return nil
    end
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: 'Meeting list was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1 or /meetings/1.json
  def destroy
    if authenticate_officer == false
      respond_to do |format|
        format.html { redirect_to root_path, alert: 'You are not authorized to perform this action!' }
        format.json { render :show, status: :bad_request }
      end
      return nil
    end
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def authenticate_officer
    @officers = Officer.all
    @officers.each do |officer|
      return true if officer.email == session[:email]
    end
    false
  end

  # Only allow a list of trusted parameters through.
  def meeting_params
    params.require(:meeting).permit(:meeting_name, :date, :location, :start_time)
  end
end

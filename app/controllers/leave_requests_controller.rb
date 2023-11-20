class LeaveRequestsController < ApplicationController
  
  before_action :set_leave_request, only: [:show, :edit, :update, :destroy]

  def index
    @leave_requests = current_user.leave_requests
  end

  def show
  end

  def new
    @leave_request = LeaveRequest.new
  end

  def create
    @leave_request = LeaveRequest.new(leave_request_params)
    @leave_request.user_id = current_user.id  
    if @leave_request.save
  
      redirect_to leave_requests_path, notice: 'Leave request was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @leave_request.update(leave_request_params)
      redirect_to @leave_request, notice: 'Leave request was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @leave_request.destroy
    redirect_to leave_requests_url, notice: 'Leave request was successfully destroyed.'
  end

  private

  def set_leave_request
    @leave_request = LeaveRequest.find(params[:id])
  end

  def leave_request_params
    params.require(:leave_request).permit(:start_date, :end_date, :status, :leavetype_id, :user_id)
  end
end

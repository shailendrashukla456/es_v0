ActiveAdmin.register LeaveRequest do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :start_date, :end_date, :leavetype_id, :status, :user_id
   
   member_action :approve, method: :put do
    resource.update(status: "true")
    redirect_to admin_leave_requests_path, notice: "Leave approved successfully."
end

   index do
    selectable_column
    id_column
    
    
    column :User do |obj|
      user = User.find_by(id: obj.user_id)
      user.email if user
    end
    column :status
      
    
    actions do |leave_request|
      if !leave_request.status
        link_to 'Approve', approve_admin_leave_request_path(leave_request), method: :put
      end
    end

  end  
end

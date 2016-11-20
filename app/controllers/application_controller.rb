class ApplicationController < ActionController::API

  before_action :authenticate!


  def me
    render json: @current_user.to_json
  end


private

  def authenticate!
    @current_user = User.find_by_id(request.env["HTTP_USER_ID"])
    head 401 if @current_user.nil?
  end

  def current_user
    @current_user
  end


end

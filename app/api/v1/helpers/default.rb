module V1::Helpers::Default
  extend Grape::API::Helpers

  def current_user
    @current_user ||= User.find_by_id(request.env["HTTP_USER_ID"])
  end

  def authenticate!
    error!('401 Unauthorized', 401) unless current_user
  end

end
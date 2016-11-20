class V1::Elections < V1::Base
  version 'v1', using: :path
  format :json
  
  helpers do
    def current_user
      @current_user ||= User.find_by_id(request.env["HTTP_USER_ID"])
    end

    def authenticate!
      error!('401 Unauthorized', 401) unless current_user
    end
  end

  resource :elections do
    desc "Return list of elections"
    # Récupération de la collection de toutes les voitures grâce à ActiveRecord
    get do
      authenticate!
      Election.all
    end

    desc "Return a election"
    # Récupération d'une voiture spécifique grâce au paramètre passé dans l'url
    params do
      requires :id, type: Integer, desc: "Election id"
    end
    route_param :id do
      get do
        Election.find(params[:id])
      end
    end
  end

end

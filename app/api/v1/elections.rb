class V1::Elections < Grape::API
  version 'v1', using: :path
  format :json

  resource :elections do
    desc "Return list of elections"
    # Récupération de la collection de toutes les voitures grâce à ActiveRecord
    get do
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

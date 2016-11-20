class V1::Elections < Grape::API

  resource :elections do
    desc "Return list of elections"
    # Récupération de la collection de toutes les voitures grâce à ActiveRecord
    get do
      authenticate!
      current_user.elections
    end

    desc "Return a election"
    # Récupération d'une voiture spécifique grâce au paramètre passé dans l'url
    params do
      requires :id, type: Integer, desc: "Election id"
    end
    route_param :id do
      get do
        current_user.elections.find(params[:id])
      end
    end
  end

end

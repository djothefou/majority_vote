class V1::Base < Grape::API
  version 'v1', using: :path
  format :json

  mount V1::Elections
end

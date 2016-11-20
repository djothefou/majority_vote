class API < Grape::API

  helpers ::Helpers::Authentication

  mount V1::Base
  add_swagger_documentation
end
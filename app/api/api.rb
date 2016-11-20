class API < Grape::API
  mount V1::Elections
end
  class Base < Grape::API
    mount V1::Elections
  end
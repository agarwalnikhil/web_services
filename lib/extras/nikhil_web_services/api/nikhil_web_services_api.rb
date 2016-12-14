module NikhilWebServices
  module Api
    class NikhilWebServicesApi < Grape::API
      # Mounts
      mount NikhilWebServices::Api::V1::Api_v1
    end
  end
end

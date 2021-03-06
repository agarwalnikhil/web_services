module NikhilWebServices
  module Api
    module V1
      class Api_v1 < Grape::API
        # Prevent Stacktrace from being sent
        if Rails.env.production?
          rescue_from :all do |e|
            Rack::Response.new([ "Error" ], 500, { "Content-type" => "text/error" }).finish
          end
        end
        # Mount
        mount ::NikhilWebServices::Api::V1::Webservices
      end
    end
  end
end
module PulppoConnector
  module Models
    class ServiceRequest
      attr_accessor :request_id, :status, :provider_id, :created_at, :updated_at, :client_id, :property_id, :broker_id, :owner_id, :type

      def initialize(params = {})
        @request_id = params[:request_id]
        @status = params[:status]
        @provider_id = params[:provider_id]
        @created_at = params[:created_at]
        @updated_at = params[:updated_at]
        @client_id = params[:client_id]
        @property_id = params[:property_id]
        @broker_id = params[:broker_id]
        @owner_id = params[:owner_id]
        @type = params[:type]
      end
    end
  end
end

module PulppoConnector
  module RequestHandlers
    class BaseHandler
      attr_accessor :client, :property, :owner, :broker

      def initialize(params)
        @client = Models::User.new(params[:client]) if params[:client]
        @property = Models::Property.new(params[:property]) if params[:property]
        @owner = Models::User.new(params[:owner]) if params[:owner]
        @broker = Models::User.new(params[:broker]) if params[:broker]
      end
    end
  end
end

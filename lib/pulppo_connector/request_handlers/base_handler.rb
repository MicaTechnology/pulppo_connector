# frozen_string_literal: true

module PulppoConnector
  module RequestHandlers
    class BaseHandler
      attr_accessor :client, :property, :owner, :broker, :type, :requestId, :requestedBy

      def initialize(params)
        @client = Models::User.new(params[:client]) if params[:client]
        @property = Models::Property.new(params[:property]) if params[:property]
        @owner = Models::User.new(params[:owner]) if params[:owner]
        @broker = Models::User.new(params[:broker]) if params[:broker]
        @type = params[:type]
        @requestId = params[:requestId]
        @requestedBy = params[:requestedBy]
      end
    end
  end
end

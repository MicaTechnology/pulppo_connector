# frozen_string_literal: true

module PulppoConnector
  module Models
    class Property
      class Picture
        attr_accessor :url, :description, :type

        def initialize(params = {})
          @url = params[:url]
          @description = params[:description]
          @type = params[:type]
        end
      end
    end
  end
end

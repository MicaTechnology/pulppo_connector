# frozen_string_literal: true

module PulppoConnector
  module Models
    class Property
      class Listing
        attr_accessor :price, :operation, :title

        def initialize(params = {})
          @price = params[:price]
          @operation = params[:operation]
          @title = params[:title]
        end
      end
    end
  end
end

# frozen_string_literal: true

module PulppoConnector
  module Models
    class Property
      class Address
        attr_accessor :zip, :city, :street, :state, :neighborhood, :floor, :apartment, :location

        def initialize(params = {})
          @zip = params[:zip]
          @city = params[:city]
          @street = params[:street]
          @state = params[:state]
          @neighborhood = params[:neighborhood]
          @floor = params[:floor]
          @apartment = params[:apartment]
          @location = params[:location]
        end
      end
    end
  end
end

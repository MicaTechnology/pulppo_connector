# frozen_string_literal: true

module PulppoConnector
  module Models
    class Property
      class PropertyAttributes
        attr_accessor :yearBuild, :expenses, :expensesDescription, :rooms, :ampliation,
          :suites, :bathrooms, :toilettes, :parkings, :zonification,
          :roofedSurface, :semiRoofedSurface, :totalSurface, :unroofedSurface

        def initialize(params = {})
          @yearBuild = params[:yearBuild]
          @expenses = params[:expenses]
          @expensesDescription = params[:expensesDescription]
          @rooms = params[:rooms]
          @ampliation = params[:ampliation]
          @suites = params[:suites]
          @bathrooms = params[:bathrooms]
          @toilettes = params[:toilettes]
          @parkings = params[:parkings]
          @zonification = params[:zonification]
          @roofedSurface = params[:roofedSurface]
          @semiRoofedSurface = params[:semiRoofedSurface]
          @totalSurface = params[:totalSurface]
          @unroofedSurface = params[:unroofedSurface]
        end
      end
    end
  end
end

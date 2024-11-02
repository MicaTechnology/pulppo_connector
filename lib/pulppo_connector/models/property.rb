module PulppoConnector
  module Models
    class Property
      attr_accessor :listing, :attributes, :address, :type, :pictures, :videos

      def initialize(params = {})
        @listing = params[:listing]
        @attributes = params[:attributes]
        @address = params[:address]
        @type = params[:type]
        @pictures = params[:pictures]
        @videos = params[:videos]
      end
    end
  end
end

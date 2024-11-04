# frozen_string_literal: true
require_relative 'property/listing'
require_relative 'property/property_attributes'
require_relative 'property/address'
require_relative 'property/picture'
require_relative 'property/video'

module PulppoConnector
  module Models
    class Property
      attr_accessor :listing, :attributes, :address, :type, :pictures, :videos

      def initialize(params = {})
        @listing = Property::Listing.new(params[:listing])
        @attributes = Property::PropertyAttributes.new(params[:attributes])
        @address = Property::Address.new(params[:address])
        @type = params[:type] || 'Unknown'
        @pictures = (params[:pictures] || []).map { |pic| Property::Picture.new(pic) }
        @videos = (params[:videos] || []).map { |vid| Property::Video.new(vid) }
      end
    end
  end
end

module PulppoConnector
  module Models
    class User
      attr_accessor :id, :first_name, :last_name, :email, :phone, :profile_picture

      def initialize(params = {})
        @id = params[:id]
        @first_name = params[:first_name]
        @last_name = params[:last_name]
        @email = params[:email]
        @phone = params[:phone]
        @profile_picture = params[:profile_picture]
      end
    end
  end
end

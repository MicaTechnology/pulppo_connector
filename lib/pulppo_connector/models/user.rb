module PulppoConnector
  module Models
    class User
      attr_accessor :id, :first_name, :last_name, :email, :phone, :profile_picture

      def initialize(params = {})
        @id = params[:id]
        @first_name = params[:firstName]
        @last_name = params[:lastName]
        @email = params[:email]
        @phone = params[:phone]
        @profile_picture = params[:profilePicture]
      end
    end
  end
end

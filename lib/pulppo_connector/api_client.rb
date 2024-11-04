require 'rest-client'
require 'json'

module PulppoConnector
  class ApiClient
    def initialize(provider_id, api_key)
      @provider_id = provider_id
      @api_key = api_key
      @headers = { Authorization: "Bearer #{api_key}", content_type: :json, accept: :json }
      @base_uri = ENV.fetch('PULPPO_URL') { 'https://api.pulppo.com' }
    end

    def update_service_request_status(request_id, status, label)
      url = "#{@base_uri}/providers/#{@provider_id}/requests/#{request_id}/status"
      payload = { status: status, label: label }.to_json
      response = RestClient.patch(url, payload, @headers)
      JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      handle_error(e)
    end

    def create_notification(request_id, notify_to, message, title, action_url)
      url = "#{@base_uri}/providers/#{@provider_id}/requests/#{request_id}/notifications"
      payload = {
        notifyTo: notify_to,
        message: message,
        title: title,
        actionUrl: action_url
      }.to_json
      response = RestClient.post(url, payload, @headers)
      JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      handle_error(e)
    end

    private

    def handle_error(exception)
      error_response = exception.response
      error_body = JSON.parse(error_response.body) rescue {}
      {
        status: error_response.code,
        message: error_body['error'] || error_body['message'] || 'An error occurred'
      }
    end
  end
end

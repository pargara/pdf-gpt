require 'openai'

module OpenAi
  class Integration
    attr_reader :client
    attr_reader :respuesta

      def initialize(user_message)
          # TODO: Refactorizar el codigo de este modulo
          @client = OpenAI::Client.new( access_token: Rails.application.credentials.openai_api_key!, log_errors: true)

          @respuesta = create_chat(user_message)
      end

      def create_chat(message)
          petition = @client.chat(parameters: {model: "gpt-4o", messages: [{role: "user", content: message}], temperature: 0.7})

          return petition["choices"][0]["message"]["content"]
      end
  end
end
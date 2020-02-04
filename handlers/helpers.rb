module Lita
  module Handlers
    class Helpers < Handler
      route(/helper[s|z] (\d*){1}/i, :puts_helper, command: true)
      route(/show my info/, :show_current_user_info, command: true, help: { "show my info" => "Show your information" })

      def puts_helper response
        puts "matches: #{response.matches}"
        puts "match_data: #{response.match_data}"
        puts "args #{response.args}"
        puts "message: #{response.message}"
        puts "user: #{response.user}"
        puts "extensions: #{response.extensions}"

        response.reply_privately "Shh! This is private!"
        response.reply "Hola!"
      end

      def show_current_user_info response 
        response.reply "Your name is #{response.user.name}"
        response.reply "Your ID is #{response.user.id}"
      end

      Lita.register_handler(self)
    end
  end
end
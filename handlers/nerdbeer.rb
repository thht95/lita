module Lita
  module Handlers
    class Nerdbeers < Handler
      route(/nerdbeers/i, :nerdbeers, command: true,
        help: { "nerdbeers" => "replies with current nerdbeers agenda" })

      def nerdbeers response
        http_response = http.get "https://www.nerdbeers.com/api/"
        if http_response.status == 200
          agenda = MultiJson.load http_response.body

          message = []
          agenda['pairings'].each {|a| 
            message.push "Pairing ##{a['id']} => Topic: #{a['topic']} Beer: #{a['beer']}"
          }

          response.reply message.join "\n"
        else
          response.reply "Status is not OK"
        end
      end

      Lita.register_handler(self)
    end
  end
end
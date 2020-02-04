module Lita
  module Handlers
    class Destroyer < Handler
      route(/destroy everything/, :destroy_it, command: true,
        restrict_to: [:authorized_destroyers])

      def destroy_it response
        response.reply "Sweet! Let's break stuff!"
      end

      Lita.register_handler(self)
    end
  end
end
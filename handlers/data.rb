module Lita
  module Handlers
    class Data < Handler
      route(/data/, :connect, command: true,
          help: { "data" => "rConnect to dataa" })

      def connect response
        client = Mysql2::Client.new(:host => "localhost", :username => "newuser", :password => "password", :port => "3306", :database => "test_magic")
        results = client.query("SELECT * FROM new_table")

        response.reply "There are #{results.count} records."
      end

      Lita.register_handler(self)
    end
  end
end
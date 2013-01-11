class App
  module Views
    class Layout < Mustache
      def title 
        @title || "Mustache"
      end
    end
  end
end
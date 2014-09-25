require 'messenger_rails/view_helper'
module MessengerRails
  class Engine < ::Rails::Engine

    initializer "Messenger.helpers" do
      ActiveSupport.on_load :action_view do
        include MessengerRails::ViewHelper
      end
    end

  end
end


module MessengerRails
  module ViewHelper
    extend ActiveSupport::Concern

    # @example
    #   <%= flash_messenger %>
    def flash_messenger(opts = {})
      flash.inject('') do |str, message|
        type = message[0] == 'alert' ? 'error' : 'info'
        str + javascript_tag("Messenger().post({message: '#{message[1]}', type: '#{type}', hideAfter: 3, hideOnNavigate: true, showCloseButton: true});")
      end.html_safe
    end

    # @example
    #   <%= form_messenger(@record) %>
    def form_messenger(record, opts = {})
      if record.errors.any?
        messages = record.errors.full_messages.join('<br />')
        javascript_tag("Messenger().post({message: '#{messages}', type: 'error', hideAfter: 3, hideOnNavigate: true, showCloseButton: true});")
      end
    end

  end
end

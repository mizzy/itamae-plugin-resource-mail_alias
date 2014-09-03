require 'itamae/plugin/resource/mail_alias/version'
require 'itamae'

module Itamae
  module Plugin
    module Resource
      class MailAlias < Itamae::Resource::Base
        define_attribute :action, default: :create
        define_attribute :mail_alias, type: String, default_name: true
        define_attribute :recipient, type: String, required: true

        def action_create(options)
          if !run_specinfra(:check_mail_alias_is_aliased_to, attributes.mail_alias, attributes.recipient)
            run_specinfra(:add_mail_alias, mail_alias, attributes.recipient)
          end
        end
      end
    end
  end
end

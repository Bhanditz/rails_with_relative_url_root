# frozen_string_literal: true
require 'rails_with_relative_url_root/version'
require 'rack/rewrite'

class RailsWithRelativeUrlRoot
  def self.application
    Rack::Builder.app do
      relative_url_root = Rails.application.config.relative_url_root

      if relative_url_root.present?
        use Rack::Rewrite do
          r301 '/', relative_url_root

          if File.exists?(File.join(Rails.root, 'public', 'robots.txt'))
            rewrite '/robots.txt', relative_url_root + '/robots.txt'
          end
        end

        map relative_url_root do
          run Rails.application
        end
      else
        run Rails.application
      end
    end
  end
end

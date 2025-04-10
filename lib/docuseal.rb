# frozen_string_literal: true

module Docuseal
  URL_CACHE = ActiveSupport::Cache::MemoryStore.new
  PRODUCT_URL = 'https://www.faithseal.com'
  PRODUCT_EMAIL_URL = ENV.fetch('PRODUCT_EMAIL_URL', PRODUCT_URL)
  NEWSLETTER_URL = "#{PRODUCT_URL}/newsletters".freeze
  ENQUIRIES_URL = "#{PRODUCT_URL}/enquiries".freeze
  PRODUCT_NAME = 'FaithSeal'
  DEFAULT_APP_URL = ENV.fetch('APP_URL', 'http://localhost:3000')
  GITHUB_URL = 'https://github.com/faithseal/faithseal'
  DISCORD_URL = 'https://discord.gg/qygYCDGck9'
  TWITTER_URL = 'https://twitter.com/faithseal'
  TWITTER_HANDLE = '@faithseal'
  CHATGPT_URL = 'https://chatgpt.com/g/g-9hg8AAw0r-faithseal'
  SUPPORT_EMAIL = 'support@faithseal.com'
  HOST = ENV.fetch('HOST', 'localhost')
  AATL_CERT_NAME = 'faithseal_aatl'
  CONSOLE_URL = if Rails.env.development?
                  'http://console.localhost.io:3001'
                elsif ENV['MULTITENANT'] == 'true'
                  "https://console.#{HOST}"
                else
                  'https://console.faithseal.com'
                end
  CLOUD_URL = if Rails.env.development?
                'http://localhost:3000'
              else
                'https://faithseal.com'
              end
  CDN_URL = if Rails.env.development?
              'http://localhost:3000'
            elsif ENV['MULTITENANT'] == 'true'
              "https://cdn.#{HOST}"
            else
              'https://cdn.faithseal.com'
            end

  CERTS = JSON.parse(ENV.fetch('CERTS', '{}'))
  TIMESERVER_URL = ENV.fetch('TIMESERVER_URL', nil)
  VERSION_FILE_PATH = Rails.root.join('.version')

  DEFAULT_URL_OPTIONS = {
    host: HOST,
    protocol: ENV['FORCE_SSL'].present? ? 'https' : 'http'
  }.freeze

  module_function

  def version
    @version ||= VERSION_FILE_PATH.read.strip if VERSION_FILE_PATH.exist?
  end

  def multitenant?
    ENV['MULTITENANT'] == 'true'
  end

  def demo?
    ENV['DEMO'] == 'true'
  end

  def active_storage_public?
    ENV['ACTIVE_STORAGE_PUBLIC'] == 'true'
  end

  def default_pkcs
    return if Docuseal::CERTS['enabled'] == false

    @default_pkcs ||= GenerateCertificate.load_pkcs(Docuseal::CERTS)
  end

  def enable_pwa?
    true
  end

  def trusted_certs
    @trusted_certs ||=
      ENV['TRUSTED_CERTS'].to_s.gsub('\\n', "\n").split("\n\n").map do |base64|
        OpenSSL::X509::Certificate.new(base64)
      end
  end

  def default_url_options
    return DEFAULT_URL_OPTIONS if multitenant?

    @default_url_options ||= begin
      value = EncryptedConfig.find_by(key: EncryptedConfig::APP_URL_KEY)&.value if ENV['APP_URL'].blank?
      value ||= DEFAULT_APP_URL
      url = Addressable::URI.parse(value)
      { host: url.host, port: url.port, protocol: url.scheme }
    end
  end

  def product_name
    PRODUCT_NAME
  end

  def refresh_default_url_options!
    @default_url_options = nil
  end
end

# Provide an alias for new development while maintaining compatibility with existing code
# New code should use Faithseal instead of Docuseal while we transition
Faithseal = Docuseal

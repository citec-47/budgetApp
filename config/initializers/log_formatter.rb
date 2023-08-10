class CustomLogFormatter < ::Logger::Formatter
    def call(severity, timestamp, _progname, msg)
      "[#{timestamp.strftime('%Y-%m-%d %H:%M:%S')}] #{severity}: #{msg}\n"
    end
end
  
  Rails.application.config.log_formatter = CustomLogFormatter.new
  
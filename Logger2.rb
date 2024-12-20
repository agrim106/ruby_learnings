require 'logger'

# Logger with file rotation
logger = Logger.new('advanced.log', 'daily') # Rotate daily

# Set log level
logger.level = Logger::INFO

# Custom formatting
logger.formatter = proc do |severity, datetime, progname, msg|
  "[#{datetime.strftime('%Y-%m-%d %H:%M:%S')}] #{severity}: #{msg}\n"
end

# Log messages
logger.info("The application started successfully.")
logger.warn("Low disk space warning.")
logger.error("An unexpected error occurred.")

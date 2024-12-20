require 'logger'

# Create a logger instance
logger = Logger.new('abc.log') # Logs to console

logger.level = Logger::FATAL

# Log messages at different levels
logger.debug("This is a debug message.")
logger.info("This is an info message.")
logger.warn("This is a warning message.")
logger.error("This is an error message.")
logger.fatal("This is a fatal message.")

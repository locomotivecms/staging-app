$papertrail_logger = RemoteSyslogLogger.new(
  ENV['PAPERTRAIL_URL'] || 'logs2.papertrailapp.com', 
  ENV['PAPERTRAIL_PORT'] || 34110, 
  program: "staging-steam-#{Rails.env}"
)
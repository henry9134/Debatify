if ENV["OPENAI_ACCESS_TOKEN"].present?
  OpenAI.configure do |config|
    config.access_token = ENV["OPENAI_ACCESS_TOKEN"]
  end
else
  Rails.logger.warn("OPENAI_ACCESS_TOKEN is not set — skipping OpenAI config.")
end


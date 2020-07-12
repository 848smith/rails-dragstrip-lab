Rails.application.config.middleware.use OmniAuth::Builder do
    provider :guthub, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  end
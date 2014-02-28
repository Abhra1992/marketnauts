Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
    image_size: 'square', callback_path: '/api/v1/auth/facebook/callback'
end

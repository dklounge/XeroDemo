OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
  provider :twitter, ENV['Ce4nxvZVQ9jEl1l9D142jQ'], ENV['Pg1uQrjfbLHiBHKDiJgILs2H5FZdca60m99ZB5cy8']
end
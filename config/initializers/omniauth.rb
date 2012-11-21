Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,"124768211006322", "277b2680b6e9d636ea19d5d74e52d7a7",
   :scope => :email
end

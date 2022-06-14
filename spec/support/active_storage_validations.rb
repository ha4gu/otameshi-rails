# Active Storage Validations https://github.com/igorkasyanchuk/active_storage_validations

require "active_storage_validations/matchers"

RSpec.configure do |config|
  config.include ActiveStorageValidations::Matchers
end

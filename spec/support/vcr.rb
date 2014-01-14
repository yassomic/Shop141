# require 'vcr'

# VCR.configure do |c|
#   c.cassette_library_dir = Rails.root.join("spec", "fixtures", "cassettes")
#   c.hook_into :excon
#   c.configure_rspec_metadata!
#   c.allow_http_connections_when_no_cassette = false
# end

# RSpec.configure do |c|
#   c.treat_symbols_as_metadata_keys_with_true_values = true
# end
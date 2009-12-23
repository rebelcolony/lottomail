# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lotto_session',
  :secret      => '66be483c3d3d9c191add74dc2fe7e3fe3d9929fff460f0fc77fa6d48bd98982e4a548c6f23f3c9850ff0341f581a7ba8d4a7694fdd7786a55340587ac2a17538'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

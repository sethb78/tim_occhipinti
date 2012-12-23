# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_db_session',
  :secret      => '8a6a01f92c701e57c47a4e5615bbe30705e9de906636452ee88bd9aee1931c9ec6d9cad78253ed0d0c481d694bd7bc267d73cd2f04d1c169f934d499971f5de9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

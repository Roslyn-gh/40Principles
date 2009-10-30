# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_principles_session',
  :secret      => 'da925def9816540185232aa1e095aaf3869188ab8baf4ea769b8ff7812e05976528c3fd8c6ea046dded05df1190801f42fe3502a68f1c5c8835b47601be1df3f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

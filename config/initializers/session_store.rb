# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_40Principles_session',
  :secret      => 'db391bb6612d77ecf623b1ba338e5e93170cd8f295645cca5e5a5a8fe68974b22d775be03d97f8abd6f2177fdf3e3276dc2d815b684ff602febf04cca2acce26'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

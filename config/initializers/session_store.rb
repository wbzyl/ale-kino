# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ale-kino_session',
  :secret      => '5ebb2b4b40c225e1ff59d1b51ba149983e43b7c8de1768b3f09746c87728127b9a694ad9e0db06bb4e118bd42d27b5d4b5edaa38d478a928bfeef26f2fd5fc3d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

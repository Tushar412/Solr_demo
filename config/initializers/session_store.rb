# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_solr_demo_session',
  :secret      => 'd458065c3e54bd4dfbbe1c4911c4ad2fed5bdb636fdac75296b68e04d2805e0d97b4e77bf10235e477f808716a17c4fbef67409fe733ad23a43936605be0a8a7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

    if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_gig_app_api", same_site: :none, secure: true
    else
    Rails.application.config.session_store :cookie_store, key: "_gig_app_api"
    end

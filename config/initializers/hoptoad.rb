HoptoadNotifier.configure do |config|
  # Internal Errbit errors are stored locally, but we need
  # to set a dummy API key so that HoptoadNotifier doesn't complain.
  config.api_key = "---------"

  # Don't log error that causes 404 page\
  config.ignore_only = %w{
    ActiveRecord::RecordNotFound
    ActionController::RoutingError
    ActionController::InvalidAuthenticityToken
    CGI::Session::CookieStore::TamperedWithCookie
    ActionController::UnknownAction
    AbstractController::ActionNotFound
    ActionView::MissingTemplate
    Timeout::Error
    Net::HTTPBadResponse
    WebuiMatcher::InvalidRequestFormat
    ActionController::UnknownFormat
    ActivXML::Transport::NotFoundError
    Mongoid::Errors::DocumentNotFound
  }
end


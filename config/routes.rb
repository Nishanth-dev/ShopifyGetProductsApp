Rails.application.routes.draw do
  get 'webhooks/carts_update'
  #post 'webhooks/carts_update'

  # post 'custom_webhooks/carts_update'
  # get 'custom_webhooks/receive'

  get 'webhooks/receive'
  # get 'webhooks/Test_WebhookCall'

  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

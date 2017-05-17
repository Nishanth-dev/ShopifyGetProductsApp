class CustomWebhooksController < ApplicationController
  #include ShopifyApp::WebhookVerification

  def carts_update
    puts "In carts_update" 
    CartsUpdateJob.perform(shopify_domain: shop_domain, webhook: params)
    head :ok
  end


  def receive
    puts "In Receiver"
    return "My name is Nishanth";
  end
end

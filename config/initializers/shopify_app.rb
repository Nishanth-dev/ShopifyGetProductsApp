ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "2c9f3b860a66f9a9bb07bb373d785c04"
  config.secret = "e69bddcc7a16341f840dc0b2249be4bc"
  # config.api_key = "8bf274ab5ab278b5e44b65a7dac683b4"
  # config.secret = "bcb758e81127b189e251c888cad04ce1"
  config.scope = "read_orders, read_products,write_products"
  config.embedded_app = true
  
 
  config.webhooks = [
    {topic: 'carts/update', address: 'https://getproducts-app.herokuapp.com/webhooks/carts_update', format: 'json'},
    {topic: 'carts/update', address: 'https://getproducts-app.herokuapp.com/CustomWebhooks/carts_update', format: 'json'},
  ]
end


# E:\SparxHokey\Shopify Apps\A_Installer apps\getproducts-app>rails g shopify_app:add_webhook -t carts/update -a https://getproducts-app.herokuapp.com/webhooks/carts_update
#       invoke  test_unit
#       create    test/jobs/carts_update_job_test.rb
#       insert  config/initializers/shopify_app.rb
#       insert  config/initializers/shopify_app.rb
#       create  app/jobs/carts_update_job.rb
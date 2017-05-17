# class WebhooksController < ApplicationController
#   def carts_update
#     puts "In carts_update"
#   end

#   def Test_WebhookCall
#     puts "In Test_WebhookCall"
#   end
# end

class WebhooksController < ShopifyApp::WebhooksController
  include ShopifyApp::WebhookVerification

  def receive
    puts "In receive"
    params.try(:permit!)
    job_args = {shop_domain: shop_domain, webhook: webhook_params.to_h}
    puts job_args
    head :ok
  end

  def carts_update
    puts "In carts_update"
    head :ok
  end

  def Test_WebhookCall
    puts "In Test_WebhookCall"
    head :ok
  end


  private

    def webhook_params
      params.except(:controller, :action, :type)
    end

    def webhook_job_klass
      "#{webhook_type.classify}Job".safe_constantize or raise ShopifyApp::MissingWebhookJobError
    end

    def webhook_type
      params[:type]
    end
    
end

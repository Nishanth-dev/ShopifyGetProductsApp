class CartsUpdateJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    puts "In CartsUpdateJob"
    shop = Shop.find_by(shopify_domain: shop_domain)

    shop.with_shopify_session do
    end
  end
end

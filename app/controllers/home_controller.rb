class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end

	def createorder
			# @shop = ShopifyAPI::Shop.current
		#  @order = ShopifyAPI::Order.new
		#  # @order.app_id = '1'
		#  orders = {'app_id' => 1}
		# ss =  "https://#{@shop_session.url}/admin/orders.json"
		# puts ss 
		# res = Net::HTTP.get(URI.parse(ss))

		# puts 'dd'*20
		# puts res
		# puts 'dd'*20

			# products = ShopifyAPI::Product.first
			# order = ShopifyAPI::Order.new(
			# :line_item => [
			# ShopifyAPI::LineItem.new(
			#   :quantity => 1,
			#   :variant_id => products.variants.first.id
			# )
			# ]
			# )
			# p order
			# order.save!
	puts "dddddddddd"*2
			new_order = ShopifyAPI::Order.create(
			  :line_items => [
			    ShopifyAPI::LineItem.new(
			      :quantity => params[:quantity],
			      :variant_id => 21371175600207
			    )
			  ]
			)
			new_order.billing_address = ShopifyAPI::BillingAddress.new(:name => 'ganesh', :zip => '600000')
			new_order.email = 'ganesh@kdlf.ii'
			new_order.updated_at = Time.now
			new_order.total_price = '22.00'
			# new_order.to_json
			puts new_order
			if new_order.save
				puts 'ddd'
			else
				puts 'error'
			end
	puts "dddddddddd"*2
	end

	def createproduct
		new_product = ShopifyAPI::Product.new
		new_product.title = "Burton Custom Freestlye 152"
		new_product.product_type = "Snowboard"
		new_product.vendor = "Burton"
		new_product.save
	end

end

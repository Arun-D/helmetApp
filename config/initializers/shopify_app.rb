ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "8592563f9846aad48daa38b8fdf2c493"
  config.secret = "6a492fc4c5aa8d7957adffe6780c6d7e"
  # config.api_key = "533663233af59fc1c6522770ffc2dd4d"
  # config.secret = "7df1d332586e2e8ea4dde8a86e7f3bea"
  # config.scope = "read_products" # Consult this page for more scope options:
  
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.scope = "write_draft_orders, read_collection_listings, write_orders, read_orders, write_products, read_products,read_script_tags, write_script_tags, write_shipping"
  config.embedded_app = true
  config.webhooks = [
    # {topic: 'carts/update', address: 'https://example.com/webhooks/carts_update', format: 'json'},
    # {topic: 'carts/update', address: 'https://339588f6.ngrok.io/webhooks/carts_update', format: 'json'},
    # {topic: 'cart/update', address: 'https://smkhelmets.myshopify.com/webhook/carts_update', format: 'json'},
    # {topic: 'carts/update', address: 'https://5f124105.ngrok.io/webhooks/carts_update', format: 'json'}
    # {topic: 'carts/update', address: 'https://3735d24a.ngrok.io/webhooks/carts_update', format: 'json'}
    # {topic: 'carts/update', address: 'https://339588f6.ngrok.io/webhooks/carts_update', format: 'json'}
    {topic: 'carts/update', address: 'https://0e111873.ngrok.io/webhooks/carts_update', format: 'json'}

  ]
  # config.webhook_jobs_namespace = 'shopify/webhooks'
  config.after_authenticate_job = false
  config.session_repository = Shop
end

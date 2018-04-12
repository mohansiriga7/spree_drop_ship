Spree::Core::Engine.add_routes do

  namespace :admin do
    resource :drop_ship_settings
    resources :shipments
    resources :suppliers
    spree_path = Rails.application.routes.url_helpers.try(:spree_path, trailing_slash: true) || '/'
    get "/store", to: redirect((spree_path + Spree.admin_path + '/sub_orders').gsub('//', '/')), as: :admin
  end
end

Rails.application.routes.draw do
  get "sitemap", to: "sitemap#index", as: :sitemap_xml, format: "xml"

  mount Cms::Engine => '/'
  mount Ckeditor::Engine => '/ckeditor'
  root as: "root_without_locale", to: "application#root_without_locale"
  get "admin(/*admin_path)", to: redirect{|params| "/#{ I18n.default_locale}/admin/#{params[:admin_path]}"}

  localized do
    controller "forms" do
      post "contact_request"
    end

    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    devise_for :users, module: "users", path: "", path_names: {
        sign_in: "login",
        sign_out: 'logout',
    }


    controller :pages do
      root action: "index"
    end
  end



  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end
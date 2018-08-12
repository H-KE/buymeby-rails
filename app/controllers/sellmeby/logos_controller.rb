class Sellmeby::LogosController < ApiController
  before_action :authenticate_vendor!

  def upload
    current_vendor.update(logo: params[:logo])
  end
end

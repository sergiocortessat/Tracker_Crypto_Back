class CryptosController < SecuredController
  skip_before_action :authorize_request, only: %i[index show]
  def index
    cryptos = Crypto.all
    render json: cryptos
  end

  def show
    crypto = Crypto.find(params[:id])
    render json: crypto, include: [:user]
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def create
    crypto = Crypto.create!(crypto_params)
    render json: crypto, status: :created
  end

  def update
    crypto = Crypto.find(params[:id])
    crypto.update!(crypto_params)
    render json: crypto, status: :ok
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def destroy
    crypto = Crypto.find(params[:id])
    crypto.delete
    head :no_content
  end

  private

  def crypto_params
    params.permit(:name, :description, :sub)
  end
end

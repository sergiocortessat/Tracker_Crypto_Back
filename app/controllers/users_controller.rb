class UsersController < SecuredController
  skip_before_action :authorize_request, only: %i[index show]

  def index
    users = User.all
    render json: users, include: { coins: { include: { goals: { include: :measurements } } } }
  end

  def show
    user = User.find_by(sub: params[:id])
    render json: user, include: { coins: { include: { goals: { include: :measurements } } } }
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def create
    user = User.create!(user_params)
    render json: user, status: :created
  end

  private

  def user_params
    params.permit(:sub, :email, :name, :given_name, :family_name, :picture)
  end
end

class GoalsController < SecuredController
  skip_before_action :authorize_request, only: %i[index show]
  def index
    goals = Goal.all
    render json: goals, include: %i[measurements]
  end

  def show
    # Goal find where sub is true
    goal = Goal.where(sub: params[:id])
    # goal = Goal.find_by(sub: params[:id])
    render json: goal, include: %i[measurements]
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def create
    goal = Goal.create!(goal_params)
    render json: goal, status: :created
  end

  def update
    goal = Goal.find(params[:id])
    goal.update!(goal_params)
    render json: goal, status: :ok
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def destroy
    goal = Goal.find_by(coin_id: params[:id])
    goal.delete
    head :no_content
  end

  private

  def goal_params
    params.permit(:goal, :coin_id, :sub)
  end
end

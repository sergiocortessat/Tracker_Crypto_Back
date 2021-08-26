class GoalsController < SecuredController
  skip_before_action :authorize_request, only: %i[index show]
  def index
    goals = Goal.all
    render json: goals, include: [:measurements]
  end

  def show
    goal = Goal.find(params[:id])
    render json: goal, include: [:measurements]
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
    goal = Goal.find(params[:id])
    goal.delete
    head :no_content
  end

  private

  def goal_params
    params.permit(:goal, :user_id, :coin_id, :sub)
  end
end

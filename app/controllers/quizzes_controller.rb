# frozen_string_literal: true

class QuizzesController < ProtectedController
  before_action :set_quiz, only: %i[show update destroy]
  skip_before_action :authenticate, only: %i[index show]

  # GET /quizzes
  def index
    @quizzes = Quiz.all

    render json: @quizzes, each_serializer: QuizTopicsSerializer, root: 'quiz_topics'
  end

  # GET /my_topics
  def my_topics
    @quizzes = current_user.quizzes.all

    render json: @quizzes
  end

  # GET /quizzes/1
  def show
    render json: @quiz
  end

  # POST /quizzes
  def create
    @quiz = current_user.quizzes.build(quiz_params)

    if @quiz.save
      render json: @quiz, status: :created, location: @quiz
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quizzes/1
  def update
    if @quiz.update(quiz_params)
      render json: @quiz
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quizzes/1
  def destroy
    @quiz.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def quiz_params
    params.require(:quiz).permit(:topic, :user_id, quiz_banks_attributes:
                                %i[id questions correct_ans incorrect_ans1
                                   incorrect_ans2 incorrect_ans3])
  end
end

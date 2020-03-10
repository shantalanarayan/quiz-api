# frozen_string_literal: true

class QuizBanksController < ProtectedController
  before_action :set_quiz_bank, only: %i[show update destroy]

  # GET /quiz_banks
  def index
    @quiz_banks = QuizBank.all

    render json: @quiz_banks
  end

  # GET /quiz_banks/1
  def show
    render json: @quiz_bank
  end

  # POST /quiz_banks
  def create
    @quiz_bank = current_user.quiz_banks.build(quiz_params)

    if @quiz_bank.save
      render json: @quiz_bank, status: :created, location: @quiz_bank
    else
      render json: @quiz_bank.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quiz_banks/1
  def update
    if @quiz_bank.update(quiz_bank_params)
      render json: @quiz_bank
    else
      render json: @quiz_bank.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quiz_banks/1
  def destroy
    @quiz_bank.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quiz_bank
    @quiz_bank = current_user.quiz_banks.build(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def quiz_bank_params
    params.require(:quiz_bank).permit(:questions, :correct_ans, :incorrect_ans1,
                                      :incorrect_ans2, :incorrect_ans3)
  end
end

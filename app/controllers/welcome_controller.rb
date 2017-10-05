class WelcomeController < ApplicationController
  def index
    @cats = Cat.all
    @todos = Todo.all
    @users = User.all
  end

  def new
    @todo = Todo.new
  end

  def create
    todo = Todo.new(tasks: params[:todo][:tasks], finished: params[:todo][:finished])
    todo.save!

    redirect_to welcome_path
  end
end

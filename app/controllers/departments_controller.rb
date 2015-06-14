class DepartmentsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def show
    @dept = Department.find(params["id"])
  end

  def index
    @departments = Department.all
  end
end

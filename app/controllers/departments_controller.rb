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
    if params[:search_query].present?
      @departments = Department.search(params[:search_query]).records
    else
      @departments = Department.all
    end

  end
end

class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[edit update show destroy]
  skip_before_action :verify_authenticity_token
  layout "portfolio"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render json: { status: "updated" }
  end

  def new
   @portfolio_items = Portfolio.new
   3.times { @portfolio_items.technologies.build }
  end

  def edit
  end

  def update
    @portfolio_items = Portfolio.find(portfolio_params)
    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: "The record successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def create
    @portfolio_items = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Your post is now live.'}
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @portfolio_items.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Record was removed '}
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name])
  end

  def set_portfolio_item
    @portfolio_items = Portfolio.find(params[:id])
  end
end

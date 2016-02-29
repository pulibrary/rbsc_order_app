class OrderHistoriesController < ApplicationController
  before_action :set_order_history, only: [:show, :edit, :update, :destroy]

  # GET /order_histories
  # GET /order_histories.json
  def index
    @order_histories = OrderHistory.all
  end

  # GET /order_histories/1
  # GET /order_histories/1.json
  def show
  end

  # GET /order_histories/new
  def new
    @order_history = OrderHistory.new
  end

  # GET /order_histories/1/edit
  def edit
  end

  # POST /order_histories
  # POST /order_histories.json
  def create
    @order_history = OrderHistory.new(order_history_params)

    respond_to do |format|
      if @order_history.save
        format.html { redirect_to @order_history, notice: 'Order history was successfully created.' }
        format.json { render :show, status: :created, location: @order_history }
      else
        format.html { render :new }
        format.json { render json: @order_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_histories/1
  # PATCH/PUT /order_histories/1.json
  def update
    respond_to do |format|
      if @order_history.update(order_history_params)
        format.html { redirect_to @order_history, notice: 'Order history was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_history }
      else
        format.html { render :edit }
        format.json { render json: @order_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_histories/1
  # DELETE /order_histories/1.json
  def destroy
    @order_history.destroy
    respond_to do |format|
      format.html { redirect_to order_histories_url, notice: 'Order history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_history
      @order_history = OrderHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_history_params
      params.require(:order_history).permit(:id, :order_id, :submitted, :last_update, :memo, :shipping_fname, :shipping_lname, :shipping_org, :shipping_address1, :shipping_address2, :shipping_city, :shipping_postal_code, :shipping_country, :shipping_phone, :shipping_email, :payment_fname, :payment_lname, :payment_org, :payment_address1, :payment_address2, :payment_city, :payment_postal_code, :payment_country, :payment_phone, :payment_email, :shipping_method, :shipping_cost, :shipping_cost, :patron_netid, :patron_aeonid, :gateway_confirm_num, :agree_to_terms, :amt_paid, :amt_paid, :amt_due, :amt_due, :discount_percent, :patron_ip_address, :status_id, :staff_id)
    end
end

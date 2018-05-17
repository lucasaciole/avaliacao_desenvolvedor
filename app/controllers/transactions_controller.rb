class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = Transaction.all
    @total_sum = @transactions.reduce(0) { |sum, t| sum + t.total_price }
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # GET /transactions/1/edit
  def edit
  end

  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)
    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # POST /transactions/import
  def import
    if params[:file].present?
      file = params[:file].read.force_encoding("UTF-8").split("\n")
      file.shift

      file.each do |line|
        data = line.split("\t")
        provider = Provider.where(address: data[4]).find_or_create_by(name: data[5])
        if provider.persisted?
          t = Transaction.create!  do |t|
            t.buyer        = data[0]
            t.description  = data[1]
            t.unit_price   = data[2]
            t.quantity     = data[3]
            t.provider     = provider
          end
        end
      end

      respond_to do |format|
        format.html { redirect_to transactions_url, notice: 'Transactions successfully imported.' }
        format.json { head :accepted }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:unit_price, :description, :quantity, :buyer, :provider_id)
    end
end

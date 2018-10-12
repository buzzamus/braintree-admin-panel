class TransactionsController < ApplicationController
  before_action :gateway

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transactions = gateway.transaction.search do |search|
      search.created_at.between("12/17/2015 17:00", "12/17/2018 17:00")
    end
    @transactions.each do |transaction|
      @transaction = Transaction.create(txn_id: transaction.id,
        amount: transaction.amount,
        status: transaction.status,
        payment_instrument_type: transaction.payment_instrument_type,
        recurring: transaction.recurring,
        date: transaction.created_at)
    end
    redirect_to root_path
  end

  def destroy
    @transactions = Transaction.all
    @transactions.delete_all
    redirect_to root_path
  end
end

require 'active_merchant'

class ProcessOrdersController < ApplicationController
	before_filter :login_required, :check_if_cart_is_empty

	expose(:order) {current_order}

	def show
		
	end

	def update
    set_order_status_to_charged(current_order.id)
    redirect_to receipts_url
	end

	private

	def charge_credit_card
		ActiveMerchant::Billing::Base.mode = :test

		credit_card = ActiveMerchant::Billing::CreditCard.new(
			:number     => '4111111111111111',
			:month      => '8',
			:year       => '2009',
			:first_name => 'Tobias',
			:last_name  => 'Luetke',
			:verification_value  => '123'
		)

		if credit_card.valid?
			# Create a gateway object to the TrustCommerce service
			gateway = ActiveMerchant::Billing::new(
				:login    => 'TestMerchant',
				:password => 'password'
			)

			# Authorize for $10 dollars (1000 cents)
			response = gateway.authorize(1000, credit_card)

			if response.success?
				# Capture the money
				gateway.capture(1000, response.authorization)
			else
				raise StandardError, response.message
			end
		end
	end

	def check_if_cart_is_empty
	  if order.order_items.nil? || order.order_items.length == 0
			redirect_to cart_empty_url
		end
  end

  def set_order_status_to_charged(order_id)
    order = Order.find(order_id)
    order.order_status = OrderStatus.find_by_name('Charged')
    order.save
  end
end

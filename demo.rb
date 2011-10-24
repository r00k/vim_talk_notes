class User < ActiveRecord::Base
  def set_up_subscription_in_braintree!
    create_customer_in_braintree && create_subscription_in_braintree
  end

  def create_customer_in_braintree
    customer_result = BraintreeWrapper.create_customer_for(self)
    if customer_result.success?
      self.braintree_credit_card_token = customer_result.credit_card_token
    else
      add_charging_error
      false
    end
  end

  def create_subscription_in_braintree
    subscription_result = BraintreeWrapper.create_subscription_for(self)

    if subscription_result.success?
      self.braintree_subscription_token = subscription_result.subscription_token
    else
      add_charging_error
      false
    end
  end

  def add_charging_error
    errors.add(:base, "We couldn't charge your credit card")
  end
end

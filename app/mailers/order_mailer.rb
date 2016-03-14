class OrderMailer < ApplicationMailer
  default from: 'huycan@coderrestaurcant.com'

  def confirm_order customer_email, customer_name, order_url
    @name = customer_name
    @url = order_url

    mail to: customer_email, subject: 'CoderRestaurant confirms your order'
  end
end

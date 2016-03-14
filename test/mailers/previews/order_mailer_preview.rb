# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def confirm_order_preview
    OrderMailer.confirm_order 'abc@xyz.com', 'Huy', 'https://www.google.com'
  end

  def notify_owner_preview
    OrderMailer.notify_owner
  end
end

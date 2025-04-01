Rails.application.routes.draw do
  get 'dashboard/index'
  get 'dashboard/send_reminder/:id', to: 'dashboard#send_reminder', as: 'send_reminder'
  get 'dashboard/send_confirmation/:id', to: 'dashboard#send_confirmation', as: 'send_confirmation'
  get 'bookings/options/:id', to: 'bookings#options', as: 'booking_options'
end

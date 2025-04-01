class DashboardController < ApplicationController
  def index
    @bookings = bookings
  end

  def send_reminder
    booking = find_booking(params[:id])
    ApplicationMailer.send_reminder(booking).deliver_now
    redirect_to dashboard_index_path, notice: "Email de relance envoyé"
  end

  def send_confirmation
    booking = find_booking(params[:id])
    ApplicationMailer.send_confirmation(booking).deliver_now
    redirect_to dashboard_index_path, notice: "Email de confirmation envoyé"
  end 

  private

  def bookings
    [
      Booking.new(id: 1, starts_on: Date.today, ends_on: Date.today + 3, car: "Peugeot 208", owner: "Jean", location: "Paris", price: 100, image_url: "peugeot_208.jpg"),
      Booking.new(id: 2, starts_on: Date.today + 5, ends_on: Date.today + 7, car: "Tesla", owner: "Alice", location: "Lyon", price: 300, image_url: "tesla_model_3.jpg"),
      Booking.new(id: 3, starts_on: Date.today + 10, ends_on: Date.today + 14, car: "BMW X5", owner: "Bob", location: "Marseille", price: 450, image_url: "bmw_x5.jpg"),
      Booking.new(id: 4, starts_on: Date.today + 3, ends_on: Date.today + 5, car: "Audi A4", owner: "Claire", location: "Nice", price: 200, image_url: "audi_a4.jpg"),
      Booking.new(id: 5, starts_on: Date.today + 7, ends_on: Date.today + 10, car: "Mercedes Benz", owner: "David", location: "Cannes", price: 600, image_url: "mercedes_benz.jpg"),
      Booking.new(id: 6, starts_on: Date.today + 14, ends_on: Date.today + 20, car: "Volkswagen Golf", owner: "Eva", location: "Bordeaux", price: 150, image_url: "volkswagen_golf.jpg")
    ]
  end
  

  def find_booking(id)
    bookings.find { |b| b.id.to_s == id.to_s }
  end 
  
end

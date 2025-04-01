class BookingsController < ApplicationController
    def options
      @booking = find_booking(params[:id])
    end
  
    private
  
    def find_booking(id)
      bookings.find { |b| b.id.to_s == id.to_s }
    end
  
    def bookings
      [
        Booking.new(id: 1, car: "Peugeot 208", owner: "Jean", starts_on: Date.today, ends_on: Date.today + 3, location: "Paris", price: 100, image_url: "peugeot_208.jpg"),
        Booking.new(id: 2, car: "Tesla", owner: "Alice", starts_on: Date.today + 5, ends_on: Date.today + 7, location: "Lyon", price: 300, image_url: "tesla_model_3.jpg")
      ]
    end
  end
  
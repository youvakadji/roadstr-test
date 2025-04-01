class Booking
  include ActiveModel::Model

  attr_accessor :id, :starts_on, :ends_on, :car, :owner, :location, :price, :delivery_option, :insurance_option, :image_url

  DELIVERY_OPTIONS = {
    "Sur place" => 0,
    "Livraison à domicile" => 50,
    "Point relais" => 30
  }

  INSURANCE_OPTIONS = {
    "Standard" => 0,
    "Premium (meilleure garantie)" => 100
  }

  def total_price
    price + DELIVERY_OPTIONS[delivery_option].to_f + INSURANCE_OPTIONS[insurance_option].to_f
  end
end

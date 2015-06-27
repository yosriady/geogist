class Gist < ActiveRecord::Base
  before_validation :generate_hex, on: :create

  def generate_hex
    begin
      self.hex = SecureRandom.hex.to_s
    end while self.class.exists?(hex: hex)
  end
end

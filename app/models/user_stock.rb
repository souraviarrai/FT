class UserStock < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  def self.check_user_stock_db(user,stock)
    find_by(user:user,stock:stock)
  end
end

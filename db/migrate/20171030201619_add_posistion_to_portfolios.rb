class AddPosistionToPortfolios < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :posistion, :integer
  end
end

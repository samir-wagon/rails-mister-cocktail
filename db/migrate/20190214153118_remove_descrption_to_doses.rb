class RemoveDescrptionToDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :descrption
  end
end

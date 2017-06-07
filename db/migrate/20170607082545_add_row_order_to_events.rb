class AddRowOrderToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :row_order, :integer
    # 因为得会会改用这个 row_order 来排序，而数据库已经有的 events 会是 nil
    Event.find_each do |e|
      e.update( :row_order_position => :last )
    end
    add_index :events, :row_order
  end
end

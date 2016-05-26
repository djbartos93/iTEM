class AddTypeparamsToCables < ActiveRecord::Migration
  def change
    add_reference :cables, :type, index: true
  end
end

class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|

      t.belongs_to :attendee, index: true
      t.belongs_to :event, index: true
      
      t.string :stripe_customer_id
      

      t.timestamps
    end
  end
end

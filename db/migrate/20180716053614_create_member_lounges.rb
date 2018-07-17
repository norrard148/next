class CreateMemberLounges < ActiveRecord::Migration[5.0]
  def change
    create_table :member_lounges do |t|

      t.timestamps
    end
  end
end

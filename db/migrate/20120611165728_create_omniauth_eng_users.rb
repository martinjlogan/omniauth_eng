class CreateOmniauthEngUsers < ActiveRecord::Migration
  def change
    create_table :omniauth_eng_users do |t|
      t.string :uid
      t.string :name
      t.string :provider
      t.boolean :admin

      t.timestamps
    end
  end
end

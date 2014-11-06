class AddLinkedInTokenPublicUrlPictureUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :linkedin_token, :text
    add_column :users, :linkedin_picture_url, :text
    add_column :users, :linkedin_public_profile_url, :text
  end
end

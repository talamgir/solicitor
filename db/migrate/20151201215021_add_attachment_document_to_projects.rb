class AddAttachmentDocumentToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :projects, :document
  end
end

class RemovePaperclipFromProjects < ActiveRecord::Migration
  def change
  	remove_attachment :projects, :pdf
  end
end

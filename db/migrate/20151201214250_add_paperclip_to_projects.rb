class AddPaperclipToProjects < ActiveRecord::Migration
  def change
  	add_attachment :projects, :pdf
  end
end

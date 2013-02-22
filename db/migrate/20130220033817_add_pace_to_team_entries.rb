class AddPaceToTeamEntries < ActiveRecord::Migration
  def change
    add_column :team_entries, :pace, :string
  end
end

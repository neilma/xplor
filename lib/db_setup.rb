
# frozen_string_literal: true

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

ActiveRecord::Schema.define do
  create_table :questions do |table|
    table.column :theme, :string
    table.column :question_type, :string
    table.column :text, :string
    table.column :survey_id, :integer
  end

  create_table :answers do |table|
    table.column :submitted_at, :datetime
    table.column :value, :text
    table.column :question_id, :integer
    table.column :response_id, :integer
  end

  create_table :responses do |table|
    table.column :participant_id, :integer
    table.column :submitted_at, :datetime
    table.column :survey_id, :integer
  end

  create_table :participants do |table|
    table.column :email, :string
    table.column :employee_id, :string
  end

  create_table :surveys do |table|
    table.column :name, :string
    table.column :created_at, :datetime
  end
end

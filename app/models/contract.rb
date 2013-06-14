# == Schema Information
#
# Table name: contracts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  company    :string(255)
#  start_date :date
#  end_date   :date
#  articles   :string(255)
#  text       :text
#  users      :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contract < ActiveRecord::Base
  attr_accessible :articles, :company, :end_date, :name, :start_date, :text, :users
  
  belongs_to :user

  validates :name, presence: true
  validates :company, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true

  default_scope order: 'contracts.created_at DESC'
end

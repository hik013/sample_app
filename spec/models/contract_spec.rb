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

require 'spec_helper'

describe Contract do
  pending "add some examples to (or delete) #{__FILE__}"
end

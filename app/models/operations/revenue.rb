# frozen_string_literal: true

module Operations
  # {Revenue} is a income statement operation
  class Revenue < Operation
    belongs_to :member
  end
end

# == Schema Information
# Schema version: 20200316132213
#
# Table name: revenues
#
#  id             :integer          not null, primary key
#  code           :integer          not null
#  currency_id    :string(255)      not null
#  member_id      :integer
#  reference_type :string(255)
#  reference_id   :integer
#  debit          :decimal(32, 16)  default("0.0000000000000000"), not null
#  credit         :decimal(32, 16)  default("0.0000000000000000"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_revenues_on_currency_id                      (currency_id)
#  index_revenues_on_reference_type_and_reference_id  (reference_type,reference_id)
#

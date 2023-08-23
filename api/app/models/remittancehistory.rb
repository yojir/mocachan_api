class Remittancehistory < ApplicationRecord
  belongs_to :src, class_name: "User"
  belongs_to :dst, class_name: "User"
end

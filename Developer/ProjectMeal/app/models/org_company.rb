class OrgCompany < ApplicationRecord
	has_and_belong_to_many :org_contacts
	has_many :org_persons
    has_many :org_products
    belongs_to :typ_company, foreign_key:

end

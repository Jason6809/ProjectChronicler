class ContactsGrid
  include Datagrid

  scope do
    Contact
  end

  column(:id, header: "ID")
  column(:full_name, header: "Full Name")
  column(:phone_num, header: "Contact No.")
  column(:shop_name, header: "Shop Name")
  column(:ic_no, header: "IC No.")
  column(:temp, header: "Temp. (C)")
  column(:created_at, header: "Check-in")
end
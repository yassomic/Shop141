require 'spec_helper'

describe "payments/new" do
  before(:each) do
    assign(:payment, stub_model(Payment,
      :amount => 1.5,
      :transaction_id => "MyString"
    ).as_new_record)
  end

  it "renders new payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payments_path, "post" do
      assert_select "input#payment_amount[name=?]", "payment[amount]"
      assert_select "input#payment_transaction_id[name=?]", "payment[transaction_id]"
    end
  end
end

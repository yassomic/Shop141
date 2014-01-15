require 'spec_helper'

describe "payments/edit" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :amount => 1.5,
      :transaction_id => "MyString"
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do
      assert_select "input#payment_amount[name=?]", "payment[amount]"
      assert_select "input#payment_transaction_id[name=?]", "payment[transaction_id]"
    end
  end
end

require 'spec_helper'

describe "payments/index" do
  before(:each) do
    assign(:payments, [
      stub_model(Payment,
        :amount => 1.5,
        :transaction_id => "Transaction"
      ),
      stub_model(Payment,
        :amount => 1.5,
        :transaction_id => "Transaction"
      )
    ])
  end

  it "renders a list of payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Transaction".to_s, :count => 2
  end
end

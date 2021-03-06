require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :description => "MyText",
      :photo => "",
      :price => "9.99",
      :is_advertisied => false,
      :user => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_photo[name=?]", "item[photo]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_is_advertisied[name=?]", "item[is_advertisied]"

      assert_select "input#item_user_id[name=?]", "item[user_id]"
    end
  end
end

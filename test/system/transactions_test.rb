require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "creating a Transaction" do
    visit transactions_url
    click_on "New Transaction"

    fill_in "Buyer", with: @transaction.buyer
    fill_in "Description", with: @transaction.description
    fill_in "Quantity", with: @transaction.quantity
    fill_in "Unit_Price", with: @transaction.unit_price
    select "Provider1"
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "updating a Transaction" do
    visit transactions_url
    click_on "Edit", match: :first

    fill_in "Buyer", with: @transaction.buyer
    fill_in "Description", with: @transaction.description
    fill_in "Quantity", with: @transaction.quantity
    fill_in "Unit_Price", with: @transaction.unit_price
    select "Provider2"
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Transaction" do
    visit transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transaction was successfully destroyed"
  end

  test "importing some Transactions" do
    @file = fixture_file_upload('files/sample.txt','text/plain')

    visit transactions_url

    click_on "Import Transactions", match: :first
    attach_file 'file', @file.path
    click_on "Send", match: :first

    assert_text "Transactions successfully imported."
  end
end

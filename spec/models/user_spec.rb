require 'rails_helper'

describe User do
  it "is valid with a username, password, firstname, lastname and email" do
    user = User.new(username: "tsamb",
      password: "password",
      first_name: "Sam",
      last_name: "Blackman",
      email: "sam@example.com")
    expect(user).to be_valid
  end

  it "is invalid without a username"
  it "is invalid without a password"
  it "is invalid without an email address"
  it "is invalid with a duplicate email address"
  it "is invalid with a duplicate username"
  it "returns a contact's full name as a string"
end

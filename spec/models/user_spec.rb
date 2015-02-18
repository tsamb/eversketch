require 'rails_helper'

describe User do
  it "is valid with a username, password, firstname, lastname and email"
  it "is invalid without a username"
  it "is invalid without a password"
  it "is invalid without an email address"
  it "is invalid with a duplicate email address"
  it "is invalid with a duplicate username"
  it "returns a contact's full name as a string"
end

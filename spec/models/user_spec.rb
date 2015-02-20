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

  it "is invalid without a username" do
    user = User.new(username: nil,
      password: "password",
      first_name: "Sam",
      last_name: "Blackman",
      email: "sam@example.com")
    expect(user).to_not be_valid
  end

  it "is invalid without a password" do
    user = User.new(username: "tsamb",
      password: nil,
      first_name: "Sam",
      last_name: "Blackman",
      email: "sam@example.com")
    expect(user).to_not be_valid
  end

  it "is invalid without an email address" do
    user = User.new(username: "tsamb",
      password: "password",
      first_name: "Sam",
      last_name: "Blackman",
      email: nil)
    expect(user).to_not be_valid
  end

  it "is invalid with a duplicate email address" do
    user = User.create(username: "tsamb",
      password: "password",
      first_name: "Sam",
      last_name: "Blackman",
      email: "sam@example.com")
    dup_user = User.new(username: "sammy",
      password: "password",
      first_name: "Sammy",
      last_name: "Sosa",
      email: "sam@example.com")
    expect(dup_user).to_not be_valid
  end

  it "is invalid with a duplicate username" do
    user = User.create(username: "tsamb",
      password: "password",
      first_name: "Sam",
      last_name: "Blackman",
      email: "sam@example.com")
    dup_user = User.new(username: "tsamb",
      password: "password",
      first_name: "Sammy",
      last_name: "Sosa",
      email: "sammysosa@example.com")
    expect(dup_user).to_not be_valid
  end

  it "returns a contact's full name as a string" do
    user = User.new(username: "tsamb",
      password: "password",
      first_name: "Sam",
      last_name: "Blackman",
      email: "sam@example.com")
    expect(user.name).to eq("Sam Blackman")
  end
end

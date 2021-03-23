require 'rails_helper'

RSpec.describe "root" do
  it "shows home page" do
    visit '/'

    expect(page).to have_content('SOON')
  end
end

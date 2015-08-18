require 'rails_helper'

describe "Adding new faces", js: true do
  let!(:standup) { FactoryGirl.create(:standup, ip_addresses_string: "127.0.0.1/32") }
  let(:timezone) { ActiveSupport::TimeZone.new(standup.time_zone_name) }
  let(:date_five_days) { timezone.now + 5.days }

  it "doesn't allow start dates in the past" do
    new_face_date = Date.new(1999, 1, 8).to_s

    login
    visit '/'

    click_on standup.title
    find(:css, '.new_face .icon-plus-sign').click
    find(:css, '[name="item[date]"]').click
    fill_in "item[date]", with: new_face_date

    find(:css, '[name="item[date]"]').click
    find(:css, '.next').click

    find_field("item[date]").value.should == new_face_date
    blur(page)

    click_on "Create New Face"

    page.should have_content "Please choose a date in present or future"
    #page.should have_content "Create New Face" #TODO: as of 2014-02-05, this captures a bug.
  end

  it "allows yesterday's new faces to post today" do
    new_face = FactoryGirl.create(:new_face, standup: standup)

    Timecop.travel(date_five_days) do
      login
      visit '/'

      click_on standup.title
      fill_in 'post[from]', with: 'Capybara'
      fill_in 'post[title]', with: 'Test Cases Rule'

      find('#create-post').click

      page.should_not have_content "Unable to create post"
      current_path.should_not eq(standup_items_path(standup))

      post = Post.last
      post.items.should =~ [new_face]
    end
  end
end

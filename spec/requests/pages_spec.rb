require 'spec_helper'

feature :Page, %q{
  Wikipedia Page API
} do

  background do
    create_list(:page, 101, :with_revision)
  end

  scenario 'Page count' do
    get "/pages/count", from: '20131019000000', to: '20131019235959'
    response.status.should eq(200)

    get "/pages/count", from: '19000101000000', to: '19000101235959'
    response.status.should eq(204)
  end

  scenario 'Page list' do
    get "/pages", from: '20131019000000', to: '20131019235959'
    response.status.should eq(200)

    get "/pages/count", from: '19000101000000', to: '19000101235959'
    response.status.should eq(204)
  end
end

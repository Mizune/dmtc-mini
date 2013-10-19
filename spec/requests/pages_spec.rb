require 'spec_helper'

feature :Page, %q{
  Wikipedia Page API
} do

  background do
    create_list(:page, 101, :with_revision)
    create(:page, :with_revision, page_is_redirect: 1)
  end

  scenario 'Page count' do
    get "/pages/count", from: '20131019000000', to: '20131019235959'
    response.status.should eq(200)
    body = JSON.parse( response.body )
    expect(body['count']).to eq 101

    get "/pages/count", from: '19000101000000', to: '19000101235959'
    response.status.should eq(204)
  end

  scenario 'Page list' do
    get "/pages", from: '20131019000000', to: '20131019235959'
    response.status.should eq(200)
    body = JSON.parse( response.body )
    expect(body['pages'].size).to eq 100

    first_res = body['pages'].first
    last_page = Page.last
    expect(first_res['id']).to            eq last_page.id
    expect(first_res['page_title']).to    eq last_page.page_title
    expect(first_res['page_len']).to      eq last_page.page_len
    expect(first_res['rev_user_text']).to eq last_page.rev_user_text
    expect(first_res['page_touched']).to  eq last_page.page_touched

    get "/pages/count", from: '19000101000000', to: '19000101235959'
    response.status.should eq(204)
  end
end

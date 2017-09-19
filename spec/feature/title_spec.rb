require 'spec_helper'

describe 'HomePage' do
  it 'タイトルの表示' do
    visit root_path
    expect(page).to have_title('Ruby on Rails Tutorial Sample App')
  end
end

describe 'HelpPage' do
  it 'タイトルの表示' do
    visit help_path
    expect(page).to have_title('Help | Ruby on Rails Tutorial Sample App')
  end
end

describe 'AboutPage' do
  it 'タイトルの表示' do
    visit about_path
    expect(page).to have_title('About | Ruby on Rails Tutorial Sample App')
  end
end

describe 'ContactPage' do
  it 'タイトルの表示' do
    visit contact_path
    expect(page).to have_title('Contact | Ruby on Rails Tutorial Sample App')
  end
end

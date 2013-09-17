require 'spec_helper'

describe "SqlPages" do

    let(:base_title) {"SQLHelp"}

    subject { page }

    describe "Home page" do
        before { visit root_path }

        it { should have_content('SQLHelp') }
        it { should have_title(full_title('')) }
        it { should_not have_title("| home") }
    end

    describe "Contact page" do
        before { visit contact_path }

        it { should have_content('Contact Us') }
        it { should have_title(full_title('Contact')) }
    end

    describe "About page" do
        before { visit about_path }

        it { should have_content('About') }
        it { should have_title(full_title('About')) }
    end

    describe "Help page" do
        before { visit help_path }

        it { should have_content('Help') }
        it { should have_title(full_title('Help')) }
    end
end

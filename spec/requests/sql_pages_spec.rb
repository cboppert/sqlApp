require 'spec_helper'

describe "SqlPages" do

    let(:base_title) {"SQLHelp"}

    describe "Home page" do
        it "should have the content 'SQLHelp'" do
            visit '/sql_pages/home'
            expect(page).to have_content('SQLHelp')
        end

        it "should have the title 'Home'" do
            visit '/sql_pages/home'
            expect(page).to have_title("#{base_title} | Home")
        end
    end

    describe "Contact page" do
        it "should have the content 'SQLHelp | Contact Us'" do
            visit '/sql_pages/contact'
            expect(page).to have_content('SQLHelp | Contact Us')
        end

        it "should have the title 'Contact'" do
            visit '/sql_pages/contact'
            expect(page).to have_title("#{base_title} | Contact")
        end
    end

    describe "About page" do
        it "should have the content 'SQLHelp | About'" do
            visit '/sql_pages/about'
            expect(page).to have_content('SQLHelp | About')
        end

        it "should have the title 'About'" do
            visit '/sql_pages/about'
            expect(page).to have_title("#{base_title} | About")
        end
    end
     
end

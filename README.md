# JUNGLE

A mini e-commerce application built with Rails 4.2. for learning purpose

## FUNCTIONALITIES
* Soldout Badge: When a product has 0 quantity, a sold out badge should be displayed on the product list page
* Admin users can list and create new categories, Admins can add new products using the new category
* Create account: As a Visitor I can go to the registration page from any page in order to create an account
* Order Details Page: The order page contains items, their image, name, description, quantities and line item totals
* Email Receipt: The e-mail content should be (minimally) formatted with HTML
* Product Rating: As a visitor I can view the overall rating of products as I browse the catalog, and I can view the list of ratings and reviews when viewing the product detail

## SETUP
1. Clone this repository by `git clone git@github.com:ChristinaHsu88/jungle-rails.git`
2. Go to the directory by` cd jungle-rails`
2. Run `bundle install` to install dependencies
    * make sure ruby version is 2.3.0. If not, you can run `rvm use 2.3.0`
    * Mac OSX issue with imagemagick:
      Run `brew unlink imagemagick` and then `brew install imagemagick@6 && brew link imagemagick@6 --force`to resolve the installation issue.
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
    * Run `postgres -D /usr/local/var/postgres` in command line if encounter DB connection isse.
6. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing
Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

## TECK STACK
* Ruby
* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## SCREENSHOTS

!["Screenshot of single user page"](https://github.com/ChristinaHsu88/)

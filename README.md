This is image sharing web application developed in Ruby on Rails.
Users can create their account and share their albums and photos online, where other users can login and browse all albums and photos.

## Please follow below steps to clone and rub this project
**1. Ruby Version Manager**
```
\curl -sSL https://get.rvm.io | bash
```
   Please go through [document](https://rvm.io/rvm/install)

**2. Ruby**

  This project using ruby version 2.3.7. Install ruby using below command.

```
Ex: rvm install 2.3.7
```
  Please feel free to change version on ruby-version file/gemfile. Please go through [document](https://rvm.io/rubies/installing) for more help on installing ruby.

**3. Clone github repository**
```
git clone git@github.com:madhusudhan518/ImageShare.git
```

**4. Go to Project root folder**

change directory to project root folder
```
cd ImageShare
```
As soon we enter into project directory gemset will created automatically as we specified ruby version and ruby gemset in project root path in files .ruby-version and .ruby-gemset.

**4. Bundler**
  Install Bundler
  ```
  gem install bundler
  ```
  Specify your dependencies in a Gemfile in your project's root like rails version and ruby version etc.
  Then run bundle install
  ```
  bundle
  ```
  or
  ```
  bundle install
  ```
  or
  ```
  Bundler
  ```
  Above command will install all of the required gems from your specified sources.

**5. Run Migrations**
```
bin/rails db:migrate RAILS_ENV=development
```
It will create tables and its columns in databased based on migrations in `db/migrate` folder

You can check all the tables and its columns in `schema.rb` file

**5. Run rails server**
```
rails s
```
 It will start rails server and listen at 3000 port as default.
 Open browser and type url
 ```
 http://localhost:3000
 ```
 or
 ```
 http://127.0.0.1:3000
 ```

 If you wan to run server at different port, we require `-p` option
 ```
 rails s -p [desired-port-number]
 ```

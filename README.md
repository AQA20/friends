# README

This is a simple app called "Friends" where you can sign up to the app and CURD a fried to/from your
friends list, each friend has a first name, last name, email, phone, photo & twitter(optional).

The app include CURD, Authentication(devise), Concerns(used for pagination), 
Active record association (one to many), partials, basic validations, css and bootstrap for designing.


Follow the following steps to start the app locally (The app is not configured for production):



Install sqlLite3 If you don't already have it

`apt-get install libsqlite3-dev

git clone https://github.com/AQA20/friends.git

cd friends

bundle install

rails s`

Then login with this test user which has a list of friends so you can test the app

`email: 'william@test.com'
password: '2qaGq5EM56nY'`


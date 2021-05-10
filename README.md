# README
## Candidates and their tasks
* Ruby version: ruby 2.7.1
* Rails version: Rails 6.1.3.2
* Clone this repository with the following command in a folder you desire
git clone 
* Configuration and start the server
Navigate to your folder and run the following commands;

bundle install
rails db:create
rails db:migrate
rails db:seed

rails s

* Database
PostgreSQL 12.5

* Solution
Created three models
    - Candidate
    - Assignment
    - Task
Connected them with a has_many through relation and added nested form fields to attach multiple candidates on a task through an assignment.

*Extra
I first thought nested form fields weren't neccessary so lost a little time trying to refactor, But eventually it turned out it was way more efficient so had to switch it all back but it turned out as it should.
There's no styling included.


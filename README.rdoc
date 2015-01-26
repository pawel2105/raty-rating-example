Instructions
============

This is a demo repository for [this raty rating tutorial](http://paweljaniak.co.za/2013/07/25/5-star-ratings-with-rails/)

* Clone the repo: `git clone git@github.com:pawel2105/raty-rating-example.git`
* run `bundle install`
* Set up your database: `rake db:create db:migrate db:seed`
* start your server using `rails s`

You can add ratings as 3 different users. To rate as someone other than bob, append the name to the query string in the URL using `name=x`, for example:

    http://localhost:3000/comments/1?user=peter

From the seeds, the 3 available names are:

* peter
* bob
* susan
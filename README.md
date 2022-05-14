# README

The bones of this simple blog app were built using Ruby on Rails per the Rails Guide Getting Started project at: https://guides.rubyonrails.org/getting_started.html

I also went beyond the tutorial and added a header and styling by importing Bootstrap 5. 

Anyone can access this blog and create, edit or delete a post as well as add or delete a comment.

This was a good exercise to practice:
- setting up resourceful routing, models, controllers and views for Articles and Comments. 
- understanding and executing RESTful routes, HTTP requests and server responses.
- setting up database relationships between Articles and Comments tables and dependent relationships, which is important if you delete an article - all corresponding comments should also be deleted. 

View live at (Heroku takes ~20 seconds to load the server): https://powerful-chamber-58967.herokuapp.com/

Home page screenshot: ![screenshot](/Screenshot.png![alt](https://link)?raw=true "")



##### Prerequisites

Small  jsonAPI to scrape headers and links from websites.


- Ruby [2.4.0]
- Rails [5.1.6]

##### 1. Check out the repository

```bash
git git@github.com:Hatemachine01/ScrapperAPIII.git
```


##### 2. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
bundle exec rake db:migrate
```


##### 3. Run Rspec

You can start the rails server using the command given below.

```ruby
rspec
```


##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```


##### 5. END-POINTS



```ruby
Main end-points

GET = http://localhost:3000/urls
POST = http://localhost:3000/urls={params}

run rails routes to see other avaliable routes.
```




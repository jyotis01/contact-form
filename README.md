# Contact Form

##### Prerequisites

The setups steps expect following tools installed on the system.

- Ruby [2.7.0]
- Rails [6.0.3.2]
- Node.js
- Yarn
- PostgreSQL

##### 1. Check out the repository


```bash
git clone https://github.com/ajackus/contact-form.git
```

##### 2. Setup database config

Edit config/database.yml file and add your PostgreSQL user username and password.

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rake db:create
```

```ruby
rake db:migrate
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000
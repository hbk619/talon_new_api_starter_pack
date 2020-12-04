tag: terminal
-
rails data:
    insert("bundle exec rails db -p")
    key(enter)
rails update:
    insert("bundle install && rails db:migrate RAILS_ENV=development")
    key(enter)
rails console:
    insert("bundle exec rails console")
    key(enter)
rails migrate dev:
    insert("rails db:migrate RAILS_ENV=development")
    key(enter)
rails migrate generate <phrase>:
    insert("rails generate migration {phrase}")
rails migrate generate:
    insert("rails generate migration")
rails rollback:
    insert("rails db:rollback")
rails redo:
    insert("rake db:migrate:redo VERSION=")
data status:
    insert("rake db:migrate:status")
    key(enter)

cop fix:
    insert("rubocop -A ")
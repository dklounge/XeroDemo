A demo app for Xero
-------------------

# Setup

* Running on Ruby 2.0.0 with Rails 4.0
* Fork then clone on your local to run the code

`$ bundle install --without production`

>If you encounter error, you may need to run `bundle update` and check Gemfile and Gemfile.lock.

## To deploy to heroku

`$ git push heroku master`

## Troubleshooting

>If you can push to git, but receive `Permission denied (publickey)` error when pushing to heroku, try adding public key to heroku (after ensuring you have public keys).

`heroku keys:add ~/.ssh/id_rsa.pub`

see Stackoverflow [thread on this topic](http://stackoverflow.com/questions/16384655/git-push-heroku-master-error-permission-denied-publickey)

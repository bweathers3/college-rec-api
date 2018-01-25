
# GetRecruited Backend - college-rec-api


## GetRecruited

The GetRecruited site is comprised of a Rails API backend, and a React/redux frontend.


#### What is a backend?

The backend (where you are now) is responsible for:

- exchanging data with the frontend via custom API endpoints


Points regarding the backend technologies:

* Ruby version 2.5.0, rails 5.0
* For both development and production we use postgresql as the database
* The gem file includes both;  gem 'active_model_serializers', '~> 0.10.0' and gem 'rack-cors'
* In local development the sever should be on localhost:5000



#### Local Development Environment

_Fork the repo first._

git clone https://github.com/[YOUR-GITHUB-NAME]/college-rec-api.git


cd college-rec-api


#### Running GetRecruited Backend:

To run the backend use the localhost:5000 port, run: rails s -p 5000

You can now visit http://localhost:5000  and you should see a Rails welcome message! Since there are no views associated with the backend you will not be able to navigate beyond the welcome page.


## Finding An Issue

* If you have everything setup you can find issues to work on. **GetRecruited** uses Github's built-in issue tracker. A listing of all our issues can be found [here]https://github.com/bweathers3/college-rec-api/issues.

* Once you have found an issue, leave a comment stating that you plan to work on the issue. Once assigned to you, your mission is a go!


## Working On Your Issue

* From the forked and cloned repository on your environment, you can now create a [feature branch](http://nvie.com/posts/a-successful-git-branching-model/). It is a good idea to name your branch after the issue it is attached to.

   git checkout -b <feature-branch-name>


## Submitting Your Changes

* When you have completed work on your feature branch, you are ready to submit a [pull request](https://help.github.com/articles/using-pull-requests/).

* Each pull request should:

  * Be tied to a single issue
  * Be named after the issue with the designated issue # as the name of the branch

* Once your pull request has been submitted, it will be reviewed by a team member. This process helps to familiarize more people with the codebase, and provides a second set of eyes and perspective to your new feature.

* If your code is accepted, it will be merged into the `master` branch.


## Code Standards

### Ruby

[Adhere to the Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)


### Rails

[Adhere to the Ruby Style Guide](https://github.com/bbatsov/rails-style-guide)



## License

By contributing your code, you agree to license your contribution under the [MIT License](LICENSE).

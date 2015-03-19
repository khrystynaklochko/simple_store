# Catalog App

A simple product catalog with an admin interface to manage products. Constructed
as a class project while learning Ruby on Rails.

## Set Up
This app runs on Ruby `2.1.5` and Rails `4.2.0.rc2`. Ensure that Ruby 2.1.5 is 
installed on your machine before proceeding.

    $ ruby -v
    
You should see something like:

    ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-darwin14.0]

If not, you'll need to install Ruby 2.1.5 using your Ruby version manager. But
if everything looks good, go ahead and clone the repo:

    $ cd where-you-want-the-app/
    $ git clone git@github.com:berkompasacademy/catalog.git
    $ cd catalog/

You can then run the included `bin/setup` script to set up the rest of the 
dependencies.

    bin/setup

## Contributing
Here's how to contribute to the app. (We're only accepting contributions from
class members for the time being.)

- Clone and set up the repo. (See above for instructions)
- Create a branch, named after the feature you want to add. (e.g. `add-users`)
- Commit your changes to your branch.
- Push your branch to Github. `git push origin branch-name`
- Create a pull request into `master`. We'll then discuss your changes.
- If everything looks good, your work will be merged to `master`!
- **Important**: Don't forget to switch back to `master` and `git pull` before 
  starting another branch.

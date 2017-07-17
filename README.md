# serverspec-custom-types


Project to make some new resource types that can be used with serverspec. Requires serverspec and specinfra. Built to allow for easily adding more resources. Below is a description of how to use this gem as is and how to add resources to the gem.


## using the gem
You can copy the .gem file to a location on your machine and then install it. I recommend using `gem install --local --user-install serverspec-custom-types-0.1.0.gem` (make sure you are currently the user you will use to run the tests). 

Next add the gem to your project's dependency list. I recommend using a Gemfile. In the Gemfile, add `gem 'serverspec-custom-types', :path => "/path/to/gem"`.


You now have access to this gem and its resources.


## contributing a resource type
If you want to add a new resource, I recommend following these steps


#### add your resource to lib/serverspec-custom-types
You need to add a file to lib/serverspec-custom-types that follows the format name_of_resource.rb. Inside that file, you will write your custom class. Basically, this is where you will need to call runner to access a remote host and add the structure for your resource type.


#### add your resource to lib/serverspec-custom-types.rb
In this file, make sure you include your resource.


#### add tests for your resource 
In spec/types, you can write name_of_resource_spec.rb and write some tests. This is also where you write the output a user sees when a test is run.


#### test your code
You can use `rake -T` to see what tests you can run. Then run your tests to make sure they work.


#### build the gem
Once you are confident in your new resource type, you can update the version of the gem in lib/serverspec-custom-types/version.rb. Then build the gem with `gem build serverspec-custom-types.gemspec`.


# Object Relations Assessment

For this assignment, we're going to be working to help New Yorker Magazine organize its articles and contributors into categories for their new website.

- An article belongs to a category and a category can have many articles.

## Topics

+ Classes vs Instances
+ Variable Scope ( Class, Instance, Local )
+ Object Relationships
+ Arrays and Array Methods
+ Class Methods

## Notes

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb` file. Please don't submit the lab until we give you the signal.

## Deliverables
The below are the methods that must be present on your models. Feel free to build out any helper methods, if needed.

#### Instructions

Build the Article and Category classes and their associations, as well as an Adapter class.

The idea of an Adapter class is that its responsibility is to take data in one format and translate it to another format that is easier for the programmer to work with.  Here, the job of our adapter class is to read in data from the given `newyorker.json` file and use that to create Ruby instances with their associations.

1. Create the relationships between the article and category models. Create initialize methods for each.
   - A category has a name
   - An article has a title, description, url, contributor, and time published
2. Build Category and Article methods
  ## Category Class:
  - Category.all
    + returns all categories. When a category is initialized, it should be added to an array of all categories.
  - Category#find_or_create
    + This method takes in one argument, which is a string of the category name. The method should create a new instance of a category if one doesn't already exist. Otherwise, it should return the existing category instance.
   ## Article Class:
  - Article#all
    + Class level method that returns all Article instances. When an article instance is initialized, it should be added to the collection of all Article instances.
3. In the Adapter class, build the `create_objects_from_file` method. This method should use the provided articles data to create Article and Category objects. It should return the created instances.     

**ONLY BEGIN STEPS 4 AND 5 AFTER COMPLETING THE ABOVE STEPS**

4. **Category:**
- Category.top_category
  + Returns category with the most articles associated with it

5. **Article:**
- Article.find_all_by_category(category)
  + Takes a category instance as an argument, and returns all articles associated with that category

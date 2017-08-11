# Object Relations Assessment

For this assignment, we're going to be working to help New Yorker Magazine organize its articles and contributors into categories for their new website.
- An article will belong to a contributor and a contributor can have many articles.  This is a has-many relationship.
- An article can have many categories and a category can have many articles. This means you will need an ArticleCategories Model that associates an instance of the Article class with an instance of the Category class. This is a many-to-many relationship.
- A contributor should be able to access the categories of his/her articles.

Make sure to draw up the domain model before beginning.

## Topics

+ Classes vs Instances
+ Variable Scope ( Class, Instance, Local )
+ Object Relationships
+ Arrays and Array Methods
+ Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb` file. Please don't submit the lab until we give you the signal.

## Deliverables
The below are the methods that must be present on your models. Feel free to build out any helper methods, if needed.

#### How to Approach
**First: Build the basic initialization methods on the Contributor, Article, Category, and ArticleCategories classes needed to instantiate objects for each. Look at the newyorker.json file to see what attributes an article will have.  Then begin building out the methods listed below.  You may have to jump around a bit in the order that you build them.**

Category:
- Category#all
  + Class level method that returns all Category instances. When a category instance is initialized, it should be added to the collection of all Category instances.
- Category.find_or_create_by_name(name)
   + If a category  with this name exists, this method returns it. Otherwise, it creates the new category instance
- Category#articles
  + Returns an Array of Article instances associated with this category

Contributor:
- Contributor#all
  + Class level method that returns all Contributor instances. When a contributor instance is initialized, it should be added to the collection of all Contributor instances.
- Contributor.find_or_create_by_name(name)
  + If a contributor  with this name exists, this method returns it. Otherwise, it creates the new contributor instance

Article:
- Article#all
  + Class level method that returns all Article instances. When an article instance is initialized, it should be added to the collection of all Article instances.
- Article.find_all_by_category(category)
  + Takes a category instance as an argument, and returns all articles associated with it

ArticleCategories
- ArticleCategories#all
  + Class level method that returns all ArticleCategories instances. When an ArticleCategories instance is initialized, it should be added to the collection of all ArticleCategories instances.
- ArticleCategory#article
  + Returns the associated article instance
- ArticleCategory#category
  + Returns the associated category instance

BONUS:
Adapter:
- The idea of an Adapter class is that it's responsibility is to take data in one format and translate it to another format that is easier for the programmer to work with.  Here, the job of our adpater class is to read in data from the given `newyorker.json` file and use that to create Ruby instances with their associations.
- If you have time use the code given on the Adapter class to finish the implementation of the `#create_objects` method.  It should iterate over the files stored in `@articles` and build the associated objects.
- Be careful not to duplicate your instances of each.

1. Domain modeling
2. Create classes
3. Use adapter to parse json
4. class and instance methods

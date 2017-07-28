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
The below are the methods that must be present on your models. Feel free to build out any helper methods to use in these, but complete in the following order:

1. Build the basic initialization methods on the Contributor, Article, Category, and ArticleCategories classes needed to instantiate objects for each. Look at the given files to see what attributes each class has.

Category:
- Category#articles
  + Returns an Array of Article instances associated with this category
- Category#contributors
  + Returns an Array of Contributor instances
- Category.find_or_create_by_name(name)
   + If a category  with this name exists, this method returns it. Otherwise, it creates the new category instance
- Category.most_articles
  + Returns category with the most articles associated with it

Contributor:
- Contributor.find_or_create_by_name(name)
  + If a contributor  with this name exists, this method returns it. Otherwise, it creates the new contributor instance
- Contributor#articles
  + Returns all the articles the contributor has written
- Contributor#categories
  + Returns all categories this contributor has written articles for

Article:
- Article.find_all_by_category(category)
  + Takes a category and returns all articles associated with it

ArticleCategory
- ArticleCategory#article
 + Returns the associated article instance
- ArticleCategory#category
  + Returns the associated category instance
  
BONUS:
Adapter:
- The idea of an Adapter class is that it's responsibility is to take data in one format and translate it to another format that is easier for the programmer to work with.  Here, the job of our adpater class is to read in data from the given `newyorker.json` file and use that to create Ruby instances with their associations.
- If you have time use the code given on the Adapter class to finish the implementation of the `#create_objects` method.  It should iterate over the files stored in `@articles` and build the associated objects.
- Be careful not to duplicate your instances of each.

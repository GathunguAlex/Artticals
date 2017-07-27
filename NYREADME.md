# Object Relations Assessment

For this assignment, we're going to be working to help New Yorker Magazine organize its articles and contributors into categories for their new website. An article will belong to a contributor and can have more than one category. Contributor writes for various Categories via his/her articles, and by the same token a Category can host many contributors.

Make sure to draw up the domain model before beginning. Consider that you may need to include more models to make the domain viable.

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
1. Build the basic initialization methods on the Contributor, Article and Category classes needed to instantiate objects for each.
2. Build out the Adapter to parse through the data and create the Contributor, Article, and Category objects. Be careful that you don't duplicate instances of any class.
3. Build methods for the Category class, then complete methods for Contributor and Article.

Adapter:
- Use the Adapter class to parse through the data in the JSON file and turn it into models.
- Be careful not to duplicate your instances of each.

Category:
- Category.find_or_create_by_name
- Category.list_all_category_names
- Category.most_articles
+ Returns category with the most articles associated with it
- Category#contributors_in_order
+ Lists all contributors associated with category in order of how many articles of this category they've written

Contributor:
- Contributor.find_or_create_by_name
- Contributor#categories
- Contributor#first_name
- Contributor#write_article
  + Takes article attributes and creates a new instance, associating with contributor

Article:
- Article.list_all_titles
- Article.find_all_by_category
  + Takes a category and returns all articles associated with it
- Article#change_categories
  + Takes one or more categories and associates them with article



**** Dictate the order they should do things in.

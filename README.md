# Object Relations Assessment

For this assignment, you will be creating a domain to track contributions that Authors make to Magazines. For the purposes of this lab, an Author has many Articles, a Magazine has many Articles, and Articles belong to both Author and Magazine.

Note: It can be incredibly helpful to draw out what your domain will look like before you start coding.

For this assignment, we're going to be helping New Yorker Magazine organize its articles and categories for their new website. We'll create an adapter class to import json data and convert it into article and category class instances. **An article belongs to a category and a category can have many articles**

Your goal is to build out all of the methods listed below in 'deliverables'. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

  --  Make sure you are testing your code as you go! --

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb` file. Please don't submit the lab until we give you the signal.

#### Instructions

The below are the methods that must be present on your models. Feel free to build out any helper methods, if needed.
## Deliverables

Build the following methods on the Author class

+ Author.all
  + should return all of the authors
+ Author#articles
  + returns a list of articles the author has written
+ Author#magazines
  + should return a list of magazines for which the author has written
+ Author.find_oldest
  + returns the oldest author
+ Author#add_article(title, magazine)
  + given a title and a magazine, creates a new article and associates it with that magazine.
+  Author#find_specialties
  + returns the categories of the magazines for which the author has written

Build out the following methods on the Article class

+ Article.all
  + returns all of the articles
+ Article#author
  + returns the author for that given article
+ Article#magazine
  + returns the restaurant for that given article

Build out the following methods on the restaurant class

+ Magazine.all
  + returns an array of all magazines
+ Magazine.find_by_name(name)
  + given a string of magazine name, returns the first magazine that matches
+ Magazine#article_names
  + returns a list of the names of all articles written for that magazine

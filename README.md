# Object Relations Assessment

For this assignment, you will be creating a domain to track contributions that Authors make to Magazines. For the purposes of this lab, an Author has many Articles, a Magazine has many Articles, and Articles belong to both Author and Magazine.

Note: It can be incredibly helpful to draw out what your domain will look like before you start coding.

Your goal is to build out all of the methods listed below in 'deliverables'. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

  --  Make sure you are testing your code as you go! --

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb` file. Please don't submit the lab until we give you the signal.

#### Instructions

The below are the methods that must be present on your models. Feel free to build out any helper methods, if needed.

## Deliverables

### Author
An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.

+ `Author#name`
  + Returns the name of the author as a string
+ `Author.all`
  + Returns an array of all Author instances
+ `Author#add_article(title, magazine)`
  + Given a title (as a string) and a magazine (as Magazine instance), this method creates a new Article instance and associates it with that author and that magazine.
+ `Author#articles`
  + Returns an array of Article instances the author has written
+ `Author#magazines`
  + Returns an array of Magazine instances for which the author has contributed to
+  `Author#show_specialties`
  + Returns an array of categories of the magazines for which the author has contributed to

### Article
An article is initialized with an author as an Author object and a magazine as a Magazine object. An article **cannot** change its author or magazine after it is has been initialized. 

+ `Article.all`
  + Returns an array of all Article instances
+ `Article#author`
  + Returns the author for that given article
+ `Article#magazine`
  + Returns the magazine for that given article

### Magazine
A magazine is initialized with a name as a string and a category as a string. The name of the magazine and the category it falls under **can be** changed after being initialized.

+ `Magazine#name`
  + Returns the name of this magazine
+ `Magazine#category`
  + Returns the category of this magazine
+ `Magazine.all`
  + Returns an array of all Magazine instances
+ `Magazine.find_by_name(name)`
  + Given a string of magazine's name, this method returns the first magazine object that matches
+ `Magazine#article_titles`
  + Returns an array of the titles of all articles written for that magazine

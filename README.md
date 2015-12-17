# Hanzi Learning Application

* This app will help in learning Mandarin.

* The user can create an account using an email and a password. The password will not be stored in the database. Instead using Devise some sort of hash and salt will be stored.

* A non logged in user will be able to see a few sample lists. 

* The initial screen will have a jumbotron with a description of the application. It will also have some images - could do with a large image with Mandarin characters.

* The user can create lists of items. Each list has a name and translation entries.

* Each translation entry at it's core maps between Hanzi and English. Technically the user could enter any language but the app will not officially support anything apart from English initially.

* Photos can be attached to translation entries. This is the intended usage - the lists will be displayed as image blocks like the recipe or movie apps. The user should be able to take these photos with their phone.

* Each translation entry also has the pinyin for the Hanzi. Pinyin is displayed using inline tones over the appropriate letters. The words are also colour coded depending on the tone.

# TODO

* We could have the user enter the pinyin and have the app automatically find the correct pinyin and tone

* someway to categorise lists
  - lists could belong to a category
  - lists could be categories

* Investigate where to get free photos. Or could pay for some?

* Devise action mailer config in production. Mandrill? Gmail?

* Remove original image from paperclip storage

# Technologies

* Rails
* Bootstrap
* Postgres

# Site Layout

* Top Bar
  - Sign In
  - Sign Out

* Sidebar
  - WordLists
  - Tags

* Home Page
  - Jumbotron with intro text

* User Home Page
  - Word Lists
  - Tags Categories


# Hanzi-Pinyin Mapping

* Take ccdict list
* Extract all single character entries
* Create list of hanzi, pinyin text, tone
* Store in db?

# Questions

* How to prepopulate data into the database
* Should the list belong in the database?

# Stretch Goals

* Gravatar for user profile. Some sort of reusable user profile stuff. Should be able to reuse the same user code for each rails app. How would you reuse the same user code in multiple rails apps?

* Investigate the foreigner gem. Should I use something like this?

# Entities

Initial thoughts on the entities I will need in the system. Could I generate this from the database once implemented?

* User
  - name: string
  - email
  - password

* List
  - belongs to user
  - title: string
  - description: text
  - has many translation entries

* Translation Entry
  - hanzi
  - translation
  - photo

* HanziPinyinMapping
  - hanzi
  - pinyin

* Pinyin
  - text
  - tone 
  - 
  

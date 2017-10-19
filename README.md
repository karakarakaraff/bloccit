# Bloccit
Bloccit is a CRUD web application built with Ruby on Rails that allows users to create posts under topics, then comment and vote on those posts, plus save their favorite posts. Read a case study about building this project on my portfolio website at [karaflaherty.com: Bloccit](http://karaflaherty.com/bloccit-a-forum-web-app-with-topics-votes-and-favorites/).

### Signing up, signing in, signing out
Everything on Bloccit can be read publicly, but to create posts, vote on posts, write comments and save favorite posts, users must create an account with a name, email and password. Once signed up and signed in, Bloccit uses the Rails object `session` to attribute all actions to the current user while they are signed in. When the user signs out, the `session` object is cleared.

### Posting
Users can create posts by selecting a topic and clicking the "New Post" button on the topic's page. The post will then appear in the list of posts under the topic, complete with voting, the number of comments and the author. If a user chooses to do so, they can delete a post they created by clicking the "Delete Post" button inside the post.

### Commenting
When a post is open, users can comment by typing a message in the comment bar and clicking the "Submit Comment" button. New comments will appear below previous comments. Each comment can be directly linked and referenced by clicking the small text that says "Link" and copying the resulting URL. A user can also delete a their own comment by clicking the small text that says "Delete".

### Voting
Votes help capture the reputation of a post. Users can either upvote a post by clicking the up arrow or downvote a post by clicking the down arrow, resulting in a number that represents the overall number of upvotes minus the number of downvotes. For example, if five users upvote the post and two users downvote the post, the overall number that will be presented is "3". A user can only vote once on each post.

### Favoriting
Users have the option of saving their favorite posts by clicking the "Favorite" button. Doing so will save the post to the user's list of favorites as well as send the user a notification each time the post receives a new comment. Alternatively, if a user no longer wants to save a post, they can click the "Unfavorite" button.

### User profiles
All of a user's activity is saved on their user profile. Each profile holds three lists: posts, comments and favorites. Additionally, an avatar can be linked to the user's registered email via [Gravatar](https://en.gravatar.com/), and it will show up on the user profile as well as in various locations around Bloccit, such as in the navigation bar and next to comments the user has made.

---
This project was built for [Bloc's Web Development Program](https://www.bloc.io/).

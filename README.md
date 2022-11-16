Original App Design Project - README Template
===

# KnightBlog

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
KnightBlog is a mobile application that allows students at the University of Central Florida to exchange ideas with their peers in a forum like format, where they are able to tag their post with the subject that it may most closely relate to.

### App Evaluation
- **Category:** Discussion Forum
- **Mobile:** At first, the app would be developed for mobile, but the discussion forum format works quite well for webpages too, allowing a smooth transition to an eventual web application.
- **Story:** Makes sure that the user has an email with a domain that comes from the University of Central Florida network, and allows user to write posts regarding student life, as well as follow tags for a specific subject that the user may find interesting. 
- **Market:** The target audience is composed of students at the University of Central Florida.
- **Habit:** Given that the main purpose of the application is to inform users about specific topics rather than connecting them, the app will not necessarily be used as a social network, therefore limiting the usage time, though the frequency in which the app is used is completely up to the user. 
- **Scope:** At first, we could focus on simply sharing blog posts and allowing users to comment on them. Later on, we could perhaps work on a way to connect those users based on similar interests. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

[] Users register with their knights email address, username, and password
[] Users log in with their username and password
[] Users can subscribe to topics or unsubscribe
[] Users can like or dislike blog post
[] Users can view blog posts
[] Users can write a blog post
[] Users can delete their blog post

**Optional Nice-to-have Stories**

[] Following specific authors
[] Having personal profile page

## Video Walkthrough

Here's a walkthrough of the build progress:

<img src='http://g.recordit.co/3iom7PjPX4.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

### 2. Screen Archetypes

* Register
   * user registers with their knights email address, username, and password
   
* Login
   * user logs in with their username or password
   
* Main feed
   * User can view blog posts
   * User can delete their blog post

* Full blog post
   * User can like or dislike blog post
   * User can delete their blog post

* Create a blog post page
   * users can write a blog post

* Topics page
   * users can subscribe to topics or unsubscribe

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Main Feed
* New Blog post
* Topics

**Flow Navigation** (Screen to Screen)

* Login
   * Upon successful authentication user is taken to Main feed
   * If user has no account, user clicks on "register" and is taken to Register page

* Register
   * Upon successful authentication user is taken to Main feed
   * If user has an account, user clicks on "log in" and is taken to Login page
   
* Main feed
   * When user taps on a blog post, that blog post is presented modally

* Create a blog post page
   * When user clicks on cancel, user is taken to main feed without publishing anything
   * When user clicks on publish, post goes live and user is taken to main feed


## Wireframes

### Digital Wireframes & Mockups

Register Page

<img src="https://i.postimg.cc/MTnw3tbv/Page-1.png" width=600>

Login Page

<img src="https://i.postimg.cc/Xv8hK5RX/Login.png" width=600>

Main feed Page

<img src="https://i.postimg.cc/3Rv6DqFC/page-2.png" width=600>

Full Blog Page

<img src="https://i.postimg.cc/xCZzBsw7/page3-2.png" width=600>

Create a blog post Page

<img src="https://i.postimg.cc/022fT3KW/page-4.png" width=600>

Topics page

<img src="https://i.postimg.cc/0QkM6gsh/page-5.png" width=600>

## Schema 
### Models
User

| Property | Type              | Description                                |
|----------|-------------------|--------------------------------------------|
| email    | string            | Knights email address                      |
| username | string            | username that will be used to log users in |
| password | string            | user's password                            |
| tags     | [String]          | list of tags user follows                  |
 
Blog

| Property  | Type            | Description                       |
|-----------|-----------------|-----------------------------------|
| objectId  | String          | id of the blog post               |
| author    | Pointer to user | user that created the blog post   |
| createdAt | Date            | creation date of the blog post    |
| tags      | [String]        | Array of associated tags          |
| likeCount | Number          | number of likes post has received |
| text      | String          | content of the blog post          |
### Networking

#### Register Page
- (POST) Create a new account with user's credentials 
<img src="https://i.postimg.cc/25XCv78b/Screenshot-2022-11-08-at-4-57-48-PM.png" width=600>

#### Login Page
- (POST) Login to user's account with user's credentials  

#### Main Feed Page
- (Create/POST) Like other posts
- (DELETE) Delete an existing post
- (Read/ GET) Load posts 

<img src="https://i.postimg.cc/5t4hsYkB/Screenshot-2022-11-08-at-4-47-01-PM.png" width=600>

#### Full Blog Page
- (Read/GET) Load user's name, post name, and post details
- (Create/POST) Create a new like or dislike on a post
- (Delete) Delete existing like or dislike

#### Create Blog Post Page
- (Create/POST) Create a new blog post with appropriate tags

#### Topics Page
- (Subscribe/POST) Create a subscription to a new topic
- (Unsubscribe/POST) Cancel a subscribtion to previously chosen topic


## Remaining
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]

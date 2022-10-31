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
[Evaluation of your app across the following attributes]
- **Category:**
- **Mobile:**
- **Story:**
- **Market:**
- **Habit:**
- **Scope:**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Users register with their knights email address, username, and password
* Users log in with their username and password
* Users can subscribe to topics or unsubscribe
* Users can like or dislike blog post
* Users can view blog posts
* Users can write a blog post
* Users can delete their blog post

**Optional Nice-to-have Stories**

* Following specific authors
* Having personal profile page

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
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]

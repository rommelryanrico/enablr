# Enablr

[Heroku](https://enablr.herokuapp.com/)<br>
[GitHub](https://github.com/en3on/enablr)

Enablr was created to allow for an easy way to get your startup funded by the public, in exchange for different 'Perks' that they can receive. Users can sign up as either a standard user or a fundraiser. **Fundraisers** can both create and enable projects, whereas **standard** users can only enable.

![Logo](docs/logo.png)

#### Features
We offer the following features to users of Enablr:

* **Sign up** for a free account as either a **Standard** user or a **Fundraiser
* ****Create projects** as a fundraiser
* **Enable** other's projects by pledging a chosen amount to a specific **perk**
* **Comment** on any project that they have enabled
* **Upload multiple pictures** for their project
* **Edit / Delete** their own: 
    * Comments
    * Projects
    * Perks
    * Profile
    * Pictures
* **Request a refund** for their pledge, provided that the purchase was made _less than 30 days ago_

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
In order to run this app, the following software is needed

[PostgreSQL](https://postgresql.org/download) is needed for the database<br>
[Ruby](https://www.ruby-lang.org/) is needed in order to compile the app<br>
Rails is used as the framework, and needs to be installed as a gem<br>
```
gem install rails
```

## Deployment
To run this app on your system, first create the database by running the following command: 

```
rails db:create
```

Migrate the changes to the database:

```
rails db:migrate
```

Optionally, seed the database with the provided seed file:

```
rails db:seed
```

To start up the server, run the following command:
```
rails server
```

And then navigate to ```http://localhost:3000```

## Build With
Enablr was created using the following technology:

* Ruby _2.5.1_ - _Language_
* Rails _5.2.3_ - _Web Framework_
* HTML _5_ - _Language_
* CSS _3_ - _Language_
* PostgreSQL - _Database_
* SASSC - _Language_
* CoffeeScript - _Language_
* Bootstrap - _Gem_
* Jquery - _Language_
* CanCanCan - _Authorization Gem_
* Devise - _Authentication Gem_
* FactoryBot - _Gem for easily creating instances of models for testing/ seeding_
* Faker - _Gem for randomly generating data_
* Amazon Web Services - _Storage services_
* Heroku - _App Deployment_

## Authors
* Adam Ladell
* Ryan Rico

## Requirements - Short Answer Questions

1. What is the need (i.e. challenge) that you will be addressing in your project?

To give Tech Startups a platform to easily reach a community of potential customers/investors to fund their company.

2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
    
    The problem we are trying to solve is giving tech startups access to funding from potential investors. It is a problem that needs solving because on similar websites like kickstarter there are a ton of categories with thousands of projects in each category which can make it hard for tech projects to get any exposure. By limiting it to tech startups we can categorise projects into specific kinds of technologies.

3. Describe the project you will be conducting and how your App will address the needs.

    The project we will be conducting is creating a Crowdfunding platform specifically for Hardware/Software Tech Startups. Our app will address the needs because it is limited to crowdfunding for tech startups.
  
4. Describe the network infrastructure the App may be based on.
  
  Our app would require a database server to handle storing the data of the users. We would also need a cloud server running to handle the requests of users.
  The infrastructure we would use, would be in line with a Dynamic setup.

5. Identify and describe the software to be used in your App.

    The software to be used in our App is Ruby and Ruby on Rails as well as JavaScript.

6. Identify the database to be used in your App and provide a justification for your choice.

    The database to be used in our app is PostgreSQL. The justification for our choice is that it is compatible with Heroku deployment.

7. Identify and describe the production database setup (i.e. postgres instance).

  Our database consists of the following tables;
    - Active Storage Attachments
    - Active Storage Blobs
    - Comments
    - Perks
    - Project Enablrs
    - Projects
    - Users

    Users can enable a project, and can also create projects if they are flagged as fundraisers

    Project Enablrs are created upon the successful enabling of a project's perk

    Project Enablrs can create comments

8. Describe the architecture of your App.

  Our app was build on Test-Driven-Development allowing for easy scalability, as we are able to make increase the depth of our web app with confidence in knowing that the app still performs its intended function.

  We utilise a layered architecture with the seperation of functions/ views depending on the action being performed or the user that is performing it.

  We employ a system of collaboration using a user-to-user foundation.

9.  Explain the different high-level components (abstractions) in your App.

  We allow users to create their own projects, specifying the target amount, target date and project information. The project creator is presented with the opportunity to edit their project at any time as well as see the statistics of their project.

  Projects can employ a range of photos.

  Project Creators can edit/delete perks as long as no one has enabled them

  Project Creators can delete their project at any time

  We allow user to 'enable' projects (pledge a monetary amount to the project) via redeeming a specific perk based on the amount that they pledge.

  Users can add a profile picture for personalization needs as well as edit other aspects of their profile.

  Users can explore the range of projects on the site.

  Users can request a refund, provided that the purchase was made less than 30 days ago.

  Users can create comments on projects that they have enabled, as well as edit/delete their comments.

  Users' comments are sorted from the most recent to oldest.

10.  Detail any third party services that your App will use.

  Our app uses Mailer to handle sending the user notifications about actions taken on their account.

  It also uses Stripe to manage user payments.

11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

    The data structure of marketplace apps that are similar to our own is Kickstarter. 

12. Discuss the database relations to be implemented.

Enabler
Has many comments
Belongs to User
Belongs to Project
Belongs to Perk

Perk
Has many enablers
Belongs to Project

Project
Has many enablers
Has many perks
Belongs to User

User
Has many enablers
Has many projects

Comments
Belongs to Enablr

13.  Describe your project’s models in terms of the relationships (active record associations) they have with each other.

  Enabler
  Has many comments
  Belongs to User
  Belongs to Project
  Belongs to Perk

  Perk
  Has many enablers
  Belongs to Project

  Project
  Has many enablers
  Has many perks
  Belongs to User

  User
  Has many enablers
  Has many projects

  Comments
  Belongs to Enablr

14.  Provide your database schema design.

15.  Provide User stories for your App.

16.  Provide Wireframes for your App.

17.  Describe the way tasks are allocated and tracked in your project.

18.  Discuss how Agile methodology is being implemented in your project.

19.  Provide an overview and description of your Source control process.

20.  Provide an overview and description of your Testing process.

21.  Discuss and analyse requirements related to information system security.

22. Discuss methods you will use to protect information and data.

23. Research what your legal obligations are in relation to handling user data.


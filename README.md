# Salesforce Documentation App

## Motivation

Salesforce implementations can get complicated. Every org has unique challenges that it tries to solve with its own set of custom objects, workflow rules, apex class, custom pages, process builders, approval processes, and the list goes on.

In order to effectively use Salesforce, users need easy access to documentation that gives them clear instructions on how to accomplish what they are trying to do.

It’s hard to provide customers with documentation that is useful to them and helps them make the most of the features that your team has built in their Salesforce org. Even if the content of our documentation is great, end users often won’t see it unless it’s delivered to them in the right format. Word documents and PDFs get buried in someones Documents folder and Salesforce Knowledge costs extra money. As time passes, users forget how to use the cool apps that are available to them or what specific rules were built around approval processes... unless clear documentation is front and center.

External wiki software could help accomplish this, but that forces users to leave Salesforce to find information elsewhere. Salesforce Knowledge would also work, but there is an additional cost associated with that, and it has its own implementation cost.

These lightning components are simple, but they help solve the problem. They can be dropped into the Lightning App Builder to create a single page app, providing users with a simple way to find what they need without ever having to leave Salesforce.

## Installation

Click the button below to deploy to your Salesforce org.

<a href="https://githubsfdeploy.herokuapp.com?owner=cheynepierce&repo=sfdc-documentation-app">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

## Usage

There are two custom objects - Category__c and Article__c - and two lightning components - Articles and ArticleDetail.

Usage is super easy.

- Create Category__c records to categorize your articles.
- Create your article content as Article__c records.
- Create a new app with the Lightning App Builder and then add the two components to the app

The Articles component serves as a menu, displaying a list of all Articles, segmented by Category. When the user clicks on an Article, it will display in the ArticleDetail component.

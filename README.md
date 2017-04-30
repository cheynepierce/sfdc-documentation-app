# Salesforce Documentation App

## Motivation

Salesforce implementations can get complicated. Every org has unique challenges that it tries to solve with its own set of custom objects, workflow rules, apex class, custom pages, process builders, approval processes, and the list goes on.

In order to effectively use Salesforce, users need easy access to documentation that gives them clear instructions on how to accomplish what they are trying to do. External wiki software could help accomplish this, but that forces users to leave Salesforce to find information elsewhere. Salesforce Knowledge would also work, but there is an additional cost associated with that, and it has its own implementation cost. 

The lightning components here can be droppped into the Lightning App Builder to create a single page app, accessible as a custom tab, providing users with a simple way to find what they need without ever having to leave Salesforce.

## Installation

Click the button below to deploy to your Salesforce org.

<a href="https://githubsfdeploy.herokuapp.com?owner=cheynepierce&repo=sfdc-documentation-app">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

## Usage

There are two custom objects, Category__c and Article__c, and two lightning components, Articles and ArticleDetail. Create Category__c records to categorize your articles. Create your content as Article__c records. The components can be added to the Lightning App Builder and then exposed to users via a custom tab. 

A list of all articles will appear in the Articles component, segmented by Category. The selected article will appear in the ArticleDetail component. 
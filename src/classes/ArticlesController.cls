public with sharing class ArticlesController {
    @AuraEnabled
    public static List<Category> getCategories() {
        List<Article__c> articles = [
            SELECT Id, Name, Category__r.Name FROM Article__c
        ];
        
        Map<String, List<Article__c>> articleMap = new Map<String, List<Article__c>>();
        for (Article__c article : articles) {
            List<Article__c> articlesList = new List<Article__c>();
            if (articleMap.containsKey(article.Category__r.Name)) {
                articlesList = articleMap.get(article.Category__r.Name);
            }
            articlesList.add(article);
            articleMap.put(article.Category__r.Name, articlesList);
        }
        
        List<Category> categories = new List<Category>();
        for (String cat : articleMap.keySet()) {
            categories.add(new Category(cat, articleMap.get(cat)));
        }
        return categories;
    }
    
    @AuraEnabled
    public static Article__c getContent(String pageId) {
        return [
            SELECT Id, Name, Content__c FROM Article__c WHERE Id = :pageId
        ];
    }
}
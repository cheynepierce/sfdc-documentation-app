public class Category {
    @AuraEnabled
    public String name {get; set;}
    
    @AuraEnabled
    public List<Article__c> articles {get; set;}
    
    public Category(String name, List<Article__c> articles) {
        this.name = name;
        this.articles = articles;
    }
}
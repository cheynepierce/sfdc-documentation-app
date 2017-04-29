({
	doInit : function(component, event, helper) {
		helper.getPages(component);
	}, 
    
    handleArticleClick: function(component, event, helper) {
        var navToArticle = $A.get("e.c:NavToArticle");
        navToArticle.setParams({ "articleId" : event.target.id });
        navToArticle.fire();
    }
})
({
	onArticleSelected : function(component, event, helper) {
        helper.getArticleContent(component, event.getParam("articleId"));
	}
})
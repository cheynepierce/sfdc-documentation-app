({
	getArticleContent : function(component, articleId) {
		var action = component.get('c.getContent');
        action.setParams({"pageId": articleId});
        action.setCallback(this, function(res) {
            var state = res.getState();
            if (component.isValid() && state === 'SUCCESS') {
                var result = res.getReturnValue();
                component.set('v.article', result);
            }
        });
        $A.enqueueAction(action);
	}
})
({
	getPages : function(component) {
		var action = component.get('c.getCategories');
        action.setCallback(this, function(res) {
            var state = res.getState();
            if (component.isValid() && state === 'SUCCESS') {
                var result = res.getReturnValue();
                console.log(result);
                component.set('v.categories', result);
            }
        });
        $A.enqueueAction(action);
	}
})
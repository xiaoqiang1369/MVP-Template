package ${escapeKotlinIdentifiers(packageName)};

import ${escapeKotlinIdentifiers(packageName)}.${contractClass};

class ${presenterClass} implements ${contractClass}.Presenter {
    
	private ${contractClass}.View mView;
	
	${presenterClass}(${contractClass}.View view){
		mView = view;
		mView.setPresenter(this);
	}
	
	@Override
	public void start(){}
}

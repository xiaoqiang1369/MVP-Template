package ${escapeKotlinIdentifiers(packageName)}


interface ${contractClass} {
    
	interface View : BaseView<Presenter>{}
	
	interface Presenter : BasePresenter{}
}

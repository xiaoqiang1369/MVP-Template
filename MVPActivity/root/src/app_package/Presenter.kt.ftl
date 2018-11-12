package ${escapeKotlinIdentifiers(packageName)}

import ${getMaterialComponentName('android.arch.lifecycle.ViewModel', useAndroidX)}
import ${escapeKotlinIdentifiers(packageName)}.${contractClass}

class ${presenterClass}(val view: ${contractClass}.View) : ${contractClass}.Presenter {
    
	init{
		view.setPresenter(this)
	}
	
	override fun start(){}
}

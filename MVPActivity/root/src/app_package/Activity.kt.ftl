package ${escapeKotlinIdentifiers(packageName)}

import ${superClassFqcn}
import android.os.Bundle
<#if includeCppSupport!false>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>

import ${escapeKotlinIdentifiers(packageName)}.${contractClass}
import ${escapeKotlinIdentifiers(packageName)}.${presenterClass}

class ${activityClass} : ${superClass}(), ${contractClass}.View {

	lateinit var mPresenter: ${contractClass}.Presenter
	
	override fun setPresenter(presenter: ${contractClass}.Presenter) {
        this.mPresenter = presenter
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ${presenterClass}(this)
<#include "../../../../common/jni_code_usage.kt.ftl">
    }
<#include "../../../../common/jni_code_snippet.kt.ftl">

}

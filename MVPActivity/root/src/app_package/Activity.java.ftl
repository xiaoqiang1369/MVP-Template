package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>
import ${escapeKotlinIdentifiers(packageName)}.${contractClass};
import ${escapeKotlinIdentifiers(packageName)}.${presenterClass};

public class ${activityClass} extends ${superClass} implements ${contractClass}.View{

	private ${contractClass}.Presenter mPresenter;
	
	public void setPresenter(${contractClass}.Presenter presenter) {
        this.mPresenter = presenter;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayout});

		new ${presenterClass}(this);
<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}

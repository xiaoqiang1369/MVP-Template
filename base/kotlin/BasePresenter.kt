package xiaoqiang.com.jetpacktest.base.kotlin

import androidx.lifecycle.LifecycleOwner
import com.uber.autodispose.android.lifecycle.AndroidLifecycleScopeProvider


/**
 *   description: base presenter for MVP
 *   created by crx on 2018/11/7 15:59
 */
interface BasePresenter {



    fun start()

    fun <T> getProvider(mView: T) : AndroidLifecycleScopeProvider {
        if(mView is LifecycleOwner){
            return AndroidLifecycleScopeProvider.from(mView.lifecycle)
        }else{
            throw IllegalArgumentException("The View is not a LifecycleOwner!")
        }

    }
}
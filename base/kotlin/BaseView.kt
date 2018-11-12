package xiaoqiang.com.jetpacktest.base.kotlin

/**
 *   description: base view for MVP
 *   created by crx on 2018/11/7 16:14
 */
interface BaseView<T: BasePresenter>{
    fun setPresenter(presenter: T)
}

package com.pengyouwan.framework.base;

import java.util.ArrayList;

import android.content.Context;
import android.content.Intent;
import android.os.Message;

/**
 * 描述:Activity抽象接口:拥有设置广播监听，刷新UI，处理广播三个功能
 * 
 * @author zhj
 * @since 2014-3-20 上午12:49:35
 */
public interface IActivity {

    /**
     * 设置广播action
     * 
     * @return
     */
    void setupActions(ArrayList<String> actions);

    /**
     * 刷新界面
     * 
     * @param msg
     */
    void handleUiMessage(Message msg);

    /**
     * 处理广播
     * 
     * @param context
     * @param intent
     */
    void handleBroadcast(Context context, Intent intent);

}

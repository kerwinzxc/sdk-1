package com.pengyouwan.sdk.protocol;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.utils.RSA;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:通行证登陆下设置游戏账号独立密码
 *
 * @author Hanson
 * @since  2016-7-4 下午10:37:58
 */
public abstract class ResetAccountPwdTask extends AbstractResponseCallback {
	private ReSetAccountPwdResponse responseObj;

	public void request(String new_pwd,String account) throws AppException {
		HashMap<String, String> params = new HashMap<String, String>();
        SDKUser user = UserManager.getInstance().getCurrentUserForSDK();
        String tid = AppUtil.getTid();
		String api2 = AppUtil.getApiSecret2(tid, InitManager.getInstance()
				.getApisecret());
        String gameid = InitManager.getInstance().getGameId();
        String sign = MD5Util.getMd5(user.getPhoneNo() + new_pwd + api2).toLowerCase();
        params.put("sign", sign); 
        params.put("gameid", gameid);
        params.put("new_pwd", RSA.encrypt(new_pwd));//要RSA加密
        params.put("account", account);
        params.put("tid", tid);
        params.put("passport", user.getPhoneNo());
    	params.put("passport_token", user.getPhoneNoToken());
		// 生成响应类
		responseObj = new ReSetAccountPwdResponse();
		// 执行请求
		RequestNetUtil.getInstance().request(params,
				com.pengyouwan.sdk.net.UrlManager.URL_RESET_ACCOUNT_PWD, listener,
				errorListener);
	}

	// 请求成功
	private Listener<String> listener = new Listener<String>() {

		public void onResponse(String response) {

			try {
				JSONObject jobj = new JSONObject(response);
				int ack = jobj.getInt("ack");
				if (ack == 200) {
                    responseObj.setOk(true);
				}else {
					responseObj.setErrorMsg(jobj.getString("msg"));
					responseObj.setOk(false);
				}
			} catch (JSONException e) {
				responseObj.setErrorMsg("数据解析异常");
				e.printStackTrace();
			}finally {
                callback(responseObj);
            }

		}
	};

	// 请求失败
	private ErrorListener errorListener = new ErrorListener() {

		public void onErrorResponse(VolleyError error) {
			responseObj.setErrorMsg("网络错误，登录失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    responseObj.setErrorMsg("error:" + error.toString());
                }
            }
            callback(responseObj);
		}

	};

	public class ReSetAccountPwdResponse extends HttpResponse {
		private static final long serialVersionUID = 1L;

		private String errorMsg;

		public String getErrorMsg() {
			return errorMsg;
		}

		public void setErrorMsg(String errorMsg) {
			this.errorMsg = errorMsg;
		}

		

	}
}

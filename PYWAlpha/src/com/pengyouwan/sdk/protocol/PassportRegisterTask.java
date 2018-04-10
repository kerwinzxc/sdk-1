
package com.pengyouwan.sdk.protocol;

import java.util.HashMap;

import org.json.JSONObject;

import com.pengyouwan.framework.base.AppException;
import com.pengyouwan.framework.utils.MD5Util;
import com.pengyouwan.framework.utils.RSA;
import com.pengyouwan.framework.volley.Response.ErrorListener;
import com.pengyouwan.framework.volley.Response.Listener;
import com.pengyouwan.framework.volley.VolleyError;
import com.pengyouwan.sdk.entity.Constants.UserContants;
import com.pengyouwan.sdk.entity.SDKUser;
import com.pengyouwan.sdk.manager.InitManager;
import com.pengyouwan.sdk.manager.UserManager;
import com.pengyouwan.sdk.net.HttpResponse;
import com.pengyouwan.sdk.net.RequestNetUtil;
import com.pengyouwan.sdk.net.UrlManager;
import com.pengyouwan.sdk.utils.AppUtil;

/**
 * 描述:通行证注册请求
 * 
 * @author CJ
 * @since 2016-6-30 下午5:39:07
 */
public abstract class PassportRegisterTask extends AbstractResponseCallback {

    private PassportRegisterResponse responseObj;

    public void request(String phone, String pwd, int smsType, String isCheckCode)
            throws AppException {
        HashMap<String, String> params = new HashMap<String, String>();
        String gameId = InitManager.getInstance().getGameId();
        String apiSecret = InitManager.getInstance().getApisecret();
        String tid = AppUtil.getTid();
        String apiSecret2 = AppUtil.getApiSecret2(tid, apiSecret);
        String signstr = phone + smsType + apiSecret2;
        String md5Str = MD5Util.getMd5(signstr).toLowerCase();
        params.put("sign", md5Str);
        params.put("tid", tid);
        params.put("passport", phone);
        if (pwd.length() > 20) {// 长度大于20代表拿到的是加密后的
            params.put("password", pwd);
        } else {
            params.put("password", RSA.encrypt(pwd));
        }
        params.put("smstype", smsType + "");
        params.put("is_check_smscode", isCheckCode);
        params.put("gameid", gameId);

        // 生成响应类
        responseObj = new PassportRegisterResponse();
        // 执行请求
        RequestNetUtil.getInstance().request(params, UrlManager.URL_PASSPORT_REGISTER, listener,
                errorListener);
    }

    // 请求成功
    private Listener<String> listener = new Listener<String>() {

        public void onResponse(String response) {

            try {
                JSONObject jobj = new JSONObject(response);
                int ack = jobj.getInt("ack");
                if (ack == 200) {
                    JSONObject data = jobj.getJSONObject("data");
                    JSONObject gameAccountData = data.getJSONObject("game_account");
                    SDKUser user = new SDKUser();
                    user.setPwd(data.getString("password"));
                    user.setPhoneNoToken(data.getString("passport_token"));
                    user.setPhoneNo(data.getString("passport"));
                    if (data.getInt("have_pay_pwd") == UserContants.USER_HAVE_PAY_PSW) {// 含有交易密码
                        user.setHavePayPsw(true);
                    } else {
                        user.setHavePayPsw(false);
                    }
                    user.setAccountType(data.getInt("account_type"));
                    // 强更地址
                    // if (data.has("setup_file")) {
                    // SDKControler.setUpdateUrl(data.getString("setup_file"));
                    // }
                    user.setToken(gameAccountData.getString("token"));
                    user.setUserId(gameAccountData.getString("cp_uid"));
                    user.setUserName(gameAccountData.getString("username"));
                    // 设置user对象到内存，免密码登录需要更新此user对象
                    UserManager.getInstance().setCurrentUser(user);
                    // JSONArray userList = data.getJSONArray("game_account");
                    // 存放子账号列表
                    // UserManager.getInstance().setUserList(userList);
                    responseObj.setUser(user);
                    responseObj.setOk(true);
                } else {
                    responseObj.setErrorMsg(jobj.getString("msg"));
                }
            } catch (Exception e) {
                responseObj.setErrorMsg("数据解析异常");
                e.printStackTrace();
            } finally {
                callback(responseObj);
            }
        }
    };

    // 请求失败
    private ErrorListener errorListener = new ErrorListener() {

        public void onErrorResponse(VolleyError error) {
            responseObj.setErrorMsg("网络错误，注册失败");
            if (error != null) {
                if (error.networkResponse != null) {
                    responseObj.setErrorMsg("error:" + error.toString());
                }
            }
            callback(responseObj);
        }

    };

    public class PassportRegisterResponse extends HttpResponse {
        private static final long serialVersionUID = 1L;

        private SDKUser user;

        private String errorMsg;

        public void setErrorMsg(String str) {
            errorMsg = str;
        }

        public String getErrorMsg() {
            return errorMsg;
        }

        public SDKUser getUser() {
            return user;
        }

        public void setUser(SDKUser user) {
            this.user = user;
        }

    }

}

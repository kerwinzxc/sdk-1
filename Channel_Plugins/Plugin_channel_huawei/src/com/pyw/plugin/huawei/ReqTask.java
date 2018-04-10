package com.pyw.plugin.huawei;
import java.util.Map;

import android.os.AsyncTask;

public class ReqTask extends AsyncTask<Void, Void, String> {

	private static final String TAG = ReqTask.class.getSimpleName();

	private Delegate delegate = null;

	private Map<String, String> reqParams = null;

	private String reqUrl = null;

	public ReqTask(Delegate deg, Map<String, String> params, String url) {
		delegate = deg;
		reqParams = params;
		reqUrl = url;
	}

	@Override
	protected String doInBackground(Void... params) {
		String result = null;
		try {

			result = "result";

			/**
			 * 请求地址为reqUrl，请求的POST参数为reqParams，使用UTF-8编码格式
			 */
		} catch (Exception e) {
		}
		return result;
	}

	@Override
	protected void onPostExecute(String result) {
		delegate.execute(result);
	}

	public interface Delegate {
		public void execute(String result);
	}

}
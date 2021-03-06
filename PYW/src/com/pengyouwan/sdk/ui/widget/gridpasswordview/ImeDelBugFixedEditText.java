package com.pengyouwan.sdk.ui.widget.gridpasswordview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
/**
 * 描述：密码输入框的文字view
 * @author Hanson
 * @version 创建时间：2016-7-2 上午10:30:16
 * 
 */
public class ImeDelBugFixedEditText extends EditText {

	private OnDelKeyEventListener delKeyEventListener;

	public ImeDelBugFixedEditText(Context context) {
		super(context);
	}

	public ImeDelBugFixedEditText(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public ImeDelBugFixedEditText(Context context, AttributeSet attrs,
			int defStyle) {
		super(context, attrs, defStyle);
	}

	@Override
	public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
		return new ZanyInputConnection(super.onCreateInputConnection(outAttrs),
				true);
	}

	private class ZanyInputConnection extends InputConnectionWrapper {

		public ZanyInputConnection(InputConnection target, boolean mutable) {
			super(target, mutable);
		}

		@Override
		public boolean sendKeyEvent(KeyEvent event) {
			if (event.getAction() == KeyEvent.ACTION_DOWN
					&& event.getKeyCode() == KeyEvent.KEYCODE_DEL) {
				if (delKeyEventListener != null) {
					delKeyEventListener.onDeleteClick();
					return true;
				}
			}
			return super.sendKeyEvent(event);
		}

		@Override
		public boolean deleteSurroundingText(int beforeLength, int afterLength) {
			if (beforeLength == 1 && afterLength == 0) {
				return sendKeyEvent(new KeyEvent(KeyEvent.ACTION_DOWN,
						KeyEvent.KEYCODE_DEL))
						&& sendKeyEvent(new KeyEvent(KeyEvent.ACTION_UP,
								KeyEvent.KEYCODE_DEL));
			}

			return super.deleteSurroundingText(beforeLength, afterLength);
		}
	}

	public void setDelKeyEventListener(OnDelKeyEventListener delKeyEventListener) {
		this.delKeyEventListener = delKeyEventListener;
	}

	public interface OnDelKeyEventListener {

		void onDeleteClick();

	}

}

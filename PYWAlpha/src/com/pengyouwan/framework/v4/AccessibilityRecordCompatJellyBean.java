/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.pengyouwan.framework.v4;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;

/**
 * JellyBean specific AccessibilityRecord API implementation.
 */
@TargetApi(Build.VERSION_CODES.JELLY_BEAN)
class AccessibilityRecordCompatJellyBean {

    public static void setSource(Object record, View root, int virtualDescendantId) {
        ((AccessibilityRecord) record).setSource(root, virtualDescendantId);
    }
}
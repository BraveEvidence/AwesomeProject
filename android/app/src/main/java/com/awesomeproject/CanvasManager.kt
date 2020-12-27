package com.awesomeproject

import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext

class CanvasManager: SimpleViewManager<CanvasView>() {
    override fun createViewInstance(reactContext: ThemedReactContext): CanvasView {
        return  CanvasView(reactContext)
    }

    override fun getName(): String {
        return "Canvas"
    }

}
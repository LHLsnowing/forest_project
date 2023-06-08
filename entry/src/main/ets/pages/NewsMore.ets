//资讯详情
// xxx.ets
import web_webview from '@ohos.web.webview'

@Entry
@Component
struct WebComponent {
  controller: web_webview.WebviewController = new web_webview.WebviewController()

  build() {
    Column() {
      Web({ src: 'www.example.com', controller: this.controller })
        .onShowFileSelector((event) => {
          AlertDialog.show({
            title: event.fileSelector.getTitle(),
            message: 'isCapture:' + event.fileSelector.isCapture() + " mode:" + event.fileSelector.getMode() + 'acceptType:' + event.fileSelector.getAcceptType(),
            confirm: {
              value: 'upload',
              action: () => {
                let fileList: Array<string> = [
                  '/data/storage/el2/base/test',
                ]
                event.result.handleFileList(fileList)
              }
            },
            cancel: () => {
              let fileList: Array<string> = []
              event.result.handleFileList(fileList)
            }
          })
          return true
        })
    }
  }
}
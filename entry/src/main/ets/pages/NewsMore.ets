//资讯详情
// xxx.ets
import router from '@ohos.router';
import web_webview from '@ohos.web.webview'

@Entry
@Component
struct WebComponent {
  controller: web_webview.WebviewController = new web_webview.WebviewController()
  @State val:string = "";
  aboutToAppear(){
     this.val= router.getParams()['value'];  // 本页带修正，电脑跑不起来 试不出对错
  }

  build() {
    Column() {
        Text("返回")
          .onClick(()=>{
            router.back({url:'pages/Index'})
          })
        Web({ src: this.val,
          controller: this.controller })
    }
  }
}
//资讯详情
// xxx.ets
import router from '@ohos.router';
import web_webview from '@ohos.web.webview'

@Entry
@Component
struct WebComponent {
  controller: web_webview.WebviewController = new web_webview.WebviewController()
  @State val:string =router.getParams()['data']

  build() {
    Column() {
        Web({ src: this.val,
          controller: this.controller })
          .height("80%")
          .userAgent("Mozilla/5.0 (Linux; Android 12; HarmonyOS; OCE-AN10; HMSCore 6.8.0.332) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/13.0.0.303 Mobile Safari/537.36")
          .zoomAccess(true)
      Button("返回").onClick(()=>{
        router.back({url:'pages/Index'});
      }).width("95%").height("10%").borderRadius(10).type(ButtonType.Normal).backgroundColor("#f4f4f4").fontColor(Color.Black).margin({top:10}).shadow({radius:1,offsetX:2,offsetY:2,color:"#c0c0c0"})
    }
  }
}
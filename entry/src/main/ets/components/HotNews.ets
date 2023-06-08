// NewsPage 热门资讯部分
import { DataOp,NewsData } from "../DataOp/DataOp";
import router from '@ohos.router';

@Preview
@Component
export default struct HotNews {
  @State urlValue:String =""; // 作为参数，result中url
  private result: NewsData[] = DataOp.getNews();
  routePage(){
      router.pushUrl({
                url: 'pages/NewsMore',
                params: {
                  value: this.urlValue,
                },
              }).then(() => {
              // success
               })
              .catch(err => {
                console.error(`pushUrl failed, code is ${err.code}, message is ${err.message}`);
              });
  }
  build() {

    Column() {
      // Text(""+this.result.length)
     Column(){
       Divider(); //分割线
       Text("热门资讯")
         .fontSize(20)
         .textAlign(TextAlign.Center)
         .padding({top:10,bottom:10})
       Divider();
     }.borderRadius(5)
     .backgroundColor("#e0f8eb")
     .margin({left:20,right:20})
      .width("90%")

      Column(){
        List({ space: 1, initialIndex: 0 }) {
          ForEach(this.result, (item) => {
            ListItem() {
              Flex({direction:FlexDirection.Column}){
                Flex({direction:FlexDirection.Row}){
                  Image(item.imgurl)
                    .width("35%")
                    .height(80)
                    .margin({top:10,left:5,right:5,bottom:10})
                  Text(item.title) // 待改
                    .width('100%').height(85).fontSize(16)
                    .padding({top:10,left:10,right:10,bottom:10})
                    .textAlign(TextAlign.Start).borderRadius(5).backgroundColor(0xFFFFFF)
                    .onClick(()=>{
                      this.urlValue=item.url;
                      this.routePage();
                    })
                }
                Divider();
              }.margin({left:5,right:5})
            }
          })
        }
      }
      .margin({top:10})
      .backgroundColor("#F7F7F7")
    }.width('100%').height('100%').backgroundColor("#F7F7F7").padding({ top: 10 })
  }
}

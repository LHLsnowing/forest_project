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
      Column()
      {
        Column(){
          //Divider(); //分割线
          Text("热门资讯")
            .fontSize(20)
            .fontWeight(FontWeight.Medium)
            .textAlign(TextAlign.Center)
            .padding({top:10,bottom:10})
          Divider().color("#db5a6b").width("80%")
        }.borderRadius(10).margin({left:20,right:20})
      }.width("90%").backgroundColor("#f0f0f0").height(200)


      Column(){
        List({ space: 1, initialIndex: 0 }) {
          ForEach(this.result, (item) => {
            ListItem() {
              Column(){
                Row(){
                  Image(item.imgurl)
                    .width("35%")
                    .height(80)
                    .margin({top:10,left:5,right:5,bottom:10})
                  Text(item.title) // 待改
                    .width('60%').height(85).fontSize(16)
                    .textAlign(TextAlign.Start)
                }
                .padding(2)
                .shadow({radius:1,offsetX:3,offsetY:3,color:"#c0c0c0"}).margin({top:7,left:5,right:5})
                .linearGradient({
                  direction: GradientDirection.Top, // 渐变方向
                  //repeating: true, // 渐变颜色是否重复
                  angle:165,
                  colors: [["#db5a6b", 0.0], ["#f4f4f4", 0.3],["#f4f4f4", 1]]
                })
              }
            }
            .width("100%")
            .onClick(()=>{
              router.pushUrl({
                url: 'pages/NewsMore',
                params: {
                  data: item.url,
                }})
            })
          })
        }
      }.margin({top:-140})
    }.width('100%').height('100%').padding({ top: 10 })
  }
}

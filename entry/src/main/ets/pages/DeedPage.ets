//事迹页面
import {DeedData,DataOp} from "../DataOp/DataOp"
import router from '@ohos.router'

@Component
struct DeedItem{
  private name:string
  private imgurl:string
  private honor:string
  build(){
    Row({space:30}){
      Image(this.imgurl).width(60).height(60).borderRadius(10)
      Column(){
        Text(this.name)
          .fontSize(30).fontWeight(FontWeight.Regular).width("100%")
        Text(this.honor)
          .fontSize(15).width("100%")
      }
    }.justifyContent(FlexAlign.Start).width("100%").padding({left:"10%"})
  }
}

@Component
export default  struct DeedPage{
  private Data:DeedData[]=DataOp.getDeed();
  build(){
    Column() {
      List(){
        ForEach(this.Data,(item)=>{
          ListItem(){
            DeedItem({name:item.name,imgurl:item.imgurl,honor:item.honor})
          }
          .width("100%").height("10%").borderRadius(10).borderColor("#f0f0f0").shadow({radius:1,offsetX:3,offsetY:3,color:"#c0c0c0"})
          .linearGradient({
            direction: GradientDirection.Top, // 渐变方向
            //repeating: true, // 渐变颜色是否重复
            angle:170,
            colors: [["#fbe362", 0.0], ["#f4f4f4", 0.3],["#f4f4f4", 1]]
          })
          .margin({top:10,bottom:5})
          .onClick(()=>{
            router.pushUrl({
              url: 'pages/DeedMore',
              params: {
                data: item,
              }})
          })
        })
      }.width("95%")
    }.width('100%').height('100%').padding({ top: 5})
  }
}
//事迹详情
import router from '@ohos.router'
import {DeedData} from "../DataOp/DataOp"

@Entry
@Component
struct DeedMore{
  private Data:DeedData=router.getParams()['data']
  build(){
    Column(){
      Column(){
        Row({space:30}){
          Image(this.Data.imgurl).width(60).height(60)
          Column(){
            Text(this.Data.name)
              .fontSize(30).fontWeight(FontWeight.Bold).width("100%")
            Text(this.Data.honor)
              .fontSize(15).width("100%")
          }
        }.justifyContent(FlexAlign.Start).width("10%").padding({left:"10%"})
        .width("95%").height("10%").borderRadius(10).margin({top:10})
        Divider().margin({top:10}).width("90%")
        Text(this.Data.inform)
          .width("95%").padding(10).margin({top:10}).textAlign(TextAlign.Start)
      }
      .width("95%").height("70%").borderRadius(10).margin({top:10}).borderColor("#f0f0f0").shadow({radius:1,offsetX:2,offsetY:2,color:"#c0c0c0"})
      .linearGradient({
        direction: GradientDirection.Top, // 渐变方向
        //repeating: true, // 渐变颜色是否重复
        angle:160,
        colors: [["#fbe362", 0.0], ["#f4f4f4", 0.15],["#f0f0f0", 1]] // 数组末尾元素占比小于1时满足重复着色效果
      })
      Button("返回").onClick(()=>{
        router.back({url:'pages/Index'});
      }).width("95%").height("10%").borderRadius(10).type(ButtonType.Normal).backgroundColor("#f4f4f4").fontColor(Color.Black).margin({top:10}).shadow({radius:1,offsetX:2,offsetY:2,color:"#c0c0c0"})
    }.padding({top:10}).width("100%")
  }
}
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
        .width("95%").height("10%").borderRadius(20).margin({top:10})
        Divider().margin({top:10}).width("90%")
        Text(this.Data.inform)
          .width("95%").padding(10).margin({top:10}).textAlign(TextAlign.Start)
      }
      .width("95%").height("70%").backgroundColor("#e0f8eb").borderRadius(20).margin({top:10})
      Button("返回").onClick(()=>{
        router.back({url:'pages/Index'});
      }).width("95%").height("10%").borderRadius(20).type(ButtonType.Normal).backgroundColor("#a8d8b9").fontColor(Color.Black).margin({top:10})
    }.padding({top:10}).width("100%")
  }
}
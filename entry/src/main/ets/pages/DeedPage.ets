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
      Image(this.imgurl).width(60).height(60)
      Column(){
        Text(this.name)
          .fontSize(30).fontWeight(FontWeight.Bold).width("100%")
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
          .width("100%").height("10%").borderRadius(20).backgroundColor("#e0f8eb")
          .margin({top:10})
          .onClick(()=>{
            router.pushUrl({
              url: 'pages/DeedMore',
              params: {
                data: item,
              }})
          })
        })
      }.width("95%")
    }.width('100%').height('100%').padding({ top: 5 })
  }
}
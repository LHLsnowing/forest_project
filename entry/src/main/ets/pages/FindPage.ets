import { DataOp,FindData } from '../DataOp/DataOp'
import router from '@ohos.router'
@Entry
@Component
export default struct find{
  @State Data:FindData[]=DataOp.getFind()
  @State alignListItem: ListItemAlign = ListItemAlign.Start
  build(){
    Column() {
      Row(){
        List({initialIndex:0}){
          ForEach(this.Data,item=>{
            ListItem(){
              picture({data:item})
            }
            .margin({bottom:5})
          },item=>item.id.toString())
        }
        .width('100%')
        .height('100%')
        .lanes({minLength:200, maxLength:200})
        .alignListItem(this.alignListItem)
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}

@Component
struct picture{
  private data:FindData
  build() {
    Column(){
      Row(){
        Image(this.data.imgurl)
          //.objectFit(ImageFit.Contain)
          .height('100%')
          .width('100%')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/FindMore',
              params:{
                data1:this.data
              }
            })
              .then(()=>{
                //success
              })
              .catch(err =>{
                console.error('pushUrl failed, code is ${err.code}, message is ${err.message}')
              })
          })
      }
      .width('100%')
      .height('92%')
      .backgroundColor(Color.White)
      Row(){
        Text(this.data.title)
          .fontSize(20)
          .fontColor(Color.White)
          .height('100%')
          .width('100%')
          .textAlign(TextAlign.Center)
      }
      .border({
        radius:{topLeft:0,topRight:0,bottomLeft:20,bottomRight:20}
      })
      .backgroundColor('#a8d8b9')
      /*.linearGradient({
        direction:GradientDirection.Right,
        repeating: true,
        colors:[[0x1b813e,0.0],[0x227d51,0.3],[0x24936e,0.5]]
      })*/
      .width('100%')
      .height('8%')
    }
    .width('100%')
    .height(300)
  }
}
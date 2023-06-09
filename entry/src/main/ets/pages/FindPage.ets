import { DataOp,FindData } from '../DataOp/DataOp'
import router from '@ohos.router'
@Entry
@Component
export default struct find{
  @State Data:FindData[]=DataOp.getFind()
  @State alignListItem: ListItemAlign = ListItemAlign.Start
  build(){
    Column() {
      Flex({wrap:FlexWrap.Wrap}){
        List(){
          ForEach(this.Data,item=>{
            ListItem(){
              picture({data:item})
                .margin({bottom:5})
            }
          })
        }.lanes({minLength:200,maxLength:200})
      }
    }
    .width('100%')
    .height('100%')
  }
}

@Component
struct picture{
  private data:FindData
  build() {
    Column(){
        Image(this.data.imgurl)
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
          }).width('100%').height('92%').objectFit(ImageFit.Fill)

      Row(){
        Text(this.data.title)
          .fontSize(20)
          .fontColor(Color.White)
          .height('100%')
          .width('100%')
          .textAlign(TextAlign.Center)
      }
      .backgroundColor("#6e9abf").width('100%').height('8%')
    }.shadow({radius:1,offsetX:7,offsetY:7,color:"#c0c0c0"})
    .width('95%')
    .height("40%")
    .align(Alignment.Center)
    .margin({bottom:10,left:"2%",right:"2%"})
  }
}

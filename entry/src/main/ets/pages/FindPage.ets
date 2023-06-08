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
            .border({width:1,color: Color.Green})
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
  }
}

@Component
struct picture{
  private data:FindData
  build() {
    Column(){
      Row(){
        Image(this.data.imgurl)
          .objectFit(ImageFit.Contain)
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
      .height('90%')

      Row(){
        Text(this.data.title)
          .fontSize(20)
          .height('100%')
          .width('100%')
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .height('10%')
    }
    .width('100%')
    .height(300)
  }
}
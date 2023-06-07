import {FindData} from '../DataOp/DataOp'
import {DataOp} from '../DataOp/DataOp'
import web_webview from '@ohos.web.webview'
@Entry
@Component
export struct find{
  @State alignListItem: ListItemAlign = ListItemAlign.Start
  @State arr: FindData[] = DataOp.getFind()
  build(){
    Column() {
      Row() {
        Text('发现')
          .textAlign(1)
          .width("100%")
          .height("8%")
          .fontSize('25sp')
      }
      .backgroundColor('#f7f7f7')

      List({space: 3,initialIndex: 0}){
        ForEach(this.arr,(item)=>{
          ListItem(){
            Column(){
              Row(){
                Image(item.imgurl)
                  .objectFit(ImageFit.Contain)
                  .height('100%')
                  .width('100%')
              }
              .width('100%')
              .height('90%')
              Row(){
                Text('' + item.title)
                  .width('100%')
                  .height('100%')
                  .fontSize(16)
                  .textAlign(TextAlign.Center)
                  .borderRadius(5)
              }
              .height('10%')

            }

          }
          .border({width:1, color:'#BDE895'})
          .width('100%')
          .height('50%')
        },item=>item.id.toString())
      }
      .height('92%')
      .width('100%')
      .alignListItem(this.alignListItem)
      .lanes({minLength:200,maxLength:200})
    }
    .width('100%')
    .height('100%')
  }
}


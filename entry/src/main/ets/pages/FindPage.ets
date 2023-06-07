import { DataOp } from '../DataOp/DataOp'
import {FindData} from '../DataOp/DataOp'

@Entry
@Component
struct find{
  @State Data:FindData[]=DataOp.getFind()
  @State alignListItem: ListItemAlign = ListItemAlign.Start
  build(){
    Column() {
      Row() {
        Text('微信')
          .textAlign(1)
          .width("100%")
          .height("8%")
          .fontSize('25sp')
      }
      .backgroundColor('#f7f7f7')
    }
    .width('100%')
    .height('100%')
  }
}
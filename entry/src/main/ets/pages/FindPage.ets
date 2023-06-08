import { DataOp,FindData } from '../DataOp/DataOp'

@Entry
@Component
export default struct find{
  @State Data:FindData[]=DataOp.getFind()
  @State alignListItem: ListItemAlign = ListItemAlign.Start
  build(){
    Column() {
      Row() {

      }
      .backgroundColor('#f7f7f7')
    }
    .width('100%')
    .height('100%')
  }
}
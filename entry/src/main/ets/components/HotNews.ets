// NewsPage 热门资讯部分
import { DataOp,NewsData } from "../DataOp/DataOp";
import data from '@ohos.telephony.data';

@Preview
@Component

struct HotNews {
  private result: NewsData[] = DataOp.getNews();
  //private arr:number[] = [0,1,2]
  build() {
    Column() {
      Text(this.result[1].title)
      List({ space: 20, initialIndex: 0 }) {
        ForEach(this.result, (item) => {
          ListItem() {
            Text(""+item.title) // 待改
              .width('100%').height(100).fontSize(16)
              .textAlign(TextAlign.Center).borderRadius(10).backgroundColor(0xFFFFFF)
          }
        }, item => item)
      }.width('90%')
    }.width('100%').height('100%').backgroundColor(0xDCDCDC).padding({ top: 5 })
  }
}

// NewsPage 热门资讯部分
import { DataOp,NewsData } from "../DataOp/DataOp";
import data from '@ohos.telephony.data';

@Preview
@Component

export default struct HotNews {
  private result: NewsData[] = DataOp.getNews();
  build() {
    Column() {
      // Text(""+this.result.length)
      Divider(); //分割线
      Text("热门资讯")
        .width("100%")
        .fontSize(20)
        .textAlign(TextAlign.Center)
        .margin("10px")
      Divider();
      List({ space: 1, initialIndex: 0 }) {
        ForEach(this.result, (item) => {
          ListItem() {
            Text(item.title) // 待改
              .width('100%').height(80).fontSize(16)
              .margin("0")
              .border({width:1})
              .textAlign(TextAlign.Start).borderRadius(2).backgroundColor(0xFFFFFF)
          }
        })
      }.width('90%')
    }.width('100%').height('100%').backgroundColor(0xDCDCDC).padding({ top: 5 })
  }
}

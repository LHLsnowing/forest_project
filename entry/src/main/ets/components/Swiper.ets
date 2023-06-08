// NewsPage-轮播图
import { DataOp,NewsData } from "../DataOp/DataOp";
import router from '@ohos.router';
class MyDataSource implements IDataSource {
  public list: NewsData[] = DataOp.getNews() //result数组 内涵url title imgurl id
  private listener: DataChangeListener

  totalCount(): number {
    return this.list.length
  }

  getData(index: number): any {
    return this.list[index]
  }

  registerDataChangeListener(listener: DataChangeListener): void {
    this.listener = listener
  }

  unregisterDataChangeListener() {
  }
}

@Preview
@Component
export default  struct SwiperExample {
  private swiperController: SwiperController = new SwiperController()
  //private result:NewsData[] = DataOp.getNews();
  private data: MyDataSource = new MyDataSource();
  @State urlValue:String =""; // 作为参数，result中url

  routePage(){
    router.pushUrl({
      url: 'pages/NewsMore',
      params: {
        value: this.urlValue,
      },
    }).then(() => {
      // success
    })
      .catch(err => {
        console.error(`pushUrl failed, code is ${err.code}, message is ${err.message}`);
      });
  }
  build() {
    Column({ space: 10 }) {
      Swiper(this.swiperController) {
        LazyForEach(this.data, (item: NewsData) => {
          Image(item.imgurl)
            .width("100%")
            .height(300)
            .onClick(()=>{
              this.urlValue=item.url;
              this.routePage();
            })

        }, item => item)
      }
      .cachedCount(2)
      .index(1)
      .autoPlay(true)
      .interval(2000)
      .indicator(true)
      .loop(true)
      .duration(1000)
      .itemSpace(0)
      .curve(Curve.Linear)
      .onChange((index: number) => {
        console.info(index.toString())
      })
      // .onClick() 用来跳转

    }.width('100%')
  }
}
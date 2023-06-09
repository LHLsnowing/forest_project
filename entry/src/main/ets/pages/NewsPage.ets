//资讯页面
import SwiperExample from "../components/Swiper";
import HotNews from "../components/HotNews";

@Preview
@Component
export default struct NewsPage{
  build(){
    Column(){
      Flex({direction:FlexDirection.Column}){ //纵 flex
        SwiperExample()
          .width("100%")
        HotNews()
          .align(Alignment.Center)
          .width("100%")
      }
    }
  }
}
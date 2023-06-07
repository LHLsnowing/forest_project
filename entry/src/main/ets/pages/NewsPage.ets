//资讯页面
import SwiperExample from "../components/Swiper"

@Preview
@Component
struct NewsPage{
  build(){
    Column(){
      SwiperExample()
        .width("100%")
        .height("50%")
    }
  }
}
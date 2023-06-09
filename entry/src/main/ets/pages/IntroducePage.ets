//介绍页面组件
import router from '@ohos.router';
@Preview
@Component
export default struct IntroducePage {
  private msg:string ="林长制，是指按照“分级负责”原则，构建省市县乡村五级林长制体系，各级林长负责督促指导本责任区内森林资源保护发展工作，协调解决森林资源保护发展重大问题，依法查处各类破坏森林资源的违法犯罪行为";
  build(){
    Column(){
      Flex({direction:FlexDirection.Column}){
        Column(){
          Text("林长制")
            .fontSize(45)
            .fontWeight(FontWeight.Bold)
            .textAlign(TextAlign.Center)
            .opacity(0.8)
            .padding({bottom:20,top:10})
            .width("100%")
        }.backgroundColor("#f0f0f0").margin({left:20,top:20}).borderRadius(10).width("50%").shadow({radius:1,offsetX:3,offsetY:3,color:"#c0c0c0"})
        Column(){
          Text("百度百科林长制(点击链接)")
            .margin({top:10})
            .padding({bottom:5,right:10})
            .fontWeight(FontWeight.Medium)
            .onClick(()=>{
              router.pushUrl({
                url: 'pages/NewsMore',
                params: {
                  data: "https://baike.baidu.com/item/林长制",
                }})
            })
          Divider().width("90%")
          Text(this.msg)
            .fontSize(15)
            .padding({top:10,left:10,right:10,bottom:30})
        }.borderRadius(10).shadow({radius:1,offsetX:3,offsetY:3,color:"#c0c0c0"})
        .margin({top:10,left:20,right:20,bottom:10})
        .linearGradient({
          direction: GradientDirection.Bottom, // 渐变方向
          angle:170,
          colors: [["#a8d8b9", 0.0], ["#f4f4f4", 0.3],["#f4f4f4", 1]]
        })

        Column(){
          Text("推出目标")
            .padding({top:10,bottom:6})
          Divider().width("90%")
          Text("安徽省安庆市以林长制为抓手，全力全域推进，大力推动林业高质量发展，实现了森林的生态、经济和社会三大效益协同发展。")
            .fontSize(15)
            .padding({top:10,left:10,right:10,bottom:30})
        }
        .borderRadius(10).shadow({radius:1,offsetX:3,offsetY:3,color:"#c0c0c0"}).margin({top:10,left:20,right:20,bottom:10})
        .linearGradient({
          direction: GradientDirection.Bottom, // 渐变方向
          angle:170,
          colors: [["#a8d8b9", 0.0], ["#f4f4f4", 0.3],["#f4f4f4", 1]]
        })
        Column(){
          Text("各地实施")
            .padding({top:10,bottom:6})
          Divider().width("90%")
          Text("安徽省安庆市以林长制为抓手，全力全域推进，大力推动林业高质量发展，实现了森林的生态、经济和社会三大效益协同发展。如今，绿色森林正带来实实在在的真金白银。")
            .fontSize(15)
            .padding({top:10,left:10,right:10,bottom:30})
        }
        .borderRadius(10).shadow({radius:1,offsetX:3,offsetY:3,color:"#c0c0c0"}).margin({left:20,right:20,bottom:10})
        .linearGradient({
          direction: GradientDirection.Bottom, // 渐变方向
          angle:170,
          colors: [["#a8d8b9", 0.0], ["#f4f4f4", 0.3],["#f4f4f4", 1]]
        })

        Column(){
          Text("国务院政策")
            .padding({top:10,bottom:6})
          Divider().width("90%")
          Text("2019年4月，国家林草局同意支持安徽省创建全国林长制改革示范区。根据《安徽省创建全国林长制改革示范区实施方案》，安徽省提出五大任务17项具体举措，其中包括强化护绿，切实保障林业生态安全，加强自然保护地统一监管、林业资源安全巡护、生物多样性保护")
            .fontSize(15)
            .padding({top:10,left:10,right:10,bottom:30})
        }
        .borderRadius(10).shadow({radius:1,offsetX:3,offsetY:3,color:"#c0c0c0"}).margin({left:20,right:20,bottom:10})
        .linearGradient({
          direction: GradientDirection.Bottom, // 渐变方向
          angle:170,
          colors: [["#a8d8b9", 0.0], ["#f4f4f4", 0.3],["#f4f4f4", 1]]
        })
      }
    }
  }
}
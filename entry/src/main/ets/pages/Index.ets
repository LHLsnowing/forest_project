import find from './FindPage'
import NewsPage from "./NewsPage"
import IntroducePage from "./IntroducePage"
import DeedPage from "./DeedPage"
@Entry
@Component
struct Tab{
  @State currentIndex:number=0 //初始化标签状态g
  @State selectedFontColor:string='#1afa29'    //底部文字选中颜色
  @State fontColor:string='#707070'            //底部文字默认颜色
  @State home1:string='/common/home1.png'      //咨询未选择图标
  @State home2:string='/common/home2.png'      //咨询选择图标
  @State discover1:string='/common/discover1.png'//发现未选择图标
  @State discover2:string='/common/discover2.png'//发现选择图标
  @State tree1:string='/common/tree1.png'        //介绍未选择图标
  @State tree2:string='/common/tree2.png'        //介绍选择图标
  @State person1:string='/common/person1.png'    //事迹未选择图标
  @State person2:string='/common/person2.png'    //事迹选择图标
  @Builder TabBuilder(index:number, imageSrc1:string, imageSrc2:string, tabName:string){
    /*
    * 编辑者：李锦鹏
    * index: 标签序号
    * imageSrc1: 选择前标签样式
    * imageSrc2：选择后标签样式
    * tabName：标签名称
    * fontColor：选择前名称颜色
    * selectedFontColor：选择后标签颜色
    */
    Column(){
      Image(this.currentIndex == index ? imageSrc2:imageSrc1) //选中时图标的变化
        .width(24)
        .height(24)
        .margin({bottom:4})
        .objectFit(ImageFit.Contain)
      Text(tabName)
        .fontSize(36)
        .fontColor(this.currentIndex == index ? this.selectedFontColor:this.fontColor)//选中时文本颜色变化
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.width('100%')
  }

  build(){
    Stack(){
      Tabs({barPosition: BarPosition.End}){
        TabContent(){
          Column(){
            Text('资讯')
              .textAlign(1)
              .width("100%")
              .height("8%")
              .fontSize('25sp')
              .backgroundColor("#F7F7F7")
            //此处调用资讯组件
            NewsPage()
          }
        }
        .tabBar(this.TabBuilder(0,this.home1,this.home2,'资讯'))
        TabContent(){
          Column(){
            Text('发现')
              .textAlign(1)
              .width("100%")
              .height("8%")
              .fontSize('25sp')
              .backgroundColor("#F7F7F7")
            //此处调用发现组件
            find()
          }
        }
        .tabBar(this.TabBuilder(1,this.discover1,this.discover2,'发现'))
        TabContent(){
          Column(){
            Text('介绍')
              .textAlign(1)
              .width("100%")
              .height("8%")
              .fontSize('25sp')
              .backgroundColor("#F7F7F7")
            Divider()
            IntroducePage()
            //此处调用介绍组件
          }
        }
        .tabBar(this.TabBuilder(2,this.tree1,this.tree2,'介绍'))
        TabContent(){
          Column(){
            Text('事迹')
              .textAlign(1)
              .width("100%")
              .height("8%")
              .fontSize('25sp')
              .backgroundColor("#F7F7F7")
            //此处调用事迹组件
          DeedPage()
          }
        }
        .tabBar(this.TabBuilder(3,this.person1,this.person2,'事迹'))
      }
      .barWidth('100%')
      .barHeight('10%')
      .barMode(BarMode.Fixed)
      .vertical(false)
      .onChange((index: number)=>{
        this.currentIndex=index
      })
    }
    .width('100%')
  }
}


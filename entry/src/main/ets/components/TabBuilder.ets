@Entry
@Component
struct TabBuilder{
  @State currentIndex:number=0 //初始化标签状态
  @State selectedFontColor:string='#1afa29'    //底部文字选中颜色
  @State fontColor:string='#707070'            //底部文字默认颜色
  @State home1:string='../common/home1.png'
  @State home2:string='../common/home2.png'
  @State discover1:string='../common/discover1.png'
  @State discover2:string='../common/discover2.png'
  @State tree1:string='../common/tree1.png'
  @State tree2:string='../common/tree2.png'
  @State person1:string='../common/person1.png'
  @State person2:string='../common/person2.png'
  @Builder TabBuilder(index:number, imageSrc1:string, imageSrc2:string, tabName:string){
    /*
    * index: 标签序号
    * imageSrc1: 选择前标签样式
    * imageSrc2：选择后标签样式
    * tabName：标签名称
    * fontColor：选择前名称颜色
    * selectedFontColor：选择后标签颜色
    */
    Column(){
      Image(this.currentIndex == index ? imageSrc2:imageSrc1)
        .width(24)
        .height(24)
        .margin({bottom:4})
        .objectFit(ImageFit.Contain)
      Text(tabName)
        .fontSize(36)
        .fontColor(this.currentIndex == index ? this.selectedFontColor:this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.width('100%')
  }

  build(){
      Stack(){
        Tabs({barPosition: BarPosition.End}){
          TabContent(){
            home()
          }
          .tabBar(this.TabBuilder(0,this.home1,this.home2,'资讯'))
          TabContent(){
            discover()
          }
          .tabBar(this.TabBuilder(0,this.discover1,this.discover2,'发现'))
          TabContent(){
            tree()
          }
          .tabBar(this.TabBuilder(0,this.tree1,this.tree2,'介绍'))
          TabContent(){
            person()
          }
          .tabBar(this.TabBuilder(0,this.person1,this.person2,'事迹'))
        }
      }
  }
}

@Component
struct home{
  build(){
    Column(){
      Row(){
        Text('资讯')
          .textAlign(1)
          .width("100%")
          .height("8%")
          .fontSize('25sp')
      }
      .backgroundColor('#dbdbdb')
    }
    .width('100%')
    .height('100%')
  }
}

@Component
struct discover{
  build(){
    Column(){
      Row(){
        Text('发现')
          .textAlign(1)
          .width("100%")
          .height("8%")
          .fontSize('25sp')
      }
      .backgroundColor('#dbdbdb')
    }
  }
}

@Component
struct tree{
  build(){
    Column(){
      Row(){
        Text('介绍')
          .textAlign(1)
          .width("100%")
          .height("8%")
          .fontSize('25sp')
      }
      .backgroundColor('#dbdbdb')
    }
  }
}

@Component
struct person{
  build(){
    Column(){
      Row(){
        Text('事迹')
          .textAlign(1)
          .width("100%")
          .height("8%")
          .fontSize('25sp')
      }
      .backgroundColor('#dbdbdb')
    }
  }
}
//发现页面
import router from '@ohos.router'
import { DataOp,FindData } from '../DataOp/DataOp'
@Entry
@Component
struct FindMore{
  @State data: FindData = router.getParams()['data1']
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State isAutoPlay: boolean = false
  @State showControls: boolean = true
  controller: VideoController = new VideoController()
  build(){
    Column(){
      Row(){
        Column(){
          Image('/common/back.png')
            .objectFit(ImageFit.Contain)
            .height('100%')
            .width('100%')
            .margin({left:5})
            .onClick(()=>{
              router.back()
            })
        }
        .height('100%')
        .width('10%')
        Column(){
          Text(this.data.title)
            .fontSize(20)
            .height('100%')
            .width('100%')
            .textAlign(TextAlign.Center)
        }
        .height('100%')
        .width('90%')
      }
      .width('100%')
      .height('8%')
      .backgroundColor('#f7f7f7')
      Row(){
        Video({
          src: this.data.url,
          previewUri: this.data.imgurl,
          currentProgressRate: this.curRate,
          controller: this.controller
        }).width('100%')
          .height(250)
          .autoPlay(this.isAutoPlay)
          .controls(this.showControls)

      }
    }
  }
}
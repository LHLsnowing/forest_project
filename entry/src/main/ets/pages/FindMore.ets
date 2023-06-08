//发现页面
import router from '@ohos.router'
import colorSpaceManager from '@ohos.graphics.colorSpaceManager'
import {FindData } from '../DataOp/DataOp'
@Entry
@Component
struct FindMore{
  @State data: FindData = router.getParams()['data1']
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State isAutoPlay: boolean = false
  @State showControls: boolean = true
  @State fullScreen: boolean = false
  controller: VideoController = new VideoController()
  build(){
    Column(){
      Row(){
        Column(){
          Image('/common/back.png')
            .objectFit(ImageFit.Contain)
            .height(24)
            .width(24)
            .margin({left:10,top:15})
            .onClick(()=>{
              router.back()
            })
        }
        .height('100%')
        .width('10%')
        Column(){
          Text(this.data.title)
            .fontSize(20)
            .fontColor(Color.White)
            .textAlign(TextAlign.Center)
            .height('100%')
            .width('100%')
        }
        .height('100%')
        .width('90%')
      }
      .width('100%')
      .height('8%')
      .backgroundColor(Color.Black)
      Row(){
        Video({
          src: this.data.url,
          previewUri: this.data.imgurl,
          currentProgressRate: this.curRate,
          controller: this.controller
        }).width('100%')
          .height(250)
          .margin({bottom:50})
          .autoPlay(this.isAutoPlay)
          .controls(this.showControls)
          .onStart(()=>{
            console.info('onStart')
          })
          .onPause(()=>{
            console.info('onPause')
          })
          .onFinish(()=>{
            console.info('onFinish')
          })
          .onError(()=>{
            console.info('播放错误')
          })
          .onPrepared((e) => {
            console.info('onPrepared is ' + e.duration)
          })
          .onSeeking((e) => {
            console.info('onSeeking is ' + e.time)
          })
          .onSeeked((e) => {
            console.info('onSeeked is ' + e.time)
          })
          .onUpdate((e) => {
            console.info('onUpdate is ' + e.time)
          })
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Black)
    }
  }
}
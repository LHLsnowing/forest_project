# 项目开发过程参考文档

```python
目录下文件说明
/ets/ #根目录
/ets/pages #页面目录
/ets/pages/index.ets #基础界面用于放主页面tabs
/ets/pages/NewsPage.ets #资讯页面组件写在这里
/ets/pages/FindPage.ets #发现页面组件写在这里
/ets/pages/IntroducePage.ets #介绍页面组件写在这里
/ets/pages/DeedPage.ets #事迹页面组件写在这里
/ets/pages/NewsMore.ets #资讯详情页面组件写在这里
/ets/pages/FindMore.ets #发现详情页面组件写在这里
/ets/pages/DeedMore.ets #事迹详情页面组件写在这里
/ets/components #存放组件
/ets/
```

## 数据类型说明
>一共有三个需要存储的数据
>>分别是资讯页，发现页，事迹页

资讯数据结构

```python
export interface NewsData{
  id:number //数据库主键无实际意义
  title:string //标题可在资讯列表显示
  imgurl:string //图片链接可在资讯列表显示
  url:string //资讯链接主要用于资讯详情页
}
```

发现数据结构

```python
export interface FindData{
  id:number //数据库主键无实际意义
  title:string //标题可在发现显示
  imgurl:string //图片链接可在发现展示
  url:string //视频链接主要用于播放视频
}
```

事迹数据结构

```python
export interface DeedData{//事迹数据类型
  id:number //数据库主键无实际意义
  name:string //名字可在事迹列表显示
  imgurl:string //图片链接可用于显示人物头像
  honor:string //放在人物名字下小字用于比如荣获***
  inform:string //主要对人物跳转之后详情页介绍，存放大段文字
}
import {NewsData,FindData,DeedData,DataOp} from  "../DataOp/DataOp"
```
## 如何使用？
```python
导入的代码：
import {NewsData,FindData,DeedData,DataOp} from  "../DataOp/DataOp"
调用的代码：
创建对应数组的类型，直接调用DataOp的静态方法
如：
Data:NewsData[]=DataOp.getNews()
此时Data里存放了数据
遍历或者是直接使用即可
如
Text(this.Data[0].title)
Image(this.Data[0].imgurl)
```

## 页面

>需要有7个页面进行编写
## 资讯页面
相关参考写在这里

## 发现页面
相关参考写在这里

## 事迹页面
相关参考写在这里

## 介绍页面（具体形式还没想好，暂时不处理
相关参考写在这里

## 资讯详情页面（web访问
相关参考写在这里

## 发现详情页面（视频播放
相关参考写在这里

## 事迹详情页面（直接获取text进行展示
相关参考写在这里
export interface NewsData{//资讯数据类型
  id:number //数据库主键无实际意义
  title:string //标题可在资讯列表显示
  imgurl:string //图片链接可在资讯列表显示
  url:string //资讯链接主要用于资讯详情页
}
export interface FindData{//发现数据类型
  id:number //数据库主键无实际意义
  title:string //标题可在发现显示
  imgurl:string //图片链接可在发现展示
  url:string //视频链接主要用于播放视频
}
export interface DeedData{//事迹数据类型
  id:number //数据库主键无实际意义
  name:string //名字可在事迹列表显示
  imgurl:string //图片链接可用于显示人物头像
  honor:string //放在人物名字下小字用于比如荣获***
  inform:string //主要对人物跳转之后详情页介绍，存放大段文字
}

export class  DataOp{
  static getNews(){
    const result=[]
    result[0]={id:0,title:"习近平在内蒙古巴彦淖尔考察并主持召开加强荒漠化综合防治和推进“三北”等重点生态工程建设座谈会",imgurl:"https://www.forestry.gov.cn/u/cms/www/202306/07075836jrj6.jpg",url:"https://www.forestry.gov.cn/lyj/1/mrtt/20230606/504972.html"};
    result[1]={id:1,title:"山东济宁扎实推进全国林业和草原行政案件统计分析系统填报工作",imgurl:"https://th.bing.com/th/id/R.320ef6667c51563496ef7460e012679a?rik=Ko06onQbeinySA&riu=http%3a%2f%2fpic1.arkoo.com%2fyuyanqi%2fpicture%2fo_1dfb6eu1o15rd1m7qdhd91lrrc.jpg&ehk=NxTO13YU0VLNTD0fN8TKj%2bw2sMp7pDa3%2bJ3AWNaZYm4%3d&risl=&pid=ImgRaw&r=0",url:"https://www.forestry.gov.cn/lyj/1/slzhxx/20230516/503912.html"};
    result[2]={id:2,title:"北京怀柔14个镇乡实现新型集体林场全覆盖",imgurl:"https://th.bing.com/th/id/R.a40f27cc59743d112bc533e5724475aa?rik=KYWKUIVC4FeLVg&riu=http%3a%2f%2fp2.qhimgs4.com%2ft01b0f1b96ab8b80315.jpg&ehk=z9RvXD1nOnI4y33bA%2buJ%2b13RK74YDN92yyUtT3O0Br0%3d&risl=&pid=ImgRaw&r=0",url:"https://www.forestry.gov.cn/c/www/lcgylc/366780.jhtml"};
    return result
  }
  static getFind(){
    const result=[]
    result[0]={id:0,title:"林场风采",imgurl:"/common/picture2.png",url:"https://www.forestry.gov.cn/u/cms/www/202306/07093314vpkm.mp4"};
    result[1]={id:1,title:"习总书记为我们算出生态帐",imgurl:"/common/picture1.png",url:"http://www.forestry.gov.cn/html/main/main_586/20230303081811522399946/20230303082501335633493_.mp4"};
    result[2]={id:2,title:"讲不完的油茶树的故事",imgurl:"/common/picture3.png",url:"http://www.forestry.gov.cn/html/main/main_586/20230225083200111432787/20230225083906501549840_.mp4"};
    result[3]={id:3,title:"走进塞外明珠",imgurl:"/common/picture4.png",url:"http://www.forestry.gov.cn/u/cms/www/202306/07085023ww8q.mp4"};
    result[4]={id:4,title:"走进巴彦淖尔临河区国营新华林场",imgurl:"/common//picture5.png",url:"http://www.forestry.gov.cn/u/cms/www/202306/07170545txah.mp4"}
    return result
  }
  static getDeed(){
    const result=[]
    result[0]={id:0,name:"王明海",imgurl:"/common/person1.png",honor:"守好森林稳定脱贫",inform:"文字信息123456详情"};
    result[1]={id:1,name:"王王王2",imgurl:"/common/person1.png",honor:"文字荣耀",inform:"文字信息123456详情"};
    result[2]={id:2,name:"王王王3",imgurl:"/common/person1.png",honor:"文字荣耀",inform:"文字信息123456详情"};
    return result
  }
}
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
    result[0]={id:0,name:"王明海",imgurl:"/common/character1.png",honor:"吉林省汪清县汪清镇沙北村",inform:"\t王明海2017年被选聘为生态护林员，管护着660亩集体林。他每月巡护至少20天，每天巡护一二十公里。春秋两季，他一日不休，每天6点开始巡山一直到天黑。清明假期，早上四五点就要出门；农历大年三十也在管区内向上坟的人们宣传防火。\n\t3年多来，王明海处置火灾隐患20多起，制止挖沙破坏植被行为6次，制止多起盗伐林木、非法开垦等行为，责任区内未发生过一起破坏森林案件。“生态护林员工作每年有1万元稳定收入，日子比以前好多了，现在我已脱贫，对奔小康充满了信心。”王明海说。"};
    result[1]={id:1,name:"朱生玉",imgurl:"/common/character2.png",honor:"甘肃省天祝县安远镇柳树沟村",inform:"\t提起柳树沟村的护林，人们首先想到朱生玉。2017年，朱生玉被选聘为生态护林员，负责守护小柳树沟900多亩林地。3年来，他跑遍了林区，对林区的地形地貌、资源状况了然于胸，被村民们誉为林区的“活地图”。\n\t“家里农活不耽误，还有8000元劳务报酬，好日子才刚刚开始。”朱生玉常跟村里人说。每到防火重点期，他就背着干粮在管护区内的各个坟头巡护蹲守，上坟的人走了，他要仔细检查有无火星，确保纸灰全部熄灭。在防火安全期，他挨家挨户宣传森林防火、野生动物保护和林草政策法规，并自发到林区写标语、立警示牌。在他的带动下，村民防火意识和生态意识明显增强。他所管护的责任区未发生过森林火灾及乱砍滥伐现象。"};
    result[2]={id:2,name:"多贡",imgurl:"/common/character3.png",honor:"西藏自治区芒康县曲孜卡乡小昌都村",inform:"\t多贡2016年被选聘为小昌都村生态护林员。5年来，他一直从事护林防火、保护野生动植物、阻止乱砍滥伐等工作。“生态护林员这个岗位，让我在家门口就业，保护自己生活的土地，我怎么能不竭尽全力。”多贡说。\n\t多贡曾制止过不少偷伐树木行为。有一年冬天晚上8点左右，多贡到山上转悠，听到窸窸窣窣的声音，山林中还透着光亮，他立刻意识到情况不对，通知护林员伙伴后，便向伐树地奔去并大声喝止。偷伐树木的人听到声音后，连工具都没拿就跑了。“你这天天巡山，上山砍树的人都记住你了。”多贡老婆说。“记住我才好呢，如果我的名字能吓到那些砍树的就好了。”多贡说。"};
    result[3]={id:3,name:"孙绍兵",imgurl:"/common/character4.png",honor:"河南省新县泗店乡邹河村",inform:"\t孙绍兵管护着邹河村7020亩山场。工作中，他边学边做，一面熟悉政策法规、安全防火、野生动植物保护等业务知识，一面通过在醒目地方张贴标语、在重点地段用喇叭广播，甚至走家串户向村民宣传林业政策和法律法规。\n\t“天气越恶劣，犯罪分子盗伐林木、偷拉私运和乱捕滥猎越猖獗，越是要加强巡护。”孙绍兵说。夏季，孙绍兵巡视山林，深夜还在公路河边巡查；冬季，他告诫进山人员注意森林防火。每逢重要防火节点，他更是早出晚归。面对妻子的埋怨，他说：“虽然我能力有限，但政府聘我当生态护林员，就是对我的信任，我要好好干。”几年来，他所管护的责任区没有发生过一起乱砍滥伐、森林火灾。"};
    result[4]={id:4,name:"陈刚",imgurl:"/common/character5.png",honor:"湖北省五峰县五峰镇水浕司村",inform:"\t陈刚管护着辖区5000余亩山林。一次巡护中，他发现有疑似松材线虫病枯死松树，立即向林业管理站报告，随后迅速组织护林员对全村44286亩天然林进行地毯式排查并上报，有效遏制了松材线虫病的蔓延。\n\t陈刚总是在第一时间赶到现场劝阻砍伐树木等行为，向村民耐心讲解天然林保护政策，现在全村无乱砍滥伐现象。有人问他怎么知道这么多知识，他说，“不加强学习怎么干得好工作，自己腰杆子不硬怎么管得好别人？”\n\t除了日常巡护，陈刚还抽空植树。4年多来，在他的影响下，村公路沿线、农户房前屋后种植杉木、核桃等2.5万多株。"};
    return result
  }
}
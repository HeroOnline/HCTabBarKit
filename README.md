# HCTabBarKit

#Summary【摘要】

天朝以及全球最牛逼的TabBar框架：<b><a href='https://github.com/HeroOnline/HCTabBarKit'>HCTabBarKit<a/></b>


支持网易新闻、天猫、支付宝、淘宝、京东、易信、陌陌、知乎、美团、1号店、QQ空间、微视、in、喜马拉雅、微博、蘑菇街、美丽说、聚美优品、简书、QQ、微信、36氪 等App的 TabBar 功能 <br/><br/>

作者：<a href='https://github.com/HeroOnline'>HeroCao</a> <br/>
邮箱：heroonlinecao@gmail.com、heroonlinecao@126.com  <br/>
QQ群：482682853，验证信息：HCTabBarKit <br/><br/>

<p style='color:Red'>Swift版本即将上线</p> <br/><br/>

#Requirements【要求】
iOS 7.0+ 、Xcode 6.0＋


## <a id="Introduction"></a> Introduction【介绍】
- 支持 纯代码、单个Storyboard、<b color='red'>多个Storyboard开发方式</b><br/>
多个Storyboard方式，彻底解决多人团队开发中，基于一个Storyboard开发，频繁出现代码冲突问题！

- 支持 BadgeValue 、Badge、单击可以切换Tab、单击可以刷新当前Tab的UITableView数据、双击可以切换Tab、双击Tab可以刷新当前Tab的UITableView数据、中间Tab为特殊效果、中间Tab的图片可以旋转和缩放、自定义Badge的位置、调整Tab背景图片模式、动态改变Badge的图片、动态BadgeValue的字体大小和颜色、可以设置Tab高亮背景图片、可以设置Tab正常状态背景图片

- 解决iOS7中SDK自带的UINavigationController屏幕左侧手势识别问题、使用hc_hidesTabBarWhenPushed替代hidesBottomBarWhenPushed、支持Tab需要权限验证（例如：需要登入才能切换到某一个Tab）、Tab的图片可以是包含标题的图片，也可以是图片和标题分开、可以设置Tab标题字体大小和颜色、可以设置Tab的凸起效果

- 可以使用Delegate和Block来实现

<br/><br/><br/>

#<b>国内下载量比较大的App的TabBar实现效果分析(有可能有漏掉的！)</b><br/>

- 网易新闻（需要权限验证、有Badge、不同Tab的切换，第一次单击／双击是切换Tab，切换之后单击／双击是刷新UITableView数据）<br/><br/>

- 天猫：Badge、需要权限验证、中间Tab有特殊效果（动画效果）<br/><br/>

- 支付宝：Badge <br/><br/>

- 淘宝：Badge、需要权限验证、不同Tab的切换，有的Tab第一次单击／双击是切换Tab，切换之后单击／双击是滚动到UITableView最顶部 <br/><br/>

- 京东：Badge、BadgeValue、需要权限验证 <br/><br/>

- 易信：Badge、BadgeValue、需要权限验证 <br/><br/>

- 陌陌：Badge、BadgeValue、需要权限验证 <br/><br/>

- 知乎：Badge、BadgeValue、需要权限、双击Tab刷新UITableView数据 <br/><br/>

- 美团：Badge、BadgeValue、需要权限验证、不同Tab的切换，有的Tab第一次单击／双击是切换Tab，切换之后单击／双击是滚动到UITableView最顶部 <br/><br/>


- 1号店：Badge、BadgeValue、需要权限验证、不同Tab的切换，第一次单击／双击是切换Tab，切换之后单击／双击是刷新UITableView数据 <br/><br/>


- QQ空间：Badge、BadgeValue、不同Tab的切换，第一次单击／双击是切换Tab，切换之后单击／双击是刷新UITableView数据、中间Tab有特殊效果（动画、模糊效果）<br/><br/>

- 微视：Badge、BadgeValue、需要权限验证、不同Tab的切换，第一次单击／双击是切换Tab，切换之后单击／双击是刷新UITableView数据、中间Tab有特殊效果凸出来 <br/><br/>


- in：Badge、BadgeValue、需要权限验证、中间Tab有特色效果凸出来 <br/><br/>

- 喜马拉雅：Badge、BadgeValue、需要权限验证、不同Tab的切换，第一次单击／双击是切换Tab，切换之后单击／双击是刷新UITableView数据、中间Tab有特殊效果凸出来 <br/><br/>


- 微博：Badge、BadgeValue、需要权限验证、不同Tab的切换，第一次单击／双击是切换Tab，切换之后单击／双击是刷新UITableView数据、中间Tab有特殊效果（动画、模糊效果） <br/><br/>


- 蘑菇街：Badge、BadgeValue、需要权限验证、不同Tab的切换，第一次单击／双击是切换Tab，切换之后单击／双击是刷新UITableView数据、中间Tab有特殊效果（动画、模糊效果） <br/><br/>


- 好奇心日报：动画隐藏和显示TabBar［HCTabBarKit有这个功能，不过目前暂时不支持］、不同Tab的切换，第一次单击／双击是切换Tab，切换之后单击／双击是刷新UITableView数据 <br/><br/>

- 美丽说：Badge、BadgeValue、需要权限验证、不同Tab的切换，有的Tab第一次单击／双击是切换Tab，切换之后单击／双击是滚动到UITableView最顶部、中间Tab有特殊效果 <br/><br/>

- 聚美优品：切换Tab的时候，手指还没有抬起就切换Tab <br/><br/>


- 简书：Badge、BadgeValue、需要权限验证、中间Tab有特殊效果 <br/><br/>


- QQ：Badge、BadgeValue、不同Tab的切换，有的Tab第一次单击／双击是切换Tab，切换之后单击／双击是滚动到UITableView最顶部 <br/><br/>

- 微信：Badge、BadgeValue、不同Tab的切换，有的Tab第一次单击／双击是切换Tab，切换之后单击／双击是滚动到UITableView最顶部 <br/><br/>




<br/><br/><br/>
##<b>QQ空间TabBar效果图</b> <br/><br/>
<img src='https://github.com/HeroOnline/HCTabBarKit/blob/master/Resources/QQZone.jpg'/>

<br/><br/><br/>
##<b>QQ空间TabBar效果图－横屏</b> <br/><br/>
<img src='https://github.com/HeroOnline/HCTabBarKit/blob/master/Resources/QQZone2.jpg'/>

<br/><br/><br/>

#<b>微博效果图01</b> <br/><br/>
<img src='https://github.com/HeroOnline/HCTabBarKit/blob/master/Resources/weibo01.png'/>

<br/><br/><br/>

#<b>微博效果图02－中间＋效果</b> <br/><br/>
<img src='https://github.com/HeroOnline/HCTabBarKit/blob/master/Resources/weibo02.png'/>

<br/><br/><br/>

#<b>微博效果图03-需要权限验证才能进入Profile Tab</b> <br/><br/>
<img src='https://github.com/HeroOnline/HCTabBarKit/blob/master/Resources/weibo03.png'/>



<br/><br/><br/>

#<b>微博效果图04－登入成功之后才能切换到Profile Tab</b> <br/><br/>
<img src='https://github.com/HeroOnline/HCTabBarKit/blob/master/Resources/weibo04.png'/>


<br/><br/><br/>

#<b>微博效果图05</b> <br/><br/>
<img src='https://github.com/HeroOnline/HCTabBarKit/blob/master/Resources/weibo05.png'/>


<br/><br/><br/>




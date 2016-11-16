# JXLayoutButton
Button的图片和文本的布局方式，左右上下排列

关于实现UIButton的上图下文、上文下图、左图右文、右图左文的布局需求，我也尝试过扩展分类使用EdgeInsets来实列，但总是不太灵活不太如意。
于是我选择了暴力解决办法：使用UIButton的子类，重写layoutSubviews。

详见这篇《UIButton图文布局》http://www.jianshu.com/p/fdc8b7df9130

![JXLayoutButton](https://raw.githubusercontent.com/JiongXing/JXLayoutButton/master/screenshots/1.png)




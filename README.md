# scrollviewAutolayoutTest
UIScrollView  + Masonry 自动化布局测试
#声明
本仓库是为了测试Masonry在UIScrollView中的应用
#总结步骤
1. 创建UIScrollView并添加添加父视图上，设置edge和width
2. 创建contentView添加到ScrollView上，设置edge和width（也可以是edge和scrollView的父视图右边距）
3. 在contentView设置子视图，每个子视图必须设置好具体位置
4. 设置最后一个view与contentView的边距

# 本仓库的创建感谢各位大神的代码提示
- (Masonry)[https://github.com/SnapKit/Masonry]仓库作者(SnapKit)[https://github.com/SnapKit]
- (标哥的公众号)[http://mp.weixin.qq.com/s?__biz=MzIzMzA4NjA5Mw==&mid=400162704&idx=1&sn=ba3f4f9b8f0a1fbb9d88b559bde1cb33#rd]和标哥的相关[demo](https://github.com/CoderJackyHuang/ScrollViewAutolayoutDemo)

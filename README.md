# ChangeShowDemo
换肤Demo

2015-08-06 created

源于一条面试题，让设计一个换肤功能
最初的想法是想在ChangeShowHelper接管控件申请资源的时候，我把这些资源对象保存下来，需要修改的时候直接让资源对象的指针指向新的资源对象。后来实现起来有点不知从何下手,因为nsmutabledictionary不能直接给objectforkey的对象指针赋值，或者是我不会吧。

总是时间有限，于是就换成现在这种保存控件的简单实现方式。还有很多不足的地方，比如对不同控件的支持，同一控件，不同资源对象的管理等等，慢慢完善。


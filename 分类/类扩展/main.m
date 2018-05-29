#import <Foundation/Foundation.h>
#import "Person.h"
/*
 类扩展 (extension)
 1、第一种创建方法：与创建分类相似，在创建 OC 文件中选择 Objective-C 文件中选择 extension 。
 2、第二种创建方法（一般创建方法）：直接在 .m 文件创建
    创建方法：@interface 类名 () @end
    注意：类扩展里的成员变量标识符均为 @private（里面的标识符不能是
 @public ，否则编译器会报错），类扩展里面的方法均为私有方法。外界无法访问。
    这种创建方法的方式，可以实现真正的私有
 */
/*
 类扩展与分类的区别
 1、类别中只能增加方法;
 2、类扩展不仅可以增加方法，还可以增加实例变量(或者合成属性)，只是该实例变量默认是私有类型的(作用范围只能在自身类，而不是子类或其他地方);
 3、类扩展中声明的方法没被实现,编译器会报警,但是类别中的方法没被实现编译器是不会有任何警告的。这是因为类扩展是在编译阶段被添加到类中，而类别是在运行时添加到类中。
 4、类扩展不能像类别那样拥有独立的实现部分(@implementation 部分)，也就是说，类扩展所声明的方法必须依托对应类的实现部分来实现。
 5、定义在 .m 文件中的类扩展方法为私有的,定义在 .h 文件(头文件)中的类扩展方法为公有的。类扩展是在 .m 文件中声明私有方法的非常好的方式。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
    }
    return 0;
}

//
//  MyThread.h
//  多线程例子
//
//  Created by 雷维卡 on 2019/1/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyThread : NSThread
- (instancetype)initWithTarget:(id)target selector:(SEL)selector object:(id)argument;
@end

NS_ASSUME_NONNULL_END

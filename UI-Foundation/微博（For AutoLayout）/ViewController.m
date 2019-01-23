//
//  ViewController.m
//  微博（For AutoLayout）
//
//  Created by 雷维卡 on 2019/1/23.
//

#import "ViewController.h"
#import "ITWeiboCell.h"
@interface ViewController ()
@property (nonatomic, strong) NSArray *weiboArr;
@end

@implementation ViewController
// MARK: Lazy loading weibo data
- (NSArray *)weiboArr {
    if (_weiboArr == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"weibo" ofType:@".plist"];
        NSArray *tempArr = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *arrM = [NSMutableArray array];
        for (NSDictionary *dict in tempArr) {
            ITWeibo *appModel = [ITWeibo weiboWithDict:dict];
            [arrM addObject:appModel];
        }
        _weiboArr = arrM;
    }
    return _weiboArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
// MARK: - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.weiboArr.count;
}
// MARK: - Table view delegate
- (ITWeiboCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"weibo";
    ITWeiboCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    cell.weiboModel = self.weiboArr[indexPath.row];
    return cell;
}

@end

//
//  DXFileCacheManager.m
//  dingDang
//
//  Created by JHT on 2019/2/13.
//  Copyright © 2019年 QC. All rights reserved.
//

#import "DXFileCacheManager.h"

@implementation DXFileCacheManager

- (instancetype)init
{
    if (self = [super init])
    {
        
    }
    
    return self;
}
-(instancetype) initWithBaseCacheName:(NSString *)cacheName
{
    if (self = [super init])
    {
        //创建文件夹
        [self createFolderWithName:cacheName];
    }
    
    return self;
}
#pragma mark - 存储-获取单个数据 
-(void)storgaeObject:(NSObject * _Nonnull)modelObject objectPath:(NSString *) objectPath
{
    
    NSString *pStr = [NSString stringWithFormat:@"%@.achiver",objectPath];
    //拼接路径，格式随意
    NSString * path = [[self documentAchiverPath:objectPath] stringByAppendingPathComponent:@"modelObject.achiver"];//@"modelObject.achiver"
    
    //开始编码存数据
    [NSKeyedArchiver archiveRootObject:modelObject toFile:path];
}


-(NSObject * _Nullable)readModelObjectWithObjectPath:(NSString *) objectPath
{
    NSString *pStr = [NSString stringWithFormat:@"%@.achiver",objectPath];
    //拼接路径
    NSString * path = [[self documentAchiverPath:objectPath] stringByAppendingPathComponent:@"modelObject.achiver"];
    
    //开始解码获取
    return [NSKeyedUnarchiver unarchiveObjectWithFile:path];
}


#pragma mark - 存储-获取数组数据
-(void)storgaeObjects:(NSArray<NSObject *> * _Nonnull)modelObjects WithObjectPath:(NSString *) objectPath
{
    NSString *pStr = [NSString stringWithFormat:@"%@.achiver",objectPath];
    //拼接路径
    NSString * path = [[self documentAchiverPath:objectPath] stringByAppendingPathComponent:@"modelObject.achiver"];
    
    //开始编码存数据
    [NSKeyedArchiver archiveRootObject:modelObjects toFile:path];
}

-(NSArray<NSObject *> * _Nullable)readModelObjectsWithObjectPath:(NSString *) objectPath
{
    NSString *pStr = [NSString stringWithFormat:@"%@.achiver",objectPath];
    //拼接路径
    NSString * path = [[self documentAchiverPath:objectPath] stringByAppendingPathComponent:@"modelObject.achiver"];
    
    //开始解码获取
    return [NSKeyedUnarchiver unarchiveObjectWithFile:path];
}

#pragma mark - CreateFolder
- (void)createFolderWithName:(NSString *)name
{
    //拼接路径
    NSString * path = [self documentAchiverPath:name];
    
    BOOL isDirectory;
    
    //查找是否存在这个文件夹,isDirectory用来判断是文件夹还是文件，如果路径不存在，返回为undefined，表示不能确定
    if ([[NSFileManager defaultManager] fileExistsAtPath:path isDirectory:&isDirectory])
    {
        //存在这个文件夹
        return;//不做操作
    }
    
    //不存在创建文件夹
    else
    {
        NSLog(@"********YYYY不存在,创建文件夹--%@",name);
        [[NSFileManager defaultManager] createDirectoryAtPath:path withIntermediateDirectories:true attributes:nil error:nil];
    }
}

#pragma mark - Getter Function
//沙盒目录

-(NSString *)documentPath
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) firstObject];
}

//沙盒目录下的存储目录，文件夹名自定义
- (NSString *)documentAchiverPath:(NSString *)cacheName {
    return [self.documentPath stringByAppendingPathComponent:cacheName];//SearchRecord
}
//删除 沙盒目录下的存储目录
- (BOOL)removeOfBaseCache:(NSString *)cacheName {
    NSString * path = [self.documentPath stringByAppendingPathComponent:cacheName];
    
    return [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
}
@end

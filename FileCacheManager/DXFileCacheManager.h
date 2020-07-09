//
//  DXFileCacheManager.h
//  dingDang
//
//  Created by JHT on 2019/2/13.
//  Copyright © 2019年 QC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DXFileCacheManager : NSObject
-(instancetype _Nullable ) initWithBaseCacheName:(NSString *_Nullable)cacheName;

//删除 沙盒目录下的存储目录
- (BOOL)removeOfBaseCache:(NSString *_Nullable)cacheName;
//沙盒目录下的存储目录，文件夹名自定义
- (NSString *_Nullable)documentAchiverPath:(NSString *_Nullable)cacheName;

-(NSString *_Nullable)documentPath;
/*
 *  存数据
 */
-(void)storgaeObject:(NSObject * _Nonnull)modelObject objectPath:(NSString *_Nonnull) objectPath;
-(void)storgaeObjects:(NSArray<NSObject *> * _Nonnull)modelObjects WithObjectPath:(NSString *_Nonnull) objectPath;

/*
 *  获取数据
 */
-(NSObject * _Nullable)readModelObjectWithObjectPath:(NSString *_Nonnull) objectPath;
-(NSArray<NSObject *> * _Nullable)readModelObjectsWithObjectPath:(NSString *_Nonnull) objectPath;
@end

NS_ASSUME_NONNULL_END

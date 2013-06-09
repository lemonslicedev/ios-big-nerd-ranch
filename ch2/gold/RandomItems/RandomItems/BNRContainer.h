//
//  BNRContainer.h
//  Random
//
//  Created by Yan Shcherbakov on 2013-06-08.
//  Copyright (c) 2013 One Shot Apps. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSString *containerName;
    NSMutableArray *subItems;
}

- (id)initWithContainerName:(NSString *)name subItem:(id)item;
- (id)initWithContainerName:(NSString *)name subItems:(NSMutableArray *)items;
- (id)initWithContainerName:(NSString *)name subItems:(NSMutableArray *)items valueOfContainer:(int)v;

- (void)setContainerName:(NSString *)name;
- (NSString *)containerName;

- (void)setSubItems:(NSMutableArray *)items;
- (NSMutableArray *)subItems;

- (void)addItem:(id)item;

@end

//
//  BNRContainer.m
//  Random
//
//  Created by Yan Shcherbakov on 2013-06-08.
//  Copyright (c) 2013 One Shot Apps. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"Container Name: %@, Sub Items: %@, Total Container Value: %d", containerName, subItems, valueInDollars];
    
    return descriptionString;
}

- (id)initWithContainerName:(NSString *)name subItem:(id)item
{
    NSMutableArray *items = [[NSMutableArray alloc] initWithObjects:item, nil];
    
    int value = [item valueInDollars];
    
    return [self initWithContainerName:name subItems:items valueOfContainer:value];
}

- (id)initWithContainerName:(NSString *)name subItems:(NSMutableArray *)items
{
    int sumOfItems = 0;
    for (int i = 0; i < [items count]; i++) {
        sumOfItems += [[items objectAtIndex:i] valueInDollars];
    }
    
    return [self initWithContainerName:name subItems:items valueOfContainer:sumOfItems];
}

- (id)initWithContainerName:(NSString *)name subItems:(NSMutableArray *)items valueOfContainer:(int)v
{
    self = [super init];
    
    if (self) {
        [self setContainerName:name];
        [self setSubItems:items];
        [self setValueInDollars:v];
    }
    
    return self;
}

- (void)setContainerName:(NSString *)name
{
    containerName = name;
}
- (NSString *)containerName
{
    return containerName;
}

- (void)setSubItems:(NSMutableArray *)items
{
    subItems = [[NSMutableArray alloc] initWithArray:items];
}
- (NSMutableArray *)subItems
{
    return subItems;
}

- (void)addItem:(id)item
{
    [subItems addObject:item];
    int value = [self valueInDollars] + [item valueInDollars];
    [self setValueInDollars:value];
}



@end

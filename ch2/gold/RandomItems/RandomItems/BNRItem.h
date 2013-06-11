//
//  BNRItem.h
//  Random
//
//  Created by Yan Shcherbakov on 2013-06-08.
//  Copyright (c) 2013 One Shot Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    //Since we have properties its not necessary to declare variables here.
    NSString *itemName;
    NSString * serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
    
    BNRItem *containedItem;
    __weak BNRItem *container;
}

+ (id)randomItem;

- (id)initWithItemName: (NSString *)name
        valueInDollars: (int)value
          serialNumber: (NSString *)sNumber;

- (id)initWithItemName: (NSString *)name;

- (id)initWithItemName: (NSString *)name serialNumber: (NSString *)sNumber;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@end
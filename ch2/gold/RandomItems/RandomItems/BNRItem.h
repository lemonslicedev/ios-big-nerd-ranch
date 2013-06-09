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
    NSString *itemName;
    NSString * serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+ (id)randomItem;

- (id)initWithItemName: (NSString *)name
        valueInDollars: (int)value
          serialNumber: (NSString *)sNumber;

- (id)initWithItemName: (NSString *)name;

- (id)initWithItemName: (NSString *)name serialNumber: (NSString *)sNumber;

- (void)setItemName: (NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber: (NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars: (int)i;
- (int)valueInDollars;

- (NSDate *)dateCreated;
@end
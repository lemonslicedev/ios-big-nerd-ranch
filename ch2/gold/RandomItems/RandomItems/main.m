//
//  main.m
//  Random
//
//  Created by Yan Shcherbakov on 2013-06-07.
//  Copyright (c) 2013 One Shot Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        //Stuff In My Room
        BNRItem *blueFuton = [[BNRItem alloc] initWithItemName:@"Blue Futon" valueInDollars:100 serialNumber:@"A1B2C"];
        
        BNRItem *silverMac = [[BNRItem alloc] initWithItemName:@"Silver MacBook Pro" valueInDollars:1500 serialNumber:@"L337"];
        
        BNRContainer *stuffInMyRoom = [[BNRContainer alloc] initWithContainerName:@"Stuff In My Room" subItem:blueFuton];
        
        [stuffInMyRoom addItem:silverMac];
        
        //Stuff In My Living Room
        BNRItem *bigTv = [[BNRItem alloc] initWithItemName:@"Big TV" valueInDollars:2000 serialNumber:@"Q1W2E"];
        
        BNRItem *whiteCouch = [[BNRItem alloc] initWithItemName:@"White Comfy Couch" valueInDollars:5000 serialNumber:@"A1S2D"];
        
        NSMutableArray *items = [[NSMutableArray alloc] initWithObjects:bigTv, whiteCouch, nil];
        
        BNRContainer *stuffInMyLivingRoom = [[BNRContainer alloc] initWithContainerName:@"Stuff In My Living Room" subItems:items];
        
        NSMutableArray *stuff = [[NSMutableArray alloc] initWithObjects:stuffInMyRoom, stuffInMyLivingRoom, nil];
        
        BNRContainer *stuffInMyHouse = [[BNRContainer alloc] initWithContainerName:@"Stuff In My House" subItems:stuff];
        
        NSLog(@"%@", stuffInMyHouse);
    }
    return 0;
}


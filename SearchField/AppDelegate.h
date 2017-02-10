//
//  AppDelegate.h
//  SearchField
//
//  Created by admin on 17/2/8.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
- (IBAction)search:(id)sender;

@property (weak) IBOutlet NSSearchField *searchField;

@end


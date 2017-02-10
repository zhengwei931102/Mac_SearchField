//
//  AppDelegate.m
//  SearchField
//
//  Created by admin on 17/2/8.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSButtonCell *searchCell = [[self.searchField cell] searchButtonCell];
    NSButtonCell *cancelCell = [[self.searchField cell] cancelButtonCell];
    searchCell.target = self;
    cancelCell.target = self;
    searchCell.action = @selector(clickSearchButton:);
    cancelCell.action = @selector(clickCancelButton:);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)search:(id)sender {
    NSSearchField *f = (NSSearchField *)sender;
     NSLog(@"----%@", f.stringValue);
}
- (void)clickSearchButton:(NSButtonCell *)sender{
    NSLog(@"点击了搜索按钮");
}

- (void)clickCancelButton:(NSButtonCell *)sender{
    NSLog(@"点击了取消按钮");
    self.searchField.stringValue = @"";
}
@end

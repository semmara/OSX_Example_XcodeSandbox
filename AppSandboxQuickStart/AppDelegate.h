//
//  AppDelegate.h
//  AppSandboxQuickStart
//
//  Created by Rainer Semma on 13.06.14.
//  Copyright (c) 2014 Rainer Semma. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *webView;

@end

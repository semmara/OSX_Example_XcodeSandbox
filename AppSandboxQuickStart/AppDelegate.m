//
//  AppDelegate.m
//  AppSandboxQuickStart
//
//  Created by Rainer Semma on 13.06.14.
//  Copyright (c) 2014 Rainer Semma. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

+ (void)readFolderContent:(NSString *)path
{
	NSError * error;
	NSArray * dirCont = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:path error:&error];
	NSLog(@"dir: %@", path);
	NSLog(@"content: %@", dirCont);
	NSLog(@" error => %@ ", [error userInfo]);
	NSLog(@"================================================================");
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
	
	NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
	NSLog(@"resourcePath: %@", resourcePath);
	[AppDelegate readFolderContent:resourcePath];
	[AppDelegate readFolderContent:@"/tmp"];
	[AppDelegate readFolderContent:NSHomeDirectory()];
	[AppDelegate readFolderContent:[NSHomeDirectory() stringByAppendingString:@"/Downloads"]];
	[AppDelegate readFolderContent:[NSHomeDirectory() stringByAppendingString:@"/Desktop"]];
}

- (BOOL)application:(NSApplication *)sender openFile:(NSString *)filename {
	NSLog(@"openFile");
	[AppDelegate readFolderContent:filename];
	return YES;
}

- (void)application:(NSApplication *)sender openFiles:(NSArray *)filenames {
	NSLog(@"openFiles");
	[AppDelegate readFolderContent:[filenames objectAtIndex:0]];
	//return YES;
}

- (void)awakeFromNib {
	[self.webView.mainFrame loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.heise.de"]]];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
    return YES;
}

@end

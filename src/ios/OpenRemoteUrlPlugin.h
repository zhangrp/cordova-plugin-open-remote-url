//
//  OpenRemoteUrlPlugin.h
//
//  Created by 张锐平 on 17/1/17.
//

#import <Cordova/CDVPlugin.h>
#import <Cordova/CDV.h>
#import "OpenRemoteUrlViewController.h"

@interface OpenRemoteUrlPlugin : CDVPlugin
- (void)open:(CDVInvokedUrlCommand *)command;
@end

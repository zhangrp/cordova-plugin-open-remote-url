//
//  OpenRemoteUrlPlugin.m
//
//  Created by 张锐平 on 17/1/17.
//

#import "OpenRemoteUrlPlugin.h"


@interface OpenRemoteUrlPlugin ()

@end



@implementation OpenRemoteUrlPlugin

- (void)open:(CDVInvokedUrlCommand *)command
{
    [self.commandDelegate runInBackground:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"OpenRemoteUrlPlugin in");

            NSString *url = [command argumentAtIndex:0];
            NSString *title = [command argumentAtIndex:1];

            NSLog(@"OpenRemoteUrlPlugin url=%@", url);
            NSLog(@"OpenRemoteUrlPlugin title=%@", title);


            OpenRemoteUrlViewController *webVc = [[OpenRemoteUrlViewController alloc] init];
            webVc.winUrl = url;
            webVc.title = title;
            [self.viewController presentViewController:webVc animated:YES completion:^{
                NSLog(@"OpenRemoteUrlPlugin [%@] has opened ", url);
            }];
        });
    }];
}
@end

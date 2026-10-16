#import <Foundation/Foundation.h>
#import <objc/runtime.h>

// Diagnostic only: records that Discord starts URLSession tasks.
// It deliberately does not alter requests, TLS, certificates, or app behavior.
%group DiscordNetworkDiagnostics
%hook NSURLSessionTask
- (void)resume {
    NSLog(@"[DiscordNetDiag] NSURLSessionTask resume called (URL omitted for privacy)");
    %orig;
}
%end
%end

%ctor {
    @autoreleasepool {
        NSString *bundleID = [[NSBundle mainBundle] bundleIdentifier];
        if ([bundleID isEqualToString:@"com.hammerandchisel.discord"]) {
            NSLog(@"[DiscordNetDiag] Loaded in Discord; diagnostic-only build");
            %init(DiscordNetworkDiagnostics);
        }
    }
}


// Like and Comment if you aren"t login in //

%hook YTPlaylist
-(void)setLikesAllowed:(bool)arg1{
  arg1 = YES;
  %orig(arg1);
  }
  %end
  
  // Block Video Ads //
  
%hook YTVideoAdsController
-(id)inti {
  return nil;
  }
  %end
  
%hook YTVASTAd
-(bool)isForecastingAd {
  return NO;
  }
  %end
  
%hook YTDataUtils
+(id)identifierForAdvertising {
  return nil;
  }
  %end
  
%hook YTVASTAd
-(bool)isSkippable {
  return YES;
  }
  %end
  
%hook YTPlayerViewController
-(bool)isPlayingAd {
  return NO;
  }
  %end
  
%hook YTVideoAdsController
-(id)videoAdsService {
  return nil;
  }
  %end
  
%hook YTIPlayerResponse
-(bool)isMonetized {
  return NO;
  }
  %end



/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/

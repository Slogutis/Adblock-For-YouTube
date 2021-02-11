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


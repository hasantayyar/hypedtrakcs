#import "Song.h"
@implementation Track

@synthesize artist;
@synthesize album;
@synthesize genre;
@synthesize ad;
@synthesize albumCover;


- (id)init
{
    self = [super init];
    if (self) {
        ad = @"-";
        artist = @"-";
        album = @"-";
        genre = @"-";
    }
    return self;
}


-(void) debuglog{
    NSLog(@"Track name  :%@",ad);
    NSLog(@"artist  :%@",artist);
    NSLog(@"album      :%@",album);
    NSLog(@"genre :%@",genre);
}

-(void)dealloc{
  
}
@end

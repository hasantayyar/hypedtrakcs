#import "Song.h"
@implementation Track

@synthesize artist;
@synthesize album;
@synthesize genre;
@synthesize name;
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
    NSLog(@"Track name  :%@",name);
    NSLog(@"artist  :%@",artist);
    NSLog(@"album      :%@",album);
    NSLog(@"genre :%@",genre);
}

-(void)dealloc{
  
}
@end

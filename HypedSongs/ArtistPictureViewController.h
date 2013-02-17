#import <UIKit/UIKit.h>
#import "Song.h"

@interface ArtistiPictureViewController : UIViewController{
        Film* seciliFilm; 
    UIImageView *imageView;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property(nonatomic,strong) Film* seciliFilm;
@end

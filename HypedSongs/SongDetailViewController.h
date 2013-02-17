

#import <UIKit/UIKit.h>
#import "Song.h"
#import "ArtistPictureViewController.h"

@interface SongDetailViewController : UIViewController{
    Film * seciliFilm;   
    UILabel *labelFilmAdi;
    UILabel *labelYapimYili;
    UILabel *labelYonetmen;
    UILabel *labelUlke;
}
@property (strong, nonatomic) IBOutlet UILabel *labelFilmAdi;
@property (strong, nonatomic) IBOutlet UILabel *labelYapimYili;
@property (strong, nonatomic) IBOutlet UILabel *labelYonetmen;
@property (strong, nonatomic) IBOutlet UILabel *labelUlke;

@property(nonatomic,strong) Film* seciliFilm;
@end

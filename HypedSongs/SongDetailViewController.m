
#import "SongDetailViewController.h"

@implementation SongDetailViewController
@synthesize labelGenre;
@synthesize labelArtsit;
@synthesize labelAlbum;
@synthesize selectedTrack;
@synthesize labelTrackName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    labelTrackName.text = [selectedTrack ad];
    labelAlbum.text = [selectedTrack album];
    labelArtsit.text= [selectedTrack artist];
    labelGenre.text = [selectedTrack genre];
}
 

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ArtistiPictureViewController *ArtistiPictureViewController = [segue destinationViewController];
    ArtistiPictureViewController.selectedTrack = selectedTrack;
}


- (void)viewDidUnload
{
   
 
    //[self setlabelTrackName:nil];
    //[self setlabelGenre:nil];
    //[self setlabelArtsit:nil];
    //[self setlabelAlbum:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

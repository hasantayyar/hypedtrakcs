#import "HypedSongsTableViewController.h"
NSMutableArray *tracks;


@implementation HypedSongsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SBJsonParser *parser = [[SBJsonParser alloc] init];

    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://pipes.yahoo.com/pipes/pipe.run?_id=580025baaa0941eb1bfddc312d42556b&_render=json&ending=1358683200"]];
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *json_string = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    NSDictionary *object = [parser objectWithString:json_string error:nil];
    
    // the JSON response is an Array
    NSArray *results = [parser objectWithString:json_string error:nil];
    NSDictionary *dictOne = [results objectAtIndex:0];
    NSArray *activitiesArray = [dictOne objectForKey:@"activities"];
    NSDictionary *dictTwo = [activitiesArray objectAtIndex:0];
    NSDictionary *eventDict = [dictTwo objectForKey:@"event"];
    
    NSLog(@"%@ - %@", [eventDict objectForKey:@"category"]);
    

    tracks = [NSMutableArray new];
    
    Track *track1 = [Track new];
    [track1 setAd:@"Snatch"];
    [track1 setArtist:@"Guy Ritchie"];
    [track1 setAlbum:@"İngiltere"];
    [track1 setGenre:@"Pubk"];
    track1.albumCover = [NSURL URLWithString:@"http://ia.media-imdb.com/images/M/MV5BMjAxMzE0MDA4OF5BMl5BanBnXkFtZTYwOTM5Mzk4._V1._SY317_.jpg"];
    [tracks addObject:track1];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tracks count];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    SongDetailViewController *trackDetailController = [segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    int seciliSatir = [path row];
    Track* track = [tracks objectAtIndex:seciliSatir];
    
    trackDetailController.selectedTrack = track;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Track * track = [tracks objectAtIndex:indexPath.row];
    cell.textLabel.text = [track ad];
    
    return cell;
}
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end

$TweetList = @(
	'The Where-Object command can be used to filter objects, of any type, in #PowerShell. #PSTip',
	'In #PowerShell, ForEach-Object iterates over objects in the pipeline. The BEGIN block can be used to initialize any important objects once.'
)

$TweetId = Get-Random -Minimum 0 -Maximum ($TweetList.Count - 1);

$TwitterCredential = Get-AutomationPSCredential -Name TwitterCredential;
$TwitterCredential = ConvertFrom-Json -InputObject $TwitterCredential.GetNetworkCredential().Password;

$Tweet = @{
    ConsumerKey = $TwitterCredential.ConsumerKey;
    ConsumerSecret = $TwitterCredential.ConsumerSecret;
    AccessToken = $TwitterCredential.AccessToken;
    AccessSecret = $TwitterCredential.AccessSecret;
    Tweet = $TweetList[$TweetId];
    };
Publish-Tweet @Tweet;
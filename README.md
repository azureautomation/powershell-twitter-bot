PowerShell Twitter Bot
======================

            

You can use PowerShell to act as a Twitter bot very easily! This example PowerShell script leverages the
[PoshTwit PowerShell module](https://www.powershellgallery.com/packages/PoshTwit), available on the PowerShell Gallery, to send tweets. There are only two commands in the PoshTwit module, and one of them is entirely optional.


  *  **Publish-Tweet** - This command sends a tweet, using the text provided in the
**-Tweet** parameter. If you didn't configure your credentials using the
**Set-PoshTwitToken** command, you can optionally specify your credentials in-line with this command.

  *  **Set-PoshTwitToken** - This command configures a JSON file in the module folder, with your Twitter credentials. You'll need to visit
[https://apps.twitter.com](https://apps.twitter.com), and create a new application, and then generate an Access Token. Once you've done this, you should have a
**ConsumerKey**, **ConsumerSecret**, **AccessToken**, and
**AccessSecret** (AccessTokenSecret). Once you've configured your credentials with this command, you can simply call
**Publish-Tweet**! 

**Microsoft Azure Automation**


You can even import this runbook into Azure Automation, and have that service handle the scheduling of tweets for you. Once the runbook has been imported into your Azure Automation Account, you'll also need to import the PoshTwit PowerShell module from the
 PowerShell Gallery. Just search the gallery for 'PoshTwit,' and this module should appear as the only search result!


Because runbook workers are stateless, and are destroyed after each use, you'll avoid using the Set-PoshTwitToken command, when you're using this Runbook in Azure Automation. To configure your Twitter credentials for Azure Automation, I recommend that you
 follow a process similar to the following:


  *  Install the [PoshTwit module](https://www.powershellgallery.com/packages/PoshTwit) on a developer workstation (**Install-Module -Name PoshTwit**)

  *  Call the **Set-PoshTwitToken** command to configure the **
token.json** file (located in the module directory) 
  *  Copy the contents of the **token.json** file into a PSCredential asset named TwitterCredential


**Social Media**


Learn more about Trevor Sullivan at [https://trevorsullivan.net](https://trevorsullivan.net)


Follow Trevor Sullivan on Twitter: [https://twitter.com/pcgeek86](https://twitter.com/pcgeek86)


E-mail Trevor Sullivan at [trevor@trevorsullivan.net](mailto:trevor@trevorsullivan.net)


Check out Trevor Sullivan's cloud and automation business, Art of Shell LLC, at
[https://artofshell.com](https://artofshell.com)!




 




        
    
TechNet gallery is retiring! This script was migrated from TechNet script center to GitHub by Microsoft Azure Automation product group. All the Script Center fields like Rating, RatingCount and DownloadCount have been carried over to Github as-is for the migrated scripts only. Note : The Script Center fields will not be applicable for the new repositories created in Github & hence those fields will not show up for new Github repositories.

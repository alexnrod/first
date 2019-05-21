# Variables
# Delete the buld Artifacts older than:
$DateForCompare1 = (Get-Date).AddDays(-7)
$ServiceUserName = "_tfsservice"

# I divided the deletion for the Deployment and Result folders only for the example
# Possibly, will be enough to delete all build artifacts older than (n days)

# Delete Test run Deployment (older then 1 Week) folders exclude Results folders

##################### GitHub collection name: git@github.com:alexnrod #####################
##################### GitHub repo name: first.git #####################
##################### TFS server collection name: dev.azure.com/alexanderrodionov #####################
##################### TFS project name: Azure%20DevOps%20Sandbox #####################
##################### TFS repo name: first.git #####################
##################### Current branch name: release #####################
##################### cloning first.git github repo to the local build agent repo, branch: release #####################
#### run git clone git@github.com:alexnrod/first.git release

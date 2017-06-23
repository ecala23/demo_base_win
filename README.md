# demo_base_win

This cookbook is to demo the base setup of an IIS server. It's been tested on 2012r2 only. It assumes the windows-baseline and windows-patch-baseline have been downloaded to the Automate server. 


Key files:
recipes\default.rb

-Adds the chef-client, omnibus_updater, audit, and IIS cookbooks to policy.

    -The chef-client cookbook will configure the chef-client and set it to run every 30 minutes

    -Omnibus_updater cookbooks enables the chef-client version to upgraded or downgraded by changing the value in the attributes\default.rb file.

    -The Audit cookbook enables compliance as code and will run the compliance profiles specified in the attributes\default.rb against the node.

    -Finally IIS will configure the IIS webserver on the node.

attributes\default.rb
-configures the included cookbooks when default values need to be changed.

metadata.rb
-tracks the overall cookbook version and the cookbooks that are dependencies

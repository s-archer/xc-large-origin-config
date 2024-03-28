# Generate lareg config with route objects

Rename vars.tf.example to vars.tf and then update the variables as necessary.

For F5 XC API cert auth, obtain a new .p12 from the F5 XC console.  Store.  Reference the location in the `volt_api_p12_file` variable.  Then set the .p12 passphrase as ENV:

	export VES_P12_PASSWORD=<cert passphrase>

To generate the config, run the `python create-blocks.py` you will need to copy the contents of `x_lb_route_blocks.tf` and paste inside the `volterra_http_loadbalancer` resource.

The other two generated .tf files can be used as-is.
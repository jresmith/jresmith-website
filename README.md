# jresmith-website deployment:

* Deploy Terraform 

```
terraform init
terraform plan
terraform apply
```
* Sync over data from site directory into S3 bucket
```
aws s3 sync ../site/ s3://www-jresmith-com-site --delete
```
* Invalidate Cloudfront:
```
aws cloudfront create-invalidation \
   --distribution-id E2QR7GDOC4JO3P \
   --paths "/*"
```

# update website:

* Export site data from Webflow
```
W > Export Code
```
* Unzip folder into directory in jresmith-website repo
* Sync over data from site directory into S3 bucket
```
aws s3 sync new-site-dir/ s3://www-jresmith-com-site --delete
```
* Invalidate Cloudfront:
```
aws cloudfront create-invalidation \
   --distribution-id E2QR7GDOC4JO3P \
   --paths "/*"
```
* Add new files to repo, commit & push

# Resources

* Webflow
* Devicons.io
# jresmith-website deployment:

* Delopy Terraform 

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
# S3
## Create Presigned Urls
```
aws s3 presign s3://<bucket-name>/<object-name> --expires-in 300
```

## Require MFA for Object Deletion
```
aws s3api put-bucket-versioning \
    --bucket <bucket-name> \
    --versioning-configuration Status=Enabled,MFADelete=Enabled \
    --mfa "<mfa-serial-number> <mfa-code>"
```

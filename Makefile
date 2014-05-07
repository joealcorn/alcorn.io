.PHONY: deploy

deploy:
	aws s3 sync site/ s3://alcorn.io/ --profile alcornio --color on --exclude=".git/*" --acl "public-read"

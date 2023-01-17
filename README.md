I have done the following:

Keep in mind that I have not used AWS before, nor have I set up a pipeline from start to finish on my own, so the whole test was a learning experience for me.
I have elected to use AWS because Vector support this cloud framework. And because my free tier Azure account expired.

There is no link to check because deploy did not work.

In the short time that I have spent, I have only used the AWS console; The CLI would be more effective for automation, but for the sake of learning and trying to accomplish the outcome of the test, I opted to use the GUI. 

I have kept all my workings in AWS for the purpose of this meeting, though normally for things like unused projects and roles, I would set to delete.

This repo I cloned off the one provided and work off the 'vector' branch. 

The only files to worry about are the buildspec.yml and dockerfile. 
Initially I moved app.py into an /app directory and created an __int__.py file to create a package and execute... It doesnt have much in it aside from import but wanted to at least first get a package uploaded to s3.

I didnt realize till too late that its best to use EC2 container for docker images, but used docker so I could build and create a package to upload as an artifact. I think if I had achieve that part deploy would work. 

That being said, I do have a CodeBuild project set up called https://us-east-1.console.aws.amazon.com/codesuite/codebuild/372528367754/projects/lings-vector-project-v3

The pipeline runs on a github webhook where on commit the pipeline executes based on the buildspec file. 
There is a Role and Policy assigned and the project is set up to allow for docker build.

The s3 bucket is public because I wanted to make it a static host. That might have worked if i could get an artifact to sync to the bucket.

Initially I thought using Code Deploy and Code Pipeline would be the way to go, but on set up, it got a bit too complicated for the purpose of a vanilla app deployment, and opted for just CodeBuild, which can handle most things.

If I had more time I would have set up an EC2 instance and updated a few things in the docker file. For now at least my pipeline works. But just without doing too much I'm afraid.

Again this is all new to me and I want to keep going. There is a lot to learn.

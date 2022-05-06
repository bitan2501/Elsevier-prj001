# Elsevier-prj001
Using Terraform I am deploying a static website backed by an s3 bucket in AWS
there are few steps we need to follow
Prerequisites
Create a ec2 instance and attach a role (to avoid key) and we need to install terraform jenkins in this instance

![image](https://user-images.githubusercontent.com/18758226/167120524-41e81396-964e-4f73-8fac-204fc9348b90.png)

![image](https://user-images.githubusercontent.com/18758226/167120686-d75f933f-0b95-4fb7-98f1-fbbf68df3046.png)
![image](https://user-images.githubusercontent.com/18758226/167120782-98eff27a-4850-4a00-8f2f-ba21ad9443e4.png)

![image](https://user-images.githubusercontent.com/18758226/167120903-f85570ac-9e47-43a4-aaf9-a5fc1a6e2cff.png)



Create a bucket
in the main.tf file at first I created the s3 bucket
![image](https://user-images.githubusercontent.com/18758226/167121151-2753ec0f-b319-4e68-9a87-93b2a6a60f10.png)


now I will upload index.html and error.html file
![image](https://user-images.githubusercontent.com/18758226/167121440-cf03e574-2ff8-4eaf-a6a3-0b1b310a5852.png)

configure index.html, error.html
![image](https://user-images.githubusercontent.com/18758226/167121522-36744d9d-3d2b-4f17-b46c-8f6ae39dc9a9.png)

![image](https://user-images.githubusercontent.com/18758226/167121632-21f45f2d-0643-4211-9f3a-a93d83fac853.png)

output.tf which gives bucket domain name as output
![image](https://user-images.githubusercontent.com/18758226/167122049-ec303281-7017-454c-89fc-0ca14a7cd4f8.png)

now we need to creat jenkins pipeline
![image](https://user-images.githubusercontent.com/18758226/167122179-a0959299-8141-46d4-92e4-17384c479608.png)

![image](https://user-images.githubusercontent.com/18758226/167122227-35268db5-96af-4fcf-af37-f7a1e742e05b.png)


And its tie to run the pipeline
![image](https://user-images.githubusercontent.com/18758226/167122311-33e13b1a-b2ac-4ecb-b979-27028ce9ed9e.png)

![image](https://user-images.githubusercontent.com/18758226/167122394-40f1634b-e387-45ad-8986-ca1eccec2c80.png)

It provides us bucket domain name 

![image](https://user-images.githubusercontent.com/18758226/167122486-5b305e3d-def5-4bfc-9ad0-f0084033ff7f.png)

after hitting the url, our site will be live
![image](https://user-images.githubusercontent.com/18758226/167122611-0812b18f-de24-4a5f-85d2-b94ce1dc1045.png)

Site : http://bitan.terraform-tutorials.com.s3-website-us-east-1.amazonaws.com/




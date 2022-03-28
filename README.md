# SRE CheatSheet

Markdown [CheatSheet](https://www.markdownguide.org/basic-syntax/#links)

> - Creating github repo to push the markdown doc
> - Amazon Web Services (AWS)

# What is the SRE role?
SRE ***(Site reliability Engineer)*** monitors and stablise services that are in production, maintains the acceptable performance, write code to reduce ***toil*** and ensure the service is available at all times.

## SRE traits
- Studious
- Problem Solver
- Creative
- Communicative

# AWS

![AWS Logo](Images/aws_logo_smile_1200x630.png "AWS Logo")

***Amazon Web Service*** provides an online storage solution for organisations to host their application without the expensive cost attached with the hardware.

# Benefits of Cloud Computing

## Ease of use
> - Can quickly and securely host application. Can use the AWS Management Console to manage the hosted application.

## Flexibility
> - Enables developers to choose whichever operating system, programming language, different platforms, database and other services. 
  
## Robustness
> - AWS also provide scalability, so that the application can upscale or downscale according to the demand.
  
## Cost Saving
> - Pay as you go, so no monthly payment or contract payment. Only payment for the resources that has been used.

# AWS global infrastructure
The global infrasturcture of AWS means that they have data center across multiple countries and developers can choose whichever one they want to use for deploying their application.

![AWS global infrastructure](Images/Map-of-AWS-global-infrastructure.png "AWS global infrastructure")

## Regions VS Availabilty Zones
> - Regions are different cities or countries where AWS is available
> - Availablity zones are multiple isolated locations within the regions. 

## What are the four pillars of cloud computing?
> - Ease of use (how easy it is to use)
> -  Flexibility (What system and langauges it can support)
> - Robustness (can it keep with the demand) 
> - Cost (How much it costs)

## What is CDN?
CDN is an acronym that stands for ***Content Delivery Network***  where a group of distributed servers are situated in different locations across the globe and they come and work together to provide a fast delivery of internet content, by caching it on the node.

## On-Site VS Hybrid VS Public Cloud
> - **On-Site**
>     - Most expensive
>     - Hardware needs to be maintained
>     - Security Issues.
>     - Freedom of control over the entire infrastructure
>
> - **Public Cloud** (Off site)
>     - Cheapest (***Pay as you go***)
>     - Like AWS or Azure
>
> - **Hybrid** 
>     - Use On-site for sensitive information
>     - Use public cloud for public access

# EC2 Service Model

The EC2 Service model has 3 components: The Service (Public Cloud), the Credential role and the local host. 

![EC2 Service Model](Images/2022-03-22-10-46-35.png "EC2 Service Model")

## The Local Host 
The localhost has the local device hardware component to establish a link between the itself and the amazon web service. It also stores the file.permission on the device. (WHY?)

## The Credential 
The credential is the login details that enables the connection to be established securely. It requires the Username, Password and the AWS key.

## The Public Cloud 
The public cloud is the AWS itself, providing cloud online storage and solutions to organisation and developers. It needs to be secured and it produces a file.Perm as an SSH key that is shared with its sole user and nobody else. 


# Steps to create an AWS EC2 Instance
1) On the Amazon Management Conole, Search for EC2 and click on the link. It will take you to the EC2 dashboard.
2) Click on the launch Instance button, and it will show 2 options. Select the launch instance options.
3) Choose a operating system that you would like to use as the virtual environment and then click continue.
4) Choose the instance type, and then click continue.
5) Configure the instance details and renamed them so that its easier to find these instance when they are running then continue.
6) you can choose to define how much storage you would want your instance to have: continue
7) Add any tags that you need to use: continue
8) Configure security option is where you set up a private and public connection to the cloud. public connection is where everyone can access it, private connection can only be accessed by yourself with the IP address and ssh key.

# Linux Command
- How to start a service `sudo systemctl start name_service`
- How to stop a service `sudo systemctl stop name_service`
- How to check status `systemctl status service_name`
- How to enable service `sudo systemctl enable service_name`
- How to install a package `sudo apt install package_name -y`
- How to remove a package `sudo apt remove package_name -y`
- How to check all process `top`
- Who am i `uname` or `uname -a`
- Where am i `pwd`
- Create a dir `mkdir dir_name`
- How to check `ls` or `ls -a`
- How to create a file `touch name_file` or `nano file_name`
- How to check content of the file without going inside the file `cat file_name`
- How to move a file `mv file_name dir_name`
- How to delete folder `rm -rf folder_name`

### File Permissions
- How to check a file permission `ll`
- Change file permission `chmod required_permission file_name`
- write `w` read `r` exe `x`
- http://chmod-calculator.org/

### Bash Scripting

- code block
```bash
# create a file called provision.sh
touch provision.sh
# it must start with #!/bin/bash
#!/bin/bash
# run updates
sudo apt-get update -y
#run upgrades
sudo apt-get upgrade -y
# install nginx
sudo apt-get install nginx -y
# ensure it's running - start nginx
sudo systemctl start nginx
# enable nginx
sudo systemctl enable nginx
```

- Change the file to exe `sudo chmod +x provision.sh`
- How to run an exe file `./provision.sh`


# Tomcat

```bash
#!/bin/bash
#update
sudo apt-get update -y
#upgrade
sudo apt-get upgrade -y
#install tomcat
sudo apt-get install tomcat9 -y
#ensure it's running - start tomcat
sudo systemctl start tomcat9
#enable tomcat
sudo systemctl enable tomcat9
```
Remember to change the inbound rule for the AWS security group, to allow port 8080 to be used, else it will just blocked and fail the attempt for using tomcat.

# Technical Questions

## What is a VPC?
VPC (Virtual Private Cloud), enables developer to launch resources into a virtual network, such as hosting websites, or storing data in a database.

## What is a internet gateway?
A gateway that is attached to the VPC to enable communication between the resources in the VPC and the internet.

## What is a route tables?
It's a set of rules that is used to direct network traffic.

## What is a subnet?
A range of IP Addresss that is within the VPC.
## What is NACLS?
Network ACLs is an optional layer of security that the VPC can use as a firewall to control traffic in and out the resources.
## What is a security group?
A security group is a virtual firewall that controls all inbound and outbound traffic for a VPC resource. 
## How did you secure your app on the public cloud?
By utilising security group to set up rules to prevent any unauthroised access by anyone. 

## What are the outbound rules for security group by default? and why?
By default, all outbound traffic is allowed, the reason why 

## What is the command to kill a process in linux?
killall (process)

kill processID

# Monolithic Archtechiture

# Devops
##  What is Devops
Devops is an acronym for software (dev)lopmnent and IT (Op)erations being combined together. It's a practise that automate the process between the different teams to make the service life-cycle much faster to develop and test.

# Docker

## Download Docker
### Prerequistes
> - Enable *Virtualisation* in **BIOS**
> - Turn on *Hyper Vispor* in **Windows Features**

### Installation Instructions
> - Install [Docker Hub](https://hub.docker.com/editions/community/docker-ce-desktop-mac) for MAC / Install [Docker Hub](https://hub.docker.com/editions/community/docker-ce-desktop-windows) for Windows
> - Create a [Docker Account](https://hub.docker.com/signup)



docker run hello-world

docker images

docker ps -a

docker rm

docker stop 

docker start

docker run -d -p 4000:4000 docs/docker.github.io

docker exec -it container sh

alias docker = "winpty docker"

cd /usr/share/nginx/html/index.html

apt update -y

apt install nano -y
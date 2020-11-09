# PASSSummit2020
PASS Summit 2020

### Azure Data Science Virtual Machine

Steps to create a DSVM in Azure
1.	Go to https://portal.azure.com. If prompted, sign in using the credentials created in step 1
2.	Click Create a resource in the upper left
3.	In the search box type Data Science Virtual Machine - Windows 2019
4.	Click the Create button. This action will cause a form to appear that you need to feel out to configure the DSVM. You will land on the Basics tab. The following steps will tell you how to feel out the form.
5.	Subscription: Select the subscription you want to use. It should default to the subscription that you set up in step 1.
6.	Resource group: If you already have a resource group in your tenant you want to use select it. Otherwise create a new one for your DSVM">
7.	Virtual machine name:  The name you want your DSVM to have
8.	Region: An Azure region close to you
9.	Image: Make sure Data Science Virtual Machine – Windows 2016 is selected
10.	Size: I use B4ms because it is the cheaper option for the 16 gigs of ram options. RAM is important for R, Python, and Power BI. 
11.	Username: <"Create a username">
12.	Password: <"Create password">
13.	Confirm password: <"Confirm password">
14.	Click Next: Disks >
15.	OS disk type: Select Standard SSD. This option is sufficient for what we are doing
16.	Click Next: Networking>
17.	Make sure all the required fields are filled out. You can identify the required fields with a *. They should be populated with a default value if not click the Create New link below them and accept the default settings.
18.	Click Next: Management >
19.	Accept defaults and click Next: Advanced >
20.	Accept defaults and click Next: Tags >
21.	Click Next: Review + create >.
22.	You will see a summary of the DSVM that you configured. You will also see the cost to run the DSVM. If you agree with the configuration click the Create button.

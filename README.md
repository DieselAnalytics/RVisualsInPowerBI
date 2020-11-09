# PASS Summit 2020

### How to Install R Packages
The ***install.packages()*** function is used to install packages in R. You will use the following code if you wanted to install a single packages such as ***tidyverse***:
```R
install.packages("tidyverse")
```
You can also install multiple packages at once. Use the following code to install ***tidyverse*** and ***RODBC*** together:
```R
pkgs <- c("tidyverse","RODBC")
install.packages(pkgs)
```
You can install a specific version of a package using the following steps:

-  Go to the **CRAN Package Archive** at this URL:  https://cran.r-project.org/src/contrib/Archive/
-  Locate the package you want to download. Once you find it, click into the folder for that package to get the list of versions that are archived for that package. Copy the URL of the package you want to download.
-  Assign the URL to a variable and used it with the ***install.package()*** to download the package. Below is the code you would use to download ***dplyr 1.0.0***:
```R
packageurl <- "https://cran.r-project.org/src/contrib/Archive/dplyr/dplyr_1.0.0.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
```

### Microsoft R Open
You will be using a different distribution of R than the one installed. The distribution of R that we will use is Microsoft R Open (MRO). This distribution of R is totally compatible with distribution on CRAN but in comes with enhancements that improves the performance of certain types of calculations plus many additional tools. Perform the following steps to download the MRO in your DSVM:
1.	Get the version of R that is being used in the Power BI service. You can find that information in the following Microsoft documentation:  https://docs.microsoft.com/en-us/power-bi/visuals/service-r-visuals. 
2.	Open up a browser in the DSVM and go to the following site:  https://mran.microsoft.com/open. Two browsers are pre-installed in the DSVM. They are Microsoft Edge and Firefox.
3.	Click on the Download button on the right and you will be taken to the download page. Once on the download page, click on the Past Releases link which is located on the right section of the page. Clicking on the link will take you to a page that has links to all previous versions of Microsoft R Open. Click on the link for the version that the Power BI service is using.
4.	Choose the download for Windows.
5.	Execute the download
6.	Open R Studio in the DSVM
7.	Select Tools > Global Options. Verify that the MRO distribution you just installed is selected. If it is not, click on the Change… button and you should see it as one of the options. Select it then click Ok.

### R Studio
Blurb about installing R Studio

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

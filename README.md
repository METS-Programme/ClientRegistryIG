# ClientRegistryIG

## Installation

Instructions for installing the SUSHI tool on your system

### Step 1: Install Node.js

SUSHI requires Node.js. To install Node.js, go to https://nodejs.org/ and select the “LTS” download. If the download is not appropriate for your operating system, click the “Other Downloads” link to get a full list of downloads. Once the installer is downloaded, run it using the default options.

Ensure that Node.js is correctly installed by opening a command window and typing the following two commands. Each command should return a version number.

### Step 2: Install Jekyll

Install ruby and ruby gems: https://www.ruby-lang.org/en/documentation/installation/

```
gem install jekyll

```

### Step 3: Install SUSHI

To install SUSHI, open up a command prompt and type the following command:

```
 npm install -g fsh-sushi

```

### Step 4 : Clone the repository from git.

```
git clone  https://github.com/METS-Programme/ClientRegistryIG.git

cd ClientRegistryIG

sushi .

```

### Step 5 : Update IG Publisher

```
./_updatePublisher.sh

```

### Step 6 : Run IG Publisher

```
./_genonce.sh

```

### Step 7 : Open Publisher IG

```
Open `./output/

```

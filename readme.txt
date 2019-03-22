u shud have node.js to run npm
changes in build.xml has done which willl install, run build, the NPM as per JK's(TRV team)& mahesh (UI team) request

after Sencha build we are implementing npm install and npm run build, where npm install will download the third party artifacts required by referring to package.json.
then npm run build will be executed and we copy the content of dist folder(created during npm run build) to \827\fdStatic\portal\build\production\ReactApp folder 



165 sandbox

nodejs installed in /fdx/softwares/node-v10.15.3-linux-x64
npm location: /fdx/softwares/node-v10.15.3-linux-x64/bin/npm
source code: /home/wasadmin/release/jenkinsworkspace/FDX827
build.xml : /home/wasadmin/release/jenkinsworkspace/FDX827/fdStatic/build.xml



JK input:

npm run prod build will actually handels deletion and creation of reactapp file in prod folder 
so there is no need of copying, creating and deleting task

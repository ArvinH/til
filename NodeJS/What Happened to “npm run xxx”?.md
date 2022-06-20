# What Happened to “npm run xxx”?

ref: https://javascript.plainenglish.io/interviewer-what-happened-to-npm-run-xxx-cdcb37dbaf44


### Q: Please tell me what happened when “npm run xxx”?

#### A: When we execute the “npm run xxx” command, it will first go to the project’s package.json file to find xxx in scripts, and then execute the xxx command.

### Q: Well, why don’t you directly execute vue-cli-service serve instead of npm run serve?

#### A: Because if you execute vue-cli-service serve directly, an error will be reported, because there is no vue-cli-service instruction in the operating system.

### Q: the command vue-cli-service serve does not exist in the operating system, why is it possible to execute npm run serve (which is equivalent to executing vue-cli-service serve) successfully But it doesn't report an error?

#### A:
First, we install project dependencies through npm i xxx, such as npm i @vue/cli-service. When npm installs this dependency, it will create vue-cli-service in the node_modules/.bin/ directory as the name of several executable files.

The .bin directory is not the place to store the npm package. The files in this directory represent soft links. When you open the file, you can see that #!/bin/sh is written at the top of the file, indicating that this is a script.

Therefore, when using npm run serve to execute vue-cli-service serve, although the vue-cli-service global command is not installed, the 'npm' will find the 'vue-cli-service' executable file in the ./node_modules/.bin file directory and execute it as a script (equivalent to executing ./node_modules/.bin/vue-cli-service serve')

### Q: Very good, but I want to continue to ask, you said that the files in the .bin directory represent soft links, where do these soft link files come from? Where is this soft connection executed?

#### A:

in package-lock.json file, you should be able to find `bin`

```json
"bin": {
  "vue-cli-service": "bin/vue-cli-service.js"
}
```

when we use npm i to install dependencies, npm declares bin/vue-cli-service.js as bin.
After reading the configuration, npm will soft link it to the ./node_modules/.bin directory, and npm will automatically add node_modules/.bin to $PATH, so that you can directly run dependent programs as a command, with no need to install it globally.

so in summary, when we execute npm i, it has already helped us to configure the soft connection. In fact, this soft connection is equivalent to a kind of mapping. When executing npm run xxx, it will go to node_modules/bin, find the corresponding mapping file, and then find the corresponding js file to execute the code.

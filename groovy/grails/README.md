
## Install sdkman

$ curl -s "https://get.sdkman.io" | bash
In order you want to continue working in the same terminal window execute

$ source "$HOME/.sdkman/bin/sdkman-init.sh"
To install the latest version of Grails simply run

$ sdk install grails
or if need a specific version you can run

$ sdk install grails 2.4.3
---
$ sdk install java
---

Create app

$ grails create-app [name_project]
---

Runing app

$ cd ~/[name_project]
$ grails run-app
---

Зависимости к проекту подключаются добавлением строчки в файл

$ vi ~/[name_project]/build.gradle
В секцию dependencies
---



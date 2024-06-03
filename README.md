# aem

* Инструкция по установке aem локально ./aem/Readme.txt
* Коннектор Smartling ./smartling connector package.
	* Документация https://help.smartling.com/hc/en-us/articles/10669596433819-How-the-AEM-Touch-and-Cloud-Connectors-Work
	* Для установки нажать "Upload package" на странице пакетного менеджера http://localhost:4502/crx/packmgr/index.jsp
* Коннектор Bootstrap ./bootstrap connector
	* Для установки в локлаьный aem вызвать "mvn clean install -PautoInstallPackage -Padobe-public"
* Текущий коннектор ./sc connector
	* Для установки в локлаьный aem вызвать "mvn clean install -Pdeploy-app"
	* Изначально создан при помощи https://github.com/adobe/aem-project-archetype
		> mvn -B org.apache.maven.plugins:maven-archetype-plugin:3.2.1:generate -D archetypeGroupId=com.adobe.aem -D archetypeArtifactId=aem-project-archetype -D archetypeVersion=49 -D appTitle="Smartcat Translation Connector" -D appId="com.smartcat.aem.connector" -D groupId="com.smartcat.aem" -D version="1.0.1" -D aemVersion="6.5.8" -D sdkVersion="2024.5.16357.20240517T163826Z-240400" -D frontendModule="none" -D datalayer="n"
* Пустой коннектор, созданный по шаблону ./template connector
	
# utils

* Страница создании конфигурации к коннектору (http://localhost:4502/mnt/overlay/cq/translation/gui/content/cloudservices.html)
* Список зарегистрированных бандлов (http://localhost:4502/system/console/bundles). Новый банддл должен появится в списке с наибольшим id и быть в статусе Active
* Для отлатки через Remote JVM запустить aem через ./utils/start.bat
* При возникновении ошибки (связанных с отсутствием сервиса авторизации) при повторных запусках aem запустить ./utils/auth.bat. Он удалит проблемные файлы из созданной aem директории 
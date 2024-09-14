This is to specify the step by step process of CI/CD and instruction steps..

    Sample Devops Project

1.	Write the Java code and create a pom .xml
2.	Launch Resource group and launch VM and Launch ACR through terraform
3.	Now go to dev.azuredevops.com and open your project and go to settings and click on agent pools and “ADD POOL”
4.	Click on the Agent added pool and go to agents 
5.	Add agent with choosing the correct machine.
i.	        ~/$ mkdir myagent && cd myagent
ii.	Wget https://vstsagentpackage.azureedge.net/agent/3.243.1/vsts-agent-linux-x64-3.243.1.tar.gz
iii.	tar zxvf  vsts-agent-linux-x64-3.243.1.tar.gz
iv.	./config.sh
v.	Enter server URL >>  https://dev.azure.com/yourorganization
vi.	Enter authentication type (press enter for PAT) 
vii.	Generate PAT token from your project on right side top corner and paste the token
viii.	 Enter Agent pool: enter the name which you create in above 4
ix.	Enter Agent name > enter
x.	Enter work folder > enter
that's it agent is successfully configured.

xi.	Configure the Agent to run as a Service -- sudo ./svc.sh install &
xii.	Execute now to run as a service -- ./runsvc.sh &
install Java 11 -- sudo apt-get install default-jdk -y
install maven -- sudo apt update && sudo apt install maven -y

Check if Maven got installed

Mvn –version

6.	Now go to the Agent pool and click on the agent and go to capabilities and add User-defined capabilities
Java – true
Maven – true
Docker – true

7.	Install docker in the VM 
8.	Go to project settings and configure the service connections for azure repos & docker 
9.	Now commit the code to Azure repos or github 
10.	Now go to the pipelines and create a pipeline and run the pipeline.
node
{
    stage("pull git repo")
    {
        git branch: 'main', url: 'https://github.com/Rohit-0110/docker-jenkins.git'
    }
    stage("build")
    {
        sh 'docker build -t vishwakarmarohit750/webapp:1 .'
    }
    stage("dockerhub login")
    {
        withCredentials([string(credentialsId: 'vishwakarmarohit750', variable: 'dockerhubpwd')]) 
        {
            sh 'docker login -u vishwakarmarohit750 -p ${dockerhubpwd}'
        }
    }
    stage("push")
    {
        sh 'docker push vishwakarmarohit750/webapp:1'
    }
}

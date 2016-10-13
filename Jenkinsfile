node {

    def name = "ops-deploy"
    def semver = "0.1.0"
    def tag = "${semver}.${env.BUILD_NUMBER}"
    def repo = "git@github.com:bytewood/${name}.git"

    stage "Checkout"
        git url: "${repo}"

    stage "Package"
        sh "zip -r up-${tag} docker-compose.yml environment/"        
    
    stage "Promotion"
        def userInput = input(
            id: 'userInput', message: 'Let\'s promote?', parameters: [
            [$class: 'TextParameterDefinition', defaultValue: 'qa', description: 'Environment', name: 'env'],
            [$class: 'TextParameterDefinition', defaultValue: 'qa1', description: 'Target', name: 'target']
        ])
    echo ("Env: " + userInput["env"])
    echo ("Target " + userInput["target"])

}

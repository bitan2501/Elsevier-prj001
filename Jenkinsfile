pipeline {
    agent any
    
    tools {
        terraform 'terraform'
    }
    stages {
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform Action") {
            steps {
                echo "Terraform action is -->${action}"
                sh 'terraform ${action} --auto-approve'
            }
        }
    }
}
        

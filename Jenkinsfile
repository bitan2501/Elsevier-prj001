pipeline {
    agent any
    
    tools {
        terraform 'teraform001'
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
                sh ('terraform destroy --auto-approve')
            }
        }
    }
}
        

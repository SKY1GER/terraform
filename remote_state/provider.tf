terraform{
    required_providers{
        aws={
            source = "hashicorp/aws"
            version = "5.18.0"
        }
    }
    backend "s3"{
        bucket = "saikumar16"
        key = "reamotestate"
        region = "us-east-1"
        dynamodb_table = "daws79s-locking"
    
    }
}
provider "aws"{
    region = "us-east-1"
}
process SayHello{
    publishDir 'result', mode :'copy'
    input:

    output:
        path "output.txt"

    script:
    """
    echo "Hello form here" > output.txt
    """
}

workflow{
    SayHello()
}

workflow.onComplete{    
    println "work is completed !!!! "
}
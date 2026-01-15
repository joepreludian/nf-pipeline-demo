#!/usr/bin/env nextflow

process sayHelloPipeline {
    input:
        val greeting

    script:
    """
    echo 'Hello World --> ${greeting}!';
    df -h;
    """
}

workflow {
    sayHelloPipeline(params.greeting)
}

#!/usr/bin/env nextflow

process sayHelloPipeline {
    input:
        val greeting

    script:
    """
    echo 'Hello World --> ${greeting}!';
    df -h;
    free -m;
    """
}

workflow {
    sayHelloPipeline()
}

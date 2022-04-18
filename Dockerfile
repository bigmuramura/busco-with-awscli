FROM quay.io/biocontainers/busco:5.3.2--pyhdfd78af_0

RUN apt-get update && apt-get install -y \
	curl \
	unzip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.5.6.zip" -o "/tmp/awscliv2.zip"
RUN unzip /tmp/awscliv2.zip -d /tmp
RUN /tmp/aws/install
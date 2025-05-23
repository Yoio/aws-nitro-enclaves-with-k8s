# Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

FROM public.ecr.aws/amazonlinux/amazonlinux:2

RUN amazon-linux-extras install aws-nitro-enclaves-cli && \
    yum install wget git aws-nitro-enclaves-cli-devel -y

WORKDIR /home

COPY builder/run.sh run.sh

CMD ["/home/run.sh"]

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AD67308ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 22:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 954CA418B0;
	Wed, 14 Jun 2023 20:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 954CA418B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686773317;
	bh=kItOhGv1LuVVYWCM0ozsSllwFVfO7afzuGIo2rbsC/o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z9p5Ze5tecUetcEQreJB1/gwDZNVSwrjGVx7SW5RhYJeM0eitWwKcZzHvTd5iToNr
	 cxtLSz1JV56IYatWQ2PT4c0cvx1KBTYBj12gMeLzFLWHLS7K7/CkapTz2hbOp7h5Ce
	 aO/UkAEuTYuz/pVDSbRecQhX8WO2G9VNxv+lZM2PwMPKamH2eM3g//MvyNsINJGTaQ
	 C8gex2YiZCKnLaxjL8/5VwBqMWM0lwLx3oBwYd7V/6qWkx6MELWN1YJOJkWKIQ/6hV
	 uTfHF8LiSY1dtDn6k+tG+n4DlSHGL6YIzNwjZcm8KF9N3PcNfXEUSBgccSkhBJ6rZY
	 PkuSWULuQq/6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9IcnJuckzK6; Wed, 14 Jun 2023 20:08:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38C96408C8;
	Wed, 14 Jun 2023 20:08:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38C96408C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 526FC1BF966
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 272DE41AE9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:45:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 272DE41AE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aqu3Mo8sonlC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 16:45:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F48041793
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com
 [IPv6:2001:4860:4864:20::30])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F48041793
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:45:49 +0000 (UTC)
Received: by mail-oa1-x30.google.com with SMTP id
 586e51a60fabf-1a98cf01151so266351fac.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:45:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686761149; x=1689353149;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pI6QVNoo9K2g9uwZ4VUxHno7kwms3nGxJzTsQ2Z92EU=;
 b=gDqdfI/5g4DDwEQV30DWZSZV8r1DjPsSczt6WfQUGXDtPbAa4T5G0iR1pO3fPqS3tP
 5PzPWRtTUm4RQB+yb0n69DuiZE4vZgMBDru5+MDkviYnbOU+lCIcR9rT7C0om7hSssFp
 JhkQ2qHxa0VGfYpSz+bVt9najd9wfPiGkDZNFNq7RaIqwEBfDBPcOvnpVQ7+1+MXM3s+
 xuMg726FU4xJqNkRQyk16g8uwSu8PYnNSfFJAo6tWshgzwfj9Suu62C+UyQU0Cjedvpn
 weAMBuyIgPgxQP9CGhDYNg81Lq095yPndBBvKBHW/pEqcIGn0HA1g1jn9gDXpryj/1wf
 LWpQ==
X-Gm-Message-State: AC+VfDyibWKU+x86W9DpAdGhmsm6k3JLYyO9V11rePDE9NBkborPSKLT
 oYxpAaPmGoFeoWlSh4uroauGaQ==
X-Google-Smtp-Source: ACHHUZ7aZxXTxhB8lC3K3k64H4c3mdgU54OpyD9XFiYMm/doS1FVq6CBIp+TOcFfSSshLcVSAuqq/w==
X-Received: by 2002:a05:6870:772d:b0:184:39e3:9c85 with SMTP id
 dw45-20020a056870772d00b0018439e39c85mr11654364oab.29.1686761148899; 
 Wed, 14 Jun 2023 09:45:48 -0700 (PDT)
Received: from ?IPV6:2804:14d:5c5e:44fb:90ea:5d38:822c:1759?
 ([2804:14d:5c5e:44fb:90ea:5d38:822c:1759])
 by smtp.gmail.com with ESMTPSA id
 le13-20020a0568700c0d00b001a8f6be7debsm614480oab.28.2023.06.14.09.45.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 14 Jun 2023 09:45:48 -0700 (PDT)
Message-ID: <02c5d2f3-225f-fd56-6540-00a80326d07f@mojatatu.com>
Date: Wed, 14 Jun 2023 13:45:42 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-10-vladimir.oltean@nxp.com>
From: Pedro Tammela <pctammela@mojatatu.com>
In-Reply-To: <20230613215440.2465708-10-vladimir.oltean@nxp.com>
X-Mailman-Approved-At: Wed, 14 Jun 2023 20:08:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1686761149; x=1689353149; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pI6QVNoo9K2g9uwZ4VUxHno7kwms3nGxJzTsQ2Z92EU=;
 b=3paQk9bb5D5ndexZa/YdV9X07Z9yzNPgfgLt7KTRPie2JDD66FEj9CxqRyIw/7gRbk
 LU1pP1dkyRj20Rt+ONd/mOwo6X3OCFs8zF+5k45ZIMIcgKXQU8S/Zc9SMNacJ1uEdxz5
 B4QAvgM6OwgihGjjJ9n9fOroxmslA+N1pFbhNry6hBTVqILLqn7j6kZmhQBQDU4wGhgX
 MZEW/eLCWelfb7deBGnr3pR9zelSQ1z+1wE4JZFQqzQXcEtM48zLC3D77PQXH6tzEny4
 NS2XTQVWrmBsUUVatLfkfkFX9+XH0mm/NwK77+ZR/Qvd+pRXvD2j7jfk6my8IVb15vqY
 d3lA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=3paQk9bb
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 9/9] selftests/tc-testing:
 verify that a qdisc can be grafted onto a taprio class
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Jiri Pirko <jiri@resnulli.us>, Maxim Georgiev <glipus@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Cong Wang <xiyou.wangcong@gmail.com>, Peilin Ye <yepeilin.cs@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Zhengchao Shao <shaozhengchao@huawei.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13/06/2023 18:54, Vladimir Oltean wrote:
> The reason behind commit af7b29b1deaa ("Revert "net/sched: taprio: make
> qdisc_leaf() see the per-netdev-queue pfifo child qdiscs"") was that the
> patch it reverted caused a crash when attaching a CBS shaper to one of
> the taprio classes. Prevent that from happening again by adding a test
> case for it, which now passes correctly in both offload and software
> modes.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Other than the comment below,

Reviewed-by: Pedro Tammela <pctammela@mojatatu.com>

> ---
> v1->v2: patch is new
> 
>   .../tc-testing/tc-tests/qdiscs/taprio.json    | 50 +++++++++++++++++++
>   1 file changed, 50 insertions(+)
> 
> diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> index 58d4d97f4499..47692335bcf1 100644
> --- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> +++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> @@ -179,5 +179,55 @@
>               "$TC qdisc del dev $ETH root",
>               "echo \"1\" > /sys/bus/netdevsim/del_device"
>           ]
> +    },
> +    {
> +        "id": "a7bf",
> +        "name": "Graft cbs as child of software taprio",
> +        "category": [
> +            "qdisc",
> +            "taprio",
> +            "cbs"
> +        ],
> +        "plugins": {
> +            "requires": "nsPlugin"
> +        },
> +        "setup": [
> +            "echo \"1 1 8\" > /sys/bus/netdevsim/new_device",
> +            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 clockid CLOCK_TAI"
> +        ],
> +        "cmdUnderTest": "$TC qdisc replace dev $ETH handle 8002: parent 8001:8 cbs idleslope 20000 sendslope -980000 hicredit 30 locredit -1470",
> +        "expExitCode": "0",
> +        "verifyCmd": "$TC -d qdisc show dev $ETH",
> +        "matchPattern": "qdisc cbs 8002: parent 8001:8 hicredit 30 locredit -1470 sendslope -980000 idleslope 20000 offload 0",
> +        "matchCount": "1",
> +        "teardown": [
> +            "$TC qdisc del dev $ETH root",
> +            "echo \"1\" > /sys/bus/netdevsim/del_device"
> +        ]
> +    },
> +    {
> +        "id": "6a83",
> +        "name": "Graft cbs as child of offloaded taprio",
> +        "category": [
> +            "qdisc",
> +            "taprio",
> +            "cbs"
> +        ],
> +        "plugins": {
> +            "requires": "nsPlugin"
> +        },
> +        "setup": [
> +            "echo \"1 1 8\" > /sys/bus/netdevsim/new_device",
> +            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 flags 0x2"
> +        ],
> +        "cmdUnderTest": "$TC qdisc replace dev $ETH handle 8002: parent 8001:8 cbs idleslope 20000 sendslope -980000 hicredit 30 locredit -1470",
> +        "expExitCode": "0",
> +        "verifyCmd": "$TC -d qdisc show dev $ETH",
> +        "matchPattern": "qdisc cbs 8002: parent 8001:8 hicredit 30 locredit -1470 sendslope -980000 idleslope 20000 offload 0",

Seems like this test is missing the 'refcnt 2' in the match pattern

> +        "matchCount": "1",
> +        "teardown": [
> +            "$TC qdisc del dev $ETH root",
> +            "echo \"1\" > /sys/bus/netdevsim/del_device"
> +        ]
>       }
>   ]

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

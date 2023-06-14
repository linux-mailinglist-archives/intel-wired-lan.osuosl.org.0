Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9827308EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 22:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C6B8418AB;
	Wed, 14 Jun 2023 20:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C6B8418AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686773313;
	bh=HoqdhooOc7roN9xmi6NKeeXPhY2jyQsHsfy3nRqwlhk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RZ+bGwva9B9BYQWGZZslIyfl+wi2HhviOYb6q8ambL3cTg8uGmX3J1Rl3GuiMVPhD
	 p6rncqByPbm042WfO25WOcfTnxhGdyZDNxAu3pWBVjheI2jvKuk8E4FP0pDF8quljo
	 D0kaeGbnC5xysTyjkMVHpeGVRZs9ttDRW3Hqt7D3brxq3/38TlXSjMHHXKPmgnHMM9
	 BUNGYzwL+tf3jm24WpTPWuM5HD8VjSTvZGjDW+QDcgalofVn7Evw9A8I3kSpd9eusL
	 Ct8KPCeo4WZIkwhztGyDydMR+2z09Hi9ex+zn1/QBm2cqIr8Lv/zstMihGWUQmdT8u
	 Ne2LmvYPM2iZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h63MyV15X68B; Wed, 14 Jun 2023 20:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA0F0415BF;
	Wed, 14 Jun 2023 20:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA0F0415BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E95F21BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC77E41D9E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC77E41D9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s91SJ9zZi7UQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 16:44:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B12D741B97
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com
 [IPv6:2607:f8b0:4864:20::c30])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B12D741B97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:44:16 +0000 (UTC)
Received: by mail-oo1-xc30.google.com with SMTP id
 006d021491bc7-559b0ddcd4aso732952eaf.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 09:44:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686761055; x=1689353055;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eW98Ee4r1mG1kWTj0StXi/qELeSfpc9yO8OERuzyI3M=;
 b=WqTBlqrWLEI725Bcy5SfZbZHwS9UyS4IpABpiyWxWWVjWceEy1x5pDrUQS7spvqeeQ
 3fL0pq1Qz+dZj+nd2ViLDkzBiEruNuXgeCbI+i5AeKhCWocSafO4MTR+UzcFNeLp2rs+
 RFs+6FO393owzpcL4ooHcQyeDW8liB7VB7W1JwSvQS6fCRyqZLITHu8og1ZZxEJ9AoXS
 xkd9x2kH3Cq+gluG1MZQk0Zr38RxVySo9c0RdOv6ldFwUqVbnMCBj2LtQ74LiEZeCuBP
 zKzx/WvFpaK28KSQNBQEhNMBMlhqgx71XqWx0CB7PZNvhQkwWmI2YJQEE6K/CrjuwCSy
 3Z3A==
X-Gm-Message-State: AC+VfDwHgqhbNT263bHaSKIrwyvLG/YGgCeWjcu1OBAUCNgmSb7bBOL/
 t81oHfRAF98gwfr01iJxTRWzXQ==
X-Google-Smtp-Source: ACHHUZ5PjeBHHykPcFovNV0N4IrezoWKnEU/yL61N0/nH9sOECRq+oEd/S9d7k6BrAlpXfGX1jnn9A==
X-Received: by 2002:a4a:d542:0:b0:55a:7bfe:2df3 with SMTP id
 q2-20020a4ad542000000b0055a7bfe2df3mr9438859oos.8.1686761055610; 
 Wed, 14 Jun 2023 09:44:15 -0700 (PDT)
Received: from ?IPV6:2804:14d:5c5e:44fb:90ea:5d38:822c:1759?
 ([2804:14d:5c5e:44fb:90ea:5d38:822c:1759])
 by smtp.gmail.com with ESMTPSA id
 s7-20020a4ac807000000b005421d52de9csm5170724ooq.45.2023.06.14.09.44.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 14 Jun 2023 09:44:15 -0700 (PDT)
Message-ID: <55cfe0a4-3874-5683-320e-0dec70bd2034@mojatatu.com>
Date: Wed, 14 Jun 2023 13:44:09 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-9-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Pedro Tammela <pctammela@mojatatu.com>
In-Reply-To: <20230613215440.2465708-9-vladimir.oltean@nxp.com>
X-Mailman-Approved-At: Wed, 14 Jun 2023 20:08:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1686761055; x=1689353055; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eW98Ee4r1mG1kWTj0StXi/qELeSfpc9yO8OERuzyI3M=;
 b=uEqlUerN8HSYli1RVOqAqqUZNeInvQdJ/+q219nQsEmws2EZzNRtB/3nFpiaBGuCE8
 YO4AVUlkY+OhQ0R8iYtW8m95lIqIvdZDFPdNJa9LvBY5lQjx9nqSRkS5cGdLbZm4wG1E
 4BI+4kWmWqfndU2vxidVRTOZznZ6lp2rKYtbKYj3Kq8PHj6QLZKy41eJlk08b3k2+Pq4
 z20xFg7ePk+lwVQC1eCb3HYhGTiu+DZ+LpS7l51oJoM8/li5jKfCClhCDNQdGsiqAl7g
 k0vnevhYlvBVKkLkFBJnt1FohohBwIehDvi0+28MMeyWds4wRN6zWU9d67piONZUqEqW
 zaTA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=uEqlUerN
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 8/9] selftests/tc-testing:
 test that taprio can only be attached as root
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
> Check that the "Can only be attached as root qdisc" error message from
> taprio is effective by attempting to attach it to a class of another
> taprio qdisc. That operation should fail.
> 
> In the bug that was squashed by change "net/sched: taprio: try again to
> report q->qdiscs[] to qdisc_leaf()", grafting a child taprio to a root
> software taprio would be misinterpreted as a change() to the root
> taprio. Catch this by looking at whether the base-time of the root
> taprio has changed to follow the base-time of the child taprio,
> something which should have absolutely never happened assuming correct
> semantics.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Pedro Tammela <pctammela@mojatatu.com>

> ---
> v1->v2: patch is new
> 
>   .../tc-testing/tc-tests/qdiscs/taprio.json    | 48 +++++++++++++++++++
>   1 file changed, 48 insertions(+)
> 
> diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> index a44455372646..58d4d97f4499 100644
> --- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> +++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> @@ -131,5 +131,53 @@
>           "teardown": [
>               "echo \"1\" > /sys/bus/netdevsim/del_device"
>           ]
> +    },
> +    {
> +        "id": "39b4",
> +        "name": "Reject grafting taprio as child qdisc of software taprio",
> +        "category": [
> +            "qdisc",
> +            "taprio"
> +        ],
> +        "plugins": {
> +            "requires": "nsPlugin"
> +        },
> +        "setup": [
> +            "echo \"1 1 8\" > /sys/bus/netdevsim/new_device",
> +            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 clockid CLOCK_TAI"
> +        ],
> +        "cmdUnderTest": "$TC qdisc replace dev $ETH parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 clockid CLOCK_TAI",
> +        "expExitCode": "2",
> +        "verifyCmd": "$TC -j qdisc show dev $ETH root | jq '.[].options.base_time'",
> +        "matchPattern": "0",
> +        "matchCount": "1",
> +        "teardown": [
> +            "$TC qdisc del dev $ETH root",
> +            "echo \"1\" > /sys/bus/netdevsim/del_device"
> +        ]
> +    },
> +    {
> +        "id": "e8a1",
> +        "name": "Reject grafting taprio as child qdisc of offloaded taprio",
> +        "category": [
> +            "qdisc",
> +            "taprio"
> +        ],
> +        "plugins": {
> +            "requires": "nsPlugin"
> +        },
> +        "setup": [
> +            "echo \"1 1 8\" > /sys/bus/netdevsim/new_device",
> +            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 flags 0x2"
> +        ],
> +        "cmdUnderTest": "$TC qdisc replace dev $ETH parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 flags 0x2",
> +        "expExitCode": "2",
> +        "verifyCmd": "$TC -j qdisc show dev $ETH root | jq '.[].options.base_time'",
> +        "matchPattern": "0",
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

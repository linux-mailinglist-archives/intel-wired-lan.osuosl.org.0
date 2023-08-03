Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A1276F2E8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 20:44:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FF9883B40;
	Thu,  3 Aug 2023 18:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FF9883B40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691088257;
	bh=k5/V7R0vZ7EfiR8wJFaj1lRqhkrO+DheIqsJdEkHOpo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=chT4PGbLHu8pdp2Z5RYWb2WNOcBKhAuI3pdBUvqqisSP8VOVsG4fmA3/Jsh0MsbGG
	 zolc4V5dmW2yiMpMqcInGLvEGhyzINNsfRyAblQnZj+KcjTKJl2b2Wyidv+Qx4QQK0
	 gLj4m+7vnyFowrm5LuPCLa8wAaAafoik3hASouVBEAz6fUoGx9vbusFTdGAhtKWQ1S
	 G30LZv1imX9IkOXNG7redNxQSGI+JcyRFyNMahJHjR0K8HUbcZHm6sF5890jQSjPk0
	 JM+e5tajOySEL2cUYpe2iIME14BzvoOi5sZK2Tt/y9+T3MpdFSvcNzWIDZqyp7ZoKX
	 eXg/VcKSWCRkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jbpDz0cJvYCN; Thu,  3 Aug 2023 18:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A26A48206B;
	Thu,  3 Aug 2023 18:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A26A48206B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 170521BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 18:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5571E408E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 18:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5571E408E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lw4DwrfhjzPH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 18:43:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F4294027B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 18:43:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F4294027B
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="350269098"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="350269098"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 11:43:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="1060414875"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="1060414875"
Received: from cgahan-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.253.5])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 11:43:17 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230803143347.7hhn27hzjymdvvw6@skbuf>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
 <20230801182421.1997560-10-vladimir.oltean@nxp.com>
 <87pm4510r0.fsf@intel.com> <20230803143347.7hhn27hzjymdvvw6@skbuf>
Date: Thu, 03 Aug 2023 11:43:16 -0700
Message-ID: <87il9w0xx7.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691088223; x=1722624223;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3gq1m1Q2ya0GLFc6+cnheSBbzbHrqHzRXeNNrsdtKU4=;
 b=FtrR9GXk0KzyDg/dXNxeXkB5nnuo7J+ln8btkJORtPPU36fdcyr55hx4
 hjHNxIU3/t0TT+VGEGo38szfLzyTx3jqzPIGP9me0c+1QedpaL0d+rZeb
 D6qKTANZ7hncJhQyjEgnu71hG1wAME8HEmLb5mBVxPVncaAtuz3O6UIXn
 Sw+9Rvei5qrFKBmcoxc3muh3Hzkpj5Zrv7i/tH0LcGibEj4CoVOK/NPZ9
 KL9KgwAARlOqmim6/vesLcoDxhUDqbreCVnSZMSJRi/tkEtsJut677tQT
 olJyWnZmMOP/Ly0mR2cJ3pMZV+18AYWM/gb9930zRcijI0GUFkrWmDBXc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FtrR9GXk
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 09/10]
 selftests/tc-testing: test that taprio can only be attached as root
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> Hi Vinicius,
>
> On Wed, Aug 02, 2023 at 04:29:55PM -0700, Vinicius Costa Gomes wrote:
>> Vladimir Oltean <vladimir.oltean@nxp.com> writes:
>> This test is somehow flaky (all others are fine), 1 in ~4 times, it fails.
>> 
>> Taking a look at the test I couldn't quickly find out the reason for the
>> flakyness.
>> 
>> Here's the verbose output of one of the failures:
>> 
>> vcgomes@otc-cfl-clr-30 ~/src/net-next/tools/testing/selftests/tc-testing $ sudo ./tdc.py -e 39b4 -v
>> All test results:
>> 
>> 1..1
>> not ok 1 39b4 - Reject grafting taprio as child qdisc of software taprio
>> 	Could not match regex pattern. Verify command output:
>> parse error: Objects must consist of key:value pairs at line 1, column 334
>
> Interesting. I'm not seeing this, and I re-ran it a few times. The error
> message seems to come from jq, as if it's not able to parse something.
>
> Sorry, I only have caveman debugging techniques. Could you remove the
> pipe into jq and rerun a few times, see what it prints when it fails?
>
> diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> index de51408544e2..bb6be1f78e31 100644
> --- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> +++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
> @@ -148,8 +148,8 @@
>          ],
>          "cmdUnderTest": "$TC qdisc replace dev $ETH parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 clockid CLOCK_TAI",
>          "expExitCode": "2",
> -        "verifyCmd": "$TC -j qdisc show dev $ETH root | jq '.[].options.base_time'",
> -        "matchPattern": "0",
> +        "verifyCmd": "$TC -j qdisc show dev $ETH root",
> +        "matchPattern": "\\[{\"kind\":\"taprio\",\"handle\":\"8001:\",\"root\":true,\"refcnt\":9,\"options\":{\"tc\":0,\"map\":\\[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0\\],\"queues\":\\[\\],\"clockid\":\"TAI\",\"base_time\":0,\"cycle_time\":20000000,\"cycle_time_extension\":0,\"schedule\":\\[{\"index\":0,\"cmd\":\"S\",\"gatemask\":\"0xff\",\"interval\":20000000}\\],\"max-sdu\":\\[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0\\],\"fp\":\\[\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\"\\]}}\\]",
>          "matchCount": "1",
>          "teardown": [
>              "$TC qdisc del dev $ETH root",

Hmmm, I think that this test discovered another bug (perhaps even two).
When it fails here's the json I get (edited for clarity):

[{"kind":"taprio","handle":"8001:","root":true,"refcnt":9,
  "options":{
        "tc":0,
        "map":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        "queues":[],
        "clockid":"TAI",
        "base_time":0,
        "cycle_time":0,
        "cycle_time_extension":0,
        {
                "base_time":0,
                "cycle_time":20000000,
                "cycle_time_extension":0,
                "schedule":[{"index":0,"cmd":"S","gatemask":"0xff","interval":20000000}]
        }}}]

Thinking out loud: If I am reading this right, there's no "oper"
schedule, only an "admin" schedule. So the first bug is probably a
taprio bug when deciding if it should create an "open" vs. "admin"
schedule.

The second bug seems to be in the way that q_taprio in iproute2
handles the admin schedule, is just an object inside another, which
seems to be invalid.

Does it make sense?


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

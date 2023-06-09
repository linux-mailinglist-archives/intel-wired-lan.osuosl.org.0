Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BF9729E26
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 17:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1270F42538;
	Fri,  9 Jun 2023 15:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1270F42538
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686323783;
	bh=pYVBy8ludcWeNkHtR4gPGsPmHOfiQjDTwVvqP3qaIS8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CfFayvbn+/nqJD4XyNKkX00DH0Xho8IQTon5YvvPFsp2um31F5MaJrXs4mBEtLfN1
	 3KDW1SFA+MVXCYgDDvYbbswy1q2PWNbAtsGMQEom5TqfYELsiqQhFAXpYukC187QIr
	 iFs0dRo8oRGQpUP+3MU0M0MXMyU26rT9pAVx//a07hIm06BIv/hJ/1ZFt76xDLcnsx
	 El8DSjnAaTWmqvnMHWJRNz358BDtqcK8Uum5kJISYwf8KsBPWJuW5uJHLmJh/DkPpF
	 vSaZgo57ESkBbT4HIPfAcrOGh33udcwueN+1RLFjT/SSg4WCTiGLMBU3xtfxj42SjP
	 DXGgN8FANlDkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a7mxjUzH4asw; Fri,  9 Jun 2023 15:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71D9F4251D;
	Fri,  9 Jun 2023 15:16:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71D9F4251D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A3011BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 14:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D525783C8D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 14:56:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D525783C8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aDViQfnd8co9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 14:56:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B28C83C83
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com
 [IPv6:2001:4860:4864:20::35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B28C83C83
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 14:56:41 +0000 (UTC)
Received: by mail-oa1-x35.google.com with SMTP id
 586e51a60fabf-1a196784a4cso604002fac.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 Jun 2023 07:56:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686322600; x=1688914600;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mNjEF1zb+JpJdY0weZ4OdAOu0yke/I9t8R3uYm6sLTw=;
 b=So/x96uOuevLoPHwR07zaKwlXdYWOGsj0mlzdJi2rgf0O71KLOK0YFOYzZMusvp2A5
 UVeYRZ7LuiWX9jbmWhjP1UWlUWuhUSv2bO1CK7bin111ceudcRnq4kk2gFqbPQZ6AHg4
 3oYAyXhqUnzOBmF0LGMJN9t2tsqcEDCSU0f/LIo03Tainzyhh/pMyp4cm8enR+xfNExd
 B9UjWsJEbbqcgOgx6wwVSmml3G9k9v8VzW3E6yKoUSeOTeqCP4Oy5KGWJZUuaXDguMIn
 sI18xCDwkYZiccbrgwjTRo0k0ROzt/LonK4voO/dJSmzmARexteF56IENv9Wk15WxHtr
 41fw==
X-Gm-Message-State: AC+VfDw7G7YsVywGj8fynbi+vDr2iX+5w8O24T9YshnZXNcUYI7OoF8F
 LEvJMDqmj7CrNSNDZRz3Flm5bw==
X-Google-Smtp-Source: ACHHUZ5lyjIg3/k8ishXP5lVr7SzW3xDk6gDIW+APpNABj3FGwxCpQmA/zWxRkbdHKZaShP8U7SZcw==
X-Received: by 2002:a05:6870:fc84:b0:19f:7c4c:38b4 with SMTP id
 ly4-20020a056870fc8400b0019f7c4c38b4mr1554940oab.15.1686322600226; 
 Fri, 09 Jun 2023 07:56:40 -0700 (PDT)
Received: from ?IPV6:2804:7f1:e2c0:9e83:b7c7:f418:cfcf:f0dd?
 ([2804:7f1:e2c0:9e83:b7c7:f418:cfcf:f0dd])
 by smtp.gmail.com with ESMTPSA id
 a21-20020a056870d19500b001a3093ec23fsm2236633oac.32.2023.06.09.07.56.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Jun 2023 07:56:39 -0700 (PDT)
Message-ID: <facdfceb-fe2e-795b-ea89-1b67478eb533@mojatatu.com>
Date: Fri, 9 Jun 2023 11:56:35 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <20230602103750.2290132-6-vladimir.oltean@nxp.com>
 <CAM0EoM=P9+wNnNQ=ky96rwCx1z20fR21EWEdx+Na39NCqqG=3A@mail.gmail.com>
 <20230609121043.ekfvbgjiko7644t7@skbuf>
Content-Language: en-US
From: Victor Nogueira <victor@mojatatu.com>
In-Reply-To: <20230609121043.ekfvbgjiko7644t7@skbuf>
X-Mailman-Approved-At: Fri, 09 Jun 2023 15:15:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1686322600; x=1688914600; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mNjEF1zb+JpJdY0weZ4OdAOu0yke/I9t8R3uYm6sLTw=;
 b=yqu1Gt/I72W8rGCMTbNxP4nxyhxODNNERehop1YFjTuhAXJzp3uvoX/x6Zqn80ZPsP
 qPNKqE0PRLSNo9svzye/a1X7FjDNhWzOUX+2yPywDUpNtdZd/TITx3Ce2a77ghBWrL9U
 EmSNrEfZYGTeblSWGgITvKbFQLgD9LROEfaw65vEhd231ogFe7GnM79ShBz8kCsPyZaH
 cdkBTFk7A522ggTbqdCnOhpuWmX4QnN7G4NRlIwBcPXt41WPTGi7ZtUuiGXlFu6e5sm+
 Rb3YsG0S3J8oSiUu0dFlFvTTfDMUk5BkxDdgpUI1gDHvHUXH96EzUxGV6KBzx01Lb3Nt
 SjLw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=yqu1Gt/I
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 5/5] net/sched:
 taprio: dump class stats for the actual q->qdiscs[]
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09/06/2023 09:10, Vladimir Oltean wrote:
> On Thu, Jun 08, 2023 at 02:44:46PM -0400, Jamal Hadi Salim wrote:
>> Other than the refcount issue i think the approach looks reasonable to
>> me. The stats before/after you are showing below though are
>> interesting; are you showing a transient phase where packets are
>> temporarily in the backlog. Typically the backlog is a transient phase
>> which lasts a very short period. Maybe it works differently for
>> taprio? I took a quick look at the code and do see to decrement the
>> backlog in the dequeue, so if it is not transient then some code path
>> is not being hit.
> 
> It's a fair concern. The thing is that I put very aggressive time slots
> in the schedule that I'm testing with, and my kernel has a lot of
> debugging stuff which bogs it down (kasan, kmemleak, lockdep, DMA API
> debug etc). Not to mention that the CPU isn't the fastest to begin with.
> 
> The way taprio works is that there's a hrtimer which fires at the
> expiration time of the current schedule entry and sets up the gates for
> the next one. Each schedule entry has a gate for each traffic class
> which determines what traffic classes are eligible for dequeue() and
> which ones aren't.
> 
> The dequeue() procedure, though also invoked by the advance_schedule()
> hrtimer -> __netif_schedule(), is also time-sensitive. By the time
> taprio_dequeue() runs, taprio_entry_allows_tx() function might return
> false when the system is so bogged down that it wasn't able to make
> enough progress to dequeue() an skb in time. When that happens, there is
> no mechanism, currently, to age out packets that stood too much in the
> TX queues (what does "too much" mean?).
> 
> Whereas enqueue() is technically not time-sensitive, i.e. you can
> enqueue whenever you want and the Qdisc will dequeue whenever it can.
> Though in practice, to make this scheduling technique useful, the user
> space enqueue should also be time-aware (though you can't capture this
> with ping).
> 
> If I increase all my sched-entry intervals by a factor of 100, the
> backlog issue goes away and the system can make forward progress.
> 
> So yeah, sorry, I didn't pay too much attention to the data I was
> presenting for illustrative purposes.
> 
>> Aside: I realize you are busy - but if you get time and provide some
>> sample tc command lines for testing we could help create the tests for
>> you, at least the first time. The advantage of putting these tests in
>> tools/testing/selftests/tc-testing/ is that there are test tools out
>> there that run these tests and so regressions are easier to catch
>> sooner.
> 
> Yeah, ok. The script posted in a reply on the cover letter is still what
> I'm working with. The things it intends to capture are:
> - attaching a custom Qdisc to one of taprio's classes doesn't fail
> - attaching taprio to one of taprio's classes fails
> - sending packets through one queue increases the counters (any counters)
>    of just that queue
> 
> All the above, replicated once for the software scheduling case and once
> for the offload case. Currently netdevsim doesn't attempt to emulate
> taprio offload.
> 
> Is there a way to skip tests? I may look into tdc, but I honestly don't
> have time for unrelated stuff such as figuring out why my kernel isn't
> configured for the other tests to pass - and it seems that once one test
> fails, the others are completely skipped, see below.

You can tell tdc to run a specific test file by providing the "-f" option.
For example, if you want to run only taprio tests, you can issue the
following command:

./tdc.py -f tc-tests/qdiscs/taprio.json

This is also described in tdc's README.

> Also, by which rule are the test IDs created?

When creating a test case in tdc, you must have an ID field.
What we do to generate the IDs is leave the "id" field as an
empty string on the test case description, for example:


{
     "id": "",
     "name": "My dummy test case",
     ...
}

and run the following:

./tdc.py -i

This will automatically fill up the "id" field in the JSON
with an appropriate ID.

> root@debian:~# cd selftests/tc-testing/
> root@debian:~/selftests/tc-testing# ./tdc.sh
> considering category qdisc
>   -- ns/SubPlugin.__init__
> Test 0582: Create QFQ with default setting
> Test c9a3: Create QFQ with class weight setting
> Test d364: Test QFQ with max class weight setting
> Test 8452: Create QFQ with class maxpkt setting
> Test 22df: Test QFQ class maxpkt setting lower bound
> Test 92ee: Test QFQ class maxpkt setting upper bound
> Test d920: Create QFQ with multiple class setting
> Test 0548: Delete QFQ with handle
> Test 5901: Show QFQ class
> Test 0385: Create DRR with default setting
> Test 2375: Delete DRR with handle
> Test 3092: Show DRR class
> Test 3460: Create CBQ with default setting
> exit: 2
> exit: 0
> Error: Specified qdisc kind is unknown.

As you stated, this likely means you are missing a config option.
However you can just ask tdc to run a specific test file to avoid this.

> (...)

cheers,
Victor
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

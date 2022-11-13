Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3214F626E12
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Nov 2022 08:35:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22116408E9;
	Sun, 13 Nov 2022 07:35:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22116408E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668324953;
	bh=7ZQpD80s7rXeA31T59CS49zY3VzfnKE3Nk8ybmr5wPY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J33D8SFDhCnKIDr4uYmb/Xcf0GZZzXQpGAZ5ptJgVMw96YmvYioj7/2dYoTrWbo2F
	 fkJ641rtAUKf3CcgfzgegcuhQx7xKra6EUiuZvvhp8a/aYdLvTywXsrPkpV5P4NPh2
	 ZjbuHI5PiD9OvEK4m97F8KM4dZJ4EljjXauuBistV1g/s+ny58s2yVHT5+F0BYLZWo
	 xvz6h1pkh4cAyYKIoexSv8yuw6tFqfE/T0YduGdGrhYNoHI263rMTgVvnCnqSfniwl
	 kHYLz1VujtiGDvaxcO1/DIYsZMh7DpUgm++NZ4km1Vmjd4AofKONn74bfKH4JzojDZ
	 hrZuKrUA3tw0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRVgiP8jwJ_o; Sun, 13 Nov 2022 07:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7905C408F2;
	Sun, 13 Nov 2022 07:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7905C408F2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 036801BF4E5
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF0D8408F2
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:35:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF0D8408F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jysdMyclbneF for <intel-wired-lan@osuosl.org>;
 Sun, 13 Nov 2022 07:35:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B69FF408E9
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B69FF408E9
 for <intel-wired-lan@osuosl.org>; Sun, 13 Nov 2022 07:35:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="338569128"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="338569128"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:35:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10529"; a="671181313"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671181313"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.13])
 ([10.13.12.13])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2022 23:35:42 -0800
Message-ID: <40c496da-ad6f-18fb-a7ed-e9660641697a@linux.intel.com>
Date: Sun, 13 Nov 2022 09:35:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20221104063048.18979-1-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221104063048.18979-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668324944; x=1699860944;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+QmVInAyYHLzT7F696ExsXD+Ns1AsXIgm2x1bB5Ndjs=;
 b=KjaO5gBXo/2UhSMfGq7PxpS3EZtbBNbMVztpNyqlCi+Q6JjhI1AO1+J5
 h4PDYt1N8X6JFwVNdk20Mghft4a7/0rglVnkhThszoMQpo18RU5NssxlP
 M1UG6YyI5P5GhXfI8PejQ9/yuKr2TSsUgwXXI1Gi/B8YbjvWqt/8sFIud
 tJHKd3uFI3TV/wOzsAsoEF/4x3lJ2vEiQ8Osx4gT4UEWWcK1c/Ay6+YwO
 8haUybtBGqZnk6J1exKf1NYUGkx63r05EDY9rjvXFvk9kuf8bRGLsjNlG
 dESrbdZczPATFUXpKCakZ2v972owiLSaiTJBpghhUl/vTYHT3HDwHsu1Z
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KjaO5gBX
Subject: Re: [Intel-wired-lan] [PATCH v3] igc: Enhance Qbv scheduling by
 using first flag bit
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
Cc: pmenzel@molgen.mpg.de, mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/4/2022 08:30, Muhammad Husaini Zulkifli wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> The I225 hardware has a limitation that packets can only be scheduled
> in the [0, cycle-time] interval. So, scheduling a packet to the start
> of the next cycle doesn't usually work.
> 
> To overcome this, we use the Transmit Descriptor first flag to indicates
> that a packet should be the first packet (from a queue) in a cycle
> according to the section 7.5.2.9.3.4 The First Packet on Each QBV Cycle
> in Intel Discrete I225/6 User Manual.
> 
> But this only works if there was any packet from that queue during the
> current cycle, to avoid this issue, we issue an empty packet if that's
> not the case. Also require one more descriptor to be available, to take
> into account the empty packet that might be issued.
> 
> Test Setup:
> 
> Talker: Use l2_tai to generate the launchtime into packet load.
> 
> Listener: Use timedump.c to compute the delta between packet arrival
> and LaunchTime packet payload.
> 
> Test Result:
> 
> Before:
> 
> 1666000610127300000,1666000610127300096,96,621273
> 1666000610127400000,1666000610127400192,192,621274
> 1666000610127500000,1666000610127500032,32,621275
> 1666000610127600000,1666000610127600128,128,621276
> 1666000610127700000,1666000610127700224,224,621277
> 1666000610127800000,1666000610127800064,64,621278
> 1666000610127900000,1666000610127900160,160,621279
> 1666000610128000000,1666000610128000000,0,621280
> 1666000610128100000,1666000610128100096,96,621281
> 1666000610128200000,1666000610128200192,192,621282
> 1666000610128300000,1666000610128300032,32,621283
> 1666000610128400000,1666000610128301056,-98944,621284
> 1666000610128500000,1666000610128302080,-197920,621285
> 1666000610128600000,1666000610128302848,-297152,621286
> 1666000610128700000,1666000610128303872,-396128,621287
> 1666000610128800000,1666000610128304896,-495104,621288
> 1666000610128900000,1666000610128305664,-594336,621289
> 1666000610129000000,1666000610128306688,-693312,621290
> 1666000610129100000,1666000610128307712,-792288,621291
> 1666000610129200000,1666000610128308480,-891520,621292
> 1666000610129300000,1666000610128309504,-990496,621293
> 1666000610129400000,1666000610128310528,-1089472,621294
> 1666000610129500000,1666000610128311296,-1188704,621295
> 1666000610129600000,1666000610128312320,-1287680,621296
> 1666000610129700000,1666000610128313344,-1386656,621297
> 1666000610129800000,1666000610128314112,-1485888,621298
> 1666000610129900000,1666000610128315136,-1584864,621299
> 1666000610130000000,1666000610128316160,-1683840,621300
> 1666000610130100000,1666000610128316928,-1783072,621301
> 1666000610130200000,1666000610128317952,-1882048,621302
> 1666000610130300000,1666000610128318976,-1981024,621303
> 1666000610130400000,1666000610128319744,-2080256,621304
> 1666000610130500000,1666000610128320768,-2179232,621305
> 1666000610130600000,1666000610128321792,-2278208,621306
> 1666000610130700000,1666000610128322816,-2377184,621307
> 1666000610130800000,1666000610128323584,-2476416,621308
> 1666000610130900000,1666000610128324608,-2575392,621309
> 1666000610131000000,1666000610128325632,-2674368,621310
> 1666000610131100000,1666000610128326400,-2773600,621311
> 1666000610131200000,1666000610128327424,-2872576,621312
> 1666000610131300000,1666000610128328448,-2971552,621313
> 1666000610131400000,1666000610128329216,-3070784,621314
> 1666000610131500000,1666000610131500032,32,621315
> 1666000610131600000,1666000610131600128,128,621316
> 1666000610131700000,1666000610131700224,224,621317
> 
> After:
> 
> 1666073510646200000,1666073510646200064,64,2676462
> 1666073510646300000,1666073510646300160,160,2676463
> 1666073510646400000,1666073510646400256,256,2676464
> 1666073510646500000,1666073510646500096,96,2676465
> 1666073510646600000,1666073510646600192,192,2676466
> 1666073510646700000,1666073510646700032,32,2676467
> 1666073510646800000,1666073510646800128,128,2676468
> 1666073510646900000,1666073510646900224,224,2676469
> 1666073510647000000,1666073510647000064,64,2676470
> 1666073510647100000,1666073510647100160,160,2676471
> 1666073510647200000,1666073510647200256,256,2676472
> 1666073510647300000,1666073510647300096,96,2676473
> 1666073510647400000,1666073510647400192,192,2676474
> 1666073510647500000,1666073510647500032,32,2676475
> 1666073510647600000,1666073510647600128,128,2676476
> 1666073510647700000,1666073510647700224,224,2676477
> 1666073510647800000,1666073510647800064,64,2676478
> 1666073510647900000,1666073510647900160,160,2676479
> 1666073510648000000,1666073510648000000,0,2676480
> 1666073510648100000,1666073510648100096,96,2676481
> 1666073510648200000,1666073510648200192,192,2676482
> 1666073510648300000,1666073510648300032,32,2676483
> 1666073510648400000,1666073510648400128,128,2676484
> 1666073510648500000,1666073510648500224,224,2676485
> 1666073510648600000,1666073510648600064,64,2676486
> 1666073510648700000,1666073510648700160,160,2676487
> 1666073510648800000,1666073510648800000,0,2676488
> 1666073510648900000,1666073510648900096,96,2676489
> 1666073510649000000,1666073510649000192,192,2676490
> 1666073510649100000,1666073510649100032,32,2676491
> 1666073510649200000,1666073510649200128,128,2676492
> 1666073510649300000,1666073510649300224,224,2676493
> 1666073510649400000,1666073510649400064,64,2676494
> 1666073510649500000,1666073510649500160,160,2676495
> 1666073510649600000,1666073510649600000,0,2676496
> 1666073510649700000,1666073510649700096,96,2676497
> 1666073510649800000,1666073510649800192,192,2676498
> 1666073510649900000,1666073510649900032,32,2676499
> 1666073510650000000,1666073510650000128,128,2676500
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Co-developed-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Co-developed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Malli C <mallikarjuna.chilakala@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> 
> ---
> V2 -> V3: Fix review comments from Anthony
> V1 -> V2: Fix error when compile with W=1
> ---
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |   2 +
>   drivers/net/ethernet/intel/igc/igc_defines.h |   2 +
>   drivers/net/ethernet/intel/igc/igc_main.c    | 176 ++++++++++++++++---
>   3 files changed, 151 insertions(+), 29 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

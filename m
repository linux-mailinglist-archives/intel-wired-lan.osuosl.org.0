Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93535745766
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 10:35:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED3BC60F07;
	Mon,  3 Jul 2023 08:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED3BC60F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688373311;
	bh=nmTeabUQNdDHcyuLfBj4PImozNT91zKnlnJJzTlmxoI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hBNgq7G8T1ZRXenpsc5FlygT5L2P+VLtgUoe8iQdxCOP6K+z6qQzut6P9mBojCPk8
	 pl9PR+t7GdWjJLzJtFHJAZsLmEFsSEM/IbHTJd8wSFVThZV1zMZ6LGi8bP4iR1NgjL
	 ZuAa5IJjocnNg12Gpm2l+iou5Z1NjfrAxT5o/bRJ8pu3SsisPpq7lZwKT29C0Lr3h8
	 HS8L/yLtbAG2ktD8tA3J+GIvnpC9lY+saLjQgmnvvP0tDjkIZSn7gEQzYbV/VOxcbc
	 fFHX1pUa6c0PkoBYbAs8j+CBDoLn9TIY6CauwsbcRBRv7Q6n648LHuaGlmKeQgWzq5
	 xz/YYl/AsVVJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AzVc9FR3MS7X; Mon,  3 Jul 2023 08:35:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1AD560D53;
	Mon,  3 Jul 2023 08:35:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1AD560D53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C105B1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 08:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5B8360B2D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 08:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5B8360B2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nXYIpIyq4cQk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 08:34:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D785C60B2C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D785C60B2C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 08:34:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="426508744"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="426508744"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 01:34:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="788447778"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="788447778"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.63])
 ([10.13.12.63])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 01:34:47 -0700
Message-ID: <f14f0d50-2569-0d47-91d6-23c1f99712ad@linux.intel.com>
Date: Mon, 3 Jul 2023 11:34:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Florian Kauer <florian.kauer@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
 <20230619100858.116286-3-florian.kauer@linutronix.de>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230619100858.116286-3-florian.kauer@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688373292; x=1719909292;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7kbif9bfnNgRHrXrFMABWk7zXjF8D6a49xUb4z1x3J8=;
 b=EDgGbf/46vhrppbnxJa+FD1hxPJQF3Ixnj0JzyGit15dtH/CTo3GqRk5
 +YBVilG9wMdsBSeSpVdtxnUbsuelgAbPlTLZ1cCWNkipzy3duPpTAxbxj
 HmWtgsXhIdv+fcplb6wSvngIvHKBHeWrF2yGaSrbgbIhZVCejhCY6PLwW
 qb25/z95k0M8Tbbgr54AOrhlYnUrTo0gjAsow1aSZRhE3plJUsLvqlZHP
 99lnWHYEqonKtaNuw3btRNNYkiG1Yah4ARinIFuVJ9jxwiJ3IO0eYn3uz
 nOjjuPmsjPsnZr6QAMhU0C2LnE3/ZLE8ngm8BBl0TAE/IX2zBfyjN71PM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EDgGbf/4
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/6] igc: Do not enable taprio
 offload for invalid arguments
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/19/2023 13:08, Florian Kauer wrote:
> Only set adapter->taprio_offload_enable after validating the arguments.
> Otherwise, it stays set even if the offload was not enabled.
> Since the subsequent code does not get executed in case of invalid
> arguments, it will not be read at first.
> However, by activating and then deactivating another offload
> (e.g. ETF/TX launchtime offload), taprio_offload_enable is read
> and erroneously keeps the offload feature of the NIC enabled.
> 
> This can be reproduced as follows:
> 
>      # TAPRIO offload (flags == 0x2) and negative base-time leading to expected -ERANGE
>      sudo tc qdisc replace dev enp1s0 parent root handle 100 stab overhead 24 taprio \
> 	    num_tc 1 \
> 	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
> 	    queues 1@0 \
> 	    base-time -1000 \
> 	    sched-entry S 01 300000 \
> 	    flags 0x2
> 
>      # IGC_TQAVCTRL is 0x0 as expected (iomem=relaxed for reading register)
>      sudo pcimem /sys/bus/pci/devices/0000:01:00.0/resource0 0x3570 w*1
> 
>      # Activate ETF offload
>      sudo tc qdisc replace dev enp1s0 parent root handle 6666 mqprio \
> 	    num_tc 3 \
> 	    map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
> 	    queues 1@0 1@1 2@2 \
> 	    hw 0
>      sudo tc qdisc add dev enp1s0 parent 6666:1 etf \
> 	    clockid CLOCK_TAI \
> 	    delta 500000 \
> 	    offload
> 
>      # IGC_TQAVCTRL is 0x9 as expected
>      sudo pcimem /sys/bus/pci/devices/0000:01:00.0/resource0 0x3570 w*1
> 
>      # Deactivate ETF offload again
>      sudo tc qdisc delete dev enp1s0 parent 6666:1
> 
>      # IGC_TQAVCTRL should now be 0x0 again, but is observed as 0x9
>      sudo pcimem /sys/bus/pci/devices/0000:01:00.0/resource0 0x3570 w*1
> 
> Fixes: e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)


Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

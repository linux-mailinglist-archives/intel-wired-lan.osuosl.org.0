Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1407482B2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 13:07:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0035640917;
	Wed,  5 Jul 2023 11:07:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0035640917
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688555221;
	bh=3xJ9oFmW0HTtOQVcHr6885kkPyCUSHIjMvYfp5bgljQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hdGWKI6AV1mxX+yRnCMPN+mQAlFj3oXkogUV29/PRQYP2RgafMQx9+jizsAwt+5Cu
	 MsMD/EYhFF384J6dOGY2HjZ28haPu1DZQdLULFndmZZu7eL78tuMqWrPgAlyVj90BN
	 KSobwneK9zf/t7S4Aq3vHn5h0nCRqvwEWN2Ro5pGH815+AV1PZG8bhhMvZisV81QeE
	 LP5B9Sr0gfzJ58KDALuZrBQr6/QPgnfohLqTClT0BxRqAYytTRezsE0H8msoWS0n/Z
	 HpjWhMxXmuYL17dYgeoSUw1i8and92aPS09ZCHEbdjVGzjOn52gTbkjk502A+9p4le
	 ZKaKIILTy1X2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 16Tg2Pi3a1o9; Wed,  5 Jul 2023 11:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD1C8401BD;
	Wed,  5 Jul 2023 11:06:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD1C8401BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0841BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 11:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 310B3401BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 11:06:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 310B3401BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e0oKH6bJ9qI0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 11:06:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F0CF40121
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F0CF40121
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 11:06:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="394065782"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="394065782"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 04:06:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="809220027"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="809220027"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.63])
 ([10.13.12.63])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 04:06:47 -0700
Message-ID: <c1514314-cfdf-65d1-986f-de360b4ee719@linux.intel.com>
Date: Wed, 5 Jul 2023 14:06:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
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
 <20230619100858.116286-6-florian.kauer@linutronix.de>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230619100858.116286-6-florian.kauer@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688555212; x=1720091212;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=XJ46Pv64C/su0PPGz81/es6ZOwBNCUjsqmR0imBa+Fo=;
 b=WJWx2W9xY8KmrE40mSGlEmZEy6yiXdOhKte7cNTvXUY2T5lwEyAgmRr9
 7Jn/fbbO7KYeaZuaToksQBw9mmXcDwgsFBGCUUFQS/r+FZhCmQUrpkY26
 DgTpSaszukD2bISWuLF3z6snoJOf9Sqrcjo61f4t8lWYHHGxd9NnD6phl
 PivEmOvQARVVuSVzifn0mUT9zPXbXm0e4V08obJCnBkauSaYqHmMtt74C
 1K+9N8Dy6XO8gaEKDaqUzhPivdNG1Y9HZ5rVmq1NB2I0HsipteKA89F3m
 MbR8uT/xyLrCXOSxCxQ7Y9xmsUb0kduU543PrdXk0XmOgoykNtJVlYOmD
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WJWx2W9x
Subject: Re: [Intel-wired-lan] [PATCH net v2 5/6] igc: Fix launchtime before
 start of cycle
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
> It is possible (verified on a running system) that frames are processed
> by igc_tx_launchtime with a txtime before the start of the cycle
> (baset_est).
> 
> However, the result of txtime - baset_est is written into a u32,
> leading to a wrap around to a positive number. The following
> launchtime > 0 check will only branch to executing launchtime = 0
> if launchtime is already 0.
> 
> Fix it by using a s32 before checking launchtime > 0.
> 
> Fixes: db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)


Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

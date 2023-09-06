Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E95796DA8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 01:37:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5958040603;
	Wed,  6 Sep 2023 23:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5958040603
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694043466;
	bh=EbGjHXErkrHUNgwzkEpBioAgzVcPtuqolZIF2CSAQZg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f3wHHrcqAZ1Fo0v9Mjwe8iq+jP/7Up3d6r792ajFB68/grbrOzc9UyzCVU3gv9tED
	 7ID6TVyp5xL7hfKpETHGOQMfTyzOFZYwPre8HDp92FN1BESInH30h6zvk2hMbDwM5U
	 VR3zU48PNYuyiynAQurD9qJazWu47OrGNDhjjF010hOoBQEQih1zzm2WCsEjraJt/h
	 mB3SLYKRwL3Naz62vNBVy18/EUmzEvoLx5UuUkGphbAi3Fn183GeDNylJb5I8jf5WG
	 7mlUTP8wU6EbW5pA6QEqBRT1WINhIopnRDLfgQDJ21LXQqi4yeWaAFoNTaetqpULP/
	 kZFRhO0DMnEEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sgvQ7gCCTSDR; Wed,  6 Sep 2023 23:37:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E98F403A5;
	Wed,  6 Sep 2023 23:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E98F403A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BF5B1BF368
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 23:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00DF6403A5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 23:37:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00DF6403A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ex0HHZigzApH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 23:37:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF62B4032B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 23:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF62B4032B
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="377124928"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="377124928"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:37:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="865361694"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="865361694"
Received: from mcewe-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.251.10.12])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:37:34 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <ZPkDaLo4ubFRpPg3@boxer>
References: <20230905213753.697461-1-vinicius.gomes@intel.com>
 <ZPkDaLo4ubFRpPg3@boxer>
Date: Wed, 06 Sep 2023 16:37:34 -0700
Message-ID: <877cp2rhz5.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694043458; x=1725579458;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WbYu9Oe2D0TTa+maLk3z8eDFJ1OYmdIYH7jQnzRHx8k=;
 b=nkKP9HE8poyV0qGMniFuh9iCLuauGA2vYdLw9j+etXUmTwTsqDyuV/Al
 Io57+FMSgeLSQIWk3OArRM70/M/13ncFUkhyKNNwRfwC16WtAzn/DGwot
 Ae/RHYrWnj2gNfp7E/g1Sj/o1O7A92DbsEYchacEG/Zvyuy2RqiG0ZVGK
 8+zsiAMyr+5y+SWsKwx5VDBc5jk+gBEpBe0JH0DwWVoV+X0kxhO4sFrB+
 T3rt4kodaQeUb/tefJaLc8Fu7Fam0tzfHGh+KzDo+3L/eJiaR2f1P65lM
 5t8bG6WCUYly4mLELa2XqR5TDY7dQvVRu0EWkdwbUaH13C7LOlbSRNA9w
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nkKP9HE8
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Fix infinite
 initialization loop with early XDP redirect
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Jithu Joseph <jithu.joseph@intel.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Vedang Patel <vedang.patel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Maciej Fijalkowski <maciej.fijalkowski@intel.com> writes:

> On Tue, Sep 05, 2023 at 02:37:52PM -0700, Vinicius Costa Gomes wrote:
>> When a XDP redirect happens before the link is ready, that
>
> When exactly link was 'ready' in your setup? You said it was enough to
> launch traffic towards igc iface before running xdp-bench. Was the iface
> down or up or?

In short, the interface was up and it was brought down "externally".

I should have explained my test better: A is the system under test, B is
the monitor; 1. initially the link between systems A and B is up; 2. I
setup the vlans and xdp-bench; 3. I start sending traffic; 4. on system
B, I brind the NIC connected to A down; 5. infinite initialization loop.

>
>> transmission will not finish and will timeout, causing an adapter
>> reset. If the redirects do not stop, the adapter will not stop
>> resetting.
>
> Please highlight that this driver shares tx resources with netstack. I
> believe the source of this bug is that the watchdog is responsible to call
> netif_carrier_on() from a workqueue which happens to be scheduled *after*
> clearing __IGC_DOWN in igc_up().
>

Sure, will add this information to the commit message and send a v2.

>> 
>> Wait for the driver to signal that there's a carrier before allowing
>> transmissions to proceed.
>> 
>> Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
>> Reported-by: Ferenc Fejes <ferenc.fejes@ericsson.com>
>> Closes: https://lore.kernel.org/netdev/0caf33cf6adb3a5bf137eeaa20e89b167c9986d5.camel@ericsson.com/
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Tested-by: Ferenc Fejes <ferenc.fejes@ericsson.com>
>> ---
>>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 293b45717683..98de34d0ce07 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -6491,7 +6491,7 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
>>  	struct igc_ring *ring;
>>  	int i, drops;
>>  
>> -	if (unlikely(test_bit(__IGC_DOWN, &adapter->state)))
>> +	if (unlikely(!netif_carrier_ok(dev)))
>>  		return -ENETDOWN;
>
> I thought about keeping the bit check as well but given what i wrote above
> it is probably redundant, so:
>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>
>>  
>>  	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
>> -- 
>> 2.41.0
>> 


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

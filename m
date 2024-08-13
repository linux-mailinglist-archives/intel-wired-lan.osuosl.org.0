Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8E3950FBB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 00:26:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82BD440B20;
	Tue, 13 Aug 2024 22:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cd3UeYkiJuBH; Tue, 13 Aug 2024 22:26:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7E45404D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723587973;
	bh=+Mwc3/f6DBefU7bmdLin5iFcx88lG0l44T7bnzRaJWM=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3B8pDUsYj4R6aHxD2coX5SRSGrupV2BGylFIxG3dzFUm9aiz8eTeg9f2vYYCTUKcf
	 khw3PIyX1K+y69HTBMCm4r2+D7pZzEH1J3VFNVHkB9bUr72zPMxpcfAF963DFtJuVe
	 +xGT1/PeSflSFEYUHtXxUFg4JBcq1IxiKAusZSOemSpyP+mOB4kyN2LWJP3DzId7RX
	 XJlCNfdgIMOmQw97NW7cNbSjQp3M1FaSuVXQlf/WdkGZuopaHJtXF0z7y1oAe5vJEg
	 AXGle8vhRDodgwvDcG6TnqupFspFYeW9P/LAuRjvExHFXe9Ne6eqm1d92a/zp6OzSJ
	 Tz42wLzBXtu3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7E45404D1;
	Tue, 13 Aug 2024 22:26:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B2A91BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 22:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61FA1402EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 22:26:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ASgnIhEyj9f2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 22:26:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B1D440135
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B1D440135
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B1D440135
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 22:26:09 +0000 (UTC)
X-CSE-ConnectionGUID: mpDQkp7dTFq26QD5huTJiQ==
X-CSE-MsgGUID: cDijPeg3QYa5FWoEcAXLbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32459402"
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="32459402"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 15:26:08 -0700
X-CSE-ConnectionGUID: tVl7Co+7Raqs7Dv5UzfQRw==
X-CSE-MsgGUID: YhwQl1U2Qi2LdxQWKIEOVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="62961260"
Received: from ehanks-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.222.164])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 15:26:07 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Daiwei Li <daiweili@google.com>
In-Reply-To: <20240813033508.781022-1-daiweili@google.com>
References: <87sev9wrkj.fsf@intel.com>
 <20240813033508.781022-1-daiweili@google.com>
Date: Tue, 13 Aug 2024 15:26:07 -0700
Message-ID: <871q2svz40.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723587970; x=1755123970;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KFzCLQzasMMzAHmW90HUBXRK0smSMiV9eWOMY+Q99uA=;
 b=PXIBAScF8qL6A7KLDGpLOxV1VwFKZRnMv79N7r6qQeldgRdCqn+3TFGM
 hiKLnnre0MiKOuviDmaHX/ZYdjnvsZBBGDtR7jH+zQJ+bu+7bcaZinJO2
 Vdi3EZ+8ZAgt6nVB2txu/vp17ZoSPxJ1z9hcmn+Dsn4nO29nCDqbdqfTM
 SsOhCQvD9TZO2eHgvAQyclkgb9bbnwO27GKMICN2TA8Ax2GOQ9NXhdT0Z
 KvlzTiUbAgXIro2uL43RtCQAdp46Up+5mUN1YzlfgbobpffJlFXawGe04
 A8AHTzGaBSocY358WnzI2XS3tRUvOsNc+s5QOtmLFQcNz9RjWqGv5MUmr
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PXIBAScF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Cc: Daiwei Li <daiweili@google.com>, sasha.neftin@intel.com,
 netdev@vger.kernel.org, richardcochran@gmail.com, kurt@linutronix.de,
 linux-kernel@vger.kernel.org, przemyslaw.kitszel@intel.com,
 edumazet@google.com, daiweili@gmail.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Daiwei Li <daiweili@google.com> writes:

> 82580 NICs have a hardware bug that makes it
> necessary to write into the TSICR (TimeSync Interrupt Cause) register
> to clear it:
> https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@intel.com/
>
> Add a conditional so only for 82580 we write into the TSICR register,
> so we don't risk losing events for other models.

Please add some information in the commit message about how to reproduce
the issue, as Paul suggested.

>
> This (partially) reverts commit ee14cc9ea19b ("igb: Fix missing time sync events").
>
> Fixes: ee14cc9ea19b ("igb: Fix missing time sync events")
> Closes: https://lore.kernel.org/intel-wired-lan/CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com/
> Tested-by: Daiwei Li <daiweili@google.com>
> Signed-off-by: Daiwei Li <daiweili@google.com>
> ---
>
> @Vinicius Gomes, this is my first time submitting a Linux kernel patch,
> so apologies if I missed any part of the procedure (e.g. this is
> currently on top of 6.7.12, the kernel I am running; should I be
> rebasing on inline?). Also, is there any way to annotate the patch
> to give you credit for the original change?

Your submission format looks fine. Just a couple details:
 - No need for setting in-reply-to (or something like it);
 
 - For this particular patch, you got lucky and it applies cleanly
 against current tip, but for future submissions, for intel-wired-lan
 and patches intended for the stable tree, please rebase against:

 https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/

For credits, you can add something like:

Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

>
>  drivers/net/ethernet/intel/igb/igb_main.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index ada42ba63549..1210ddc5d81e 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -6986,6 +6986,16 @@ static void igb_tsync_interrupt(struct igb_adapter *adapter)
>  	struct e1000_hw *hw = &adapter->hw;
>  	u32 tsicr = rd32(E1000_TSICR);
>  	struct ptp_clock_event event;
> +	const u32 mask = (TSINTR_SYS_WRAP | E1000_TSICR_TXTS |
> +			  TSINTR_TT0 | TSINTR_TT1 |
> +			  TSINTR_AUTT0 | TSINTR_AUTT1);
> +

Please move the declaration of 'mask' up, to follow the convention, the
"reverse christmas tree" rule. Or separate the attribution from the
declaration.

> +	if (hw->mac.type == e1000_82580) {
> +		/* 82580 has a hardware bug that requires a explicit

And as pointed by Paul, "*an* explicit".

> +		 * write to clear the TimeSync interrupt cause.
> +		 */
> +		wr32(E1000_TSICR, tsicr & mask);
> +	}
>  
>  	if (tsicr & TSINTR_SYS_WRAP) {
>  		event.type = PTP_CLOCK_PPS;
> -- 
> 2.46.0.76.ge559c4bf1a-goog
>

-- 
Vinicius

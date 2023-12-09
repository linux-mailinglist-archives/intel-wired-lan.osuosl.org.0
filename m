Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F6080B11A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 01:54:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B1B783E73;
	Sat,  9 Dec 2023 00:54:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B1B783E73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702083285;
	bh=YSMaY/MSMXhmKE9m5mETPs4C8xvFi/6j7GOVWN0wAEQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qWubcp2l9DFktBODLp1DWCn5GIwIbBO3oSPbYc62zpaGK2z/5OSGH9TUKOV4ANFn3
	 lGCQOkO6ljqiG5JTGcJ6qOq3Sn43UExGA0nohr/NY5qGIp8T18p1PvQJLOQVxP20ow
	 Vq3JqsJ2xL8SK4Xk6NeDJV3L59jQbOeB4oatzoc54oVyCRSKbd/80j2zZAJIA8a7Sd
	 yOZsL+LVzxfo9Aw6iZ7FL4lREqk70DQwZVEk2OjWlQL3+9IfXfuK/Z1OkBvoDdGQ89
	 gWFnsNzgbQvaH+8PICK4W21HiNv9FZlYQYsTU43MBld8xAlrC96VY6ncrYUlf8yWOV
	 G16ZamjDYbLdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agp4u9WwwxqB; Sat,  9 Dec 2023 00:54:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1163C83CFC;
	Sat,  9 Dec 2023 00:54:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1163C83CFC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 035B61BF99A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 00:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE21D42862
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 00:54:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE21D42862
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zbw6b-SpOkLc for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Dec 2023 00:54:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B67841E34
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 00:54:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B67841E34
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="425613708"
X-IronPort-AV: E=Sophos;i="6.04,262,1695711600"; d="scan'208";a="425613708"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 16:54:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="863063915"
X-IronPort-AV: E=Sophos;i="6.04,262,1695711600"; d="scan'208";a="863063915"
Received: from jcquinta-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.47.201])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 16:54:17 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Rodrigo Cataldo via B4 Relay
 <devnull+rodrigo.cadore.l-acoustics.com@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Aravindhan Gunasekaran
 <aravindhan.gunasekaran@intel.com>, Mallikarjuna Chilakala
 <mallikarjuna.chilakala@intel.com>
In-Reply-To: <20231208-igc-fix-hicredit-calc-v1-1-7e505fbe249d@l-acoustics.com>
References: <20231208-igc-fix-hicredit-calc-v1-1-7e505fbe249d@l-acoustics.com>
Date: Fri, 08 Dec 2023 16:54:17 -0800
Message-ID: <871qbwry9y.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702083277; x=1733619277;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8pxbXmVjtgxQ6jJTKi3HMK6M41nw+oEV1H8AuJRdMJw=;
 b=UcShthBQkSYmyxFMKME8hkVhtniykNEjZixiy5VGgUcKcZE9yHQV/Via
 ScE0iNCyKMT/dBuiZ4fuzrhaHh05M3LozvqYLIDlZQ5+lx6bwK4FfYQ2e
 X867aCEuc6SuGzQ7yikGnJXLgrnEVN2wOftKeYSUOaNgT8K79MJaN8WaB
 f+xI98qnWGqv9wUkY6kE19BzECX0RuXmhPqgvE0AfSl6ocmLlFq7vfnlU
 MxWFtam3pfh7fOALOFK7sbjLFn7qY60nlGRBIwAuvY97WA/+9K0S7cyhx
 xiw03sD7jgxcsKp0fttpmAuXVPWVStfGj1xEBLYzQDzNy5hAZycX+VHrO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UcShthBQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix hicredit calculation
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
Cc: netdev@vger.kernel.org, Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rodrigo Cataldo via B4 Relay
<devnull+rodrigo.cadore.l-acoustics.com@kernel.org> writes:

> From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
>
> According to the Intel Software Manual for I225, Section 7.5.2.7,
> hicredit should be multiplied by the constant link-rate value, 0x7736.
>
> Currently, the old constant link-rate value, 0x7735, from the boards
> supported on igb are being used, most likely due to a copy'n'paste, as
> the rest of the logic is the same for both drivers.
>
> Update hicredit accordingly.
>
> Fixes: 1ab011b0bf07 ("igc: Add support for CBS offloading")
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Signed-off-by: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> ---

Very good catch.

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Just for curiosity, my test machines are busy right now, what kind of
difference are you seeing?

> This is a simple fix for the credit calculation on igc devices
> (i225/i226) to match the Intel software manual.
>
> This is my first contribution to the Linux Kernel. Apologies for any
> mistakes and let me know if I improve anything.
> ---
>  drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index a9c08321aca9..22cefb1eeedf 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -227,7 +227,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>  			wr32(IGC_TQAVCC(i), tqavcc);
>  
>  			wr32(IGC_TQAVHC(i),
> -			     0x80000000 + ring->hicredit * 0x7735);
> +			     0x80000000 + ring->hicredit * 0x7736);
>  		} else {
>  			/* Disable any CBS for the queue */
>  			txqctl &= ~(IGC_TXQCTL_QAV_SEL_MASK);
>
> ---
> base-commit: 2078a341f5f609d55667c2dc6337f90d8f322b8f
> change-id: 20231206-igc-fix-hicredit-calc-028bf73c50a8
>
> Best regards,
> -- 
> Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
>

Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

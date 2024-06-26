Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F3E919AA4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 00:29:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0EA181199;
	Wed, 26 Jun 2024 22:29:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8kE_T_0RVZah; Wed, 26 Jun 2024 22:29:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F08D98115A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719440995;
	bh=3oVgXIZ/JmIzLVwSpd3wnVAwyyLAHOig2t1SiYm5eG0=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0KVKX9lLt4B5rcgcKT1MV8TLgKX4Ofsr11XjZ5vSjf5RqmiRLLdiYuSNSqzcIAnkW
	 AHgNAk9JwHNTMO02OUFZ3+bnv1s9XnQFs0PmY0fhrUL/zoB9tjGpBhZSyx9Z4mfeOA
	 4H8mDVqDiwZ3yYRmrZ0b83htbatYgMKrvQL86AZr/rS0pnLtFLwy7CrRuoSo3XDlrH
	 VoxuZKiFTuXv/LRLVXzrop/cvdogLGX6C6La3D0iMQpFNswwOjzHe2m7cZG4JDom/T
	 RrXOuoLeRbzj1uA+a72WzxfdBiiAuO9dqCu4rSamFgws6aTEXoN8oNTBS9mc8baikX
	 F2icIN8z+K0BA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F08D98115A;
	Wed, 26 Jun 2024 22:29:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 626A61BF20D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 22:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A1C540168
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 22:29:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hS4qf-4-c8xD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 22:29:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 234AA4013C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 234AA4013C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 234AA4013C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 22:29:50 +0000 (UTC)
X-CSE-ConnectionGUID: YZNoZnZqSLmX2nAjXhnp5g==
X-CSE-MsgGUID: 6zQ5NrlQQwSZLRpjkgpRSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16691754"
X-IronPort-AV: E=Sophos;i="6.08,268,1712646000"; d="scan'208";a="16691754"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 15:29:47 -0700
X-CSE-ConnectionGUID: OWvueI1bTI+q4M0XRZrvMw==
X-CSE-MsgGUID: NBCe1hEXSsqfulSIZIrJ7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,268,1712646000"; d="scan'208";a="49319741"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.222.58])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 15:29:48 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240625082656.2702440-1-faizal.abdul.rahim@linux.intel.com>
References: <20240625082656.2702440-1-faizal.abdul.rahim@linux.intel.com>
Date: Wed, 26 Jun 2024 15:29:47 -0700
Message-ID: <87ed8j72xw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719440990; x=1750976990;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HKPx6wQS4nFnsGS0OoSu2HweUTQzD8xHGbwcpQf4KI0=;
 b=iFbvlwJr1rDJ1f3RpgM3ZojULzqXdNm2QNs1dnp9o8xQJIJ+caIzS+yN
 YYGr1oD2uRYJ52M/O06FMBqj4JA0vnGieUWzxImPUFKINla5raY9apKSw
 lhrDWuR+2gZQ+8SGkm0SIITFlFLn8BqwYPjx7BKHtOoOMRWpMMjpLzrdl
 CUrcF7XctbtzoLJLQXKR1nJ/IBxM4WDERbHqkGuL1aVGKjg5CGra49neM
 W39dEtz/ldSzbgWC6I3L4ci8BmCQXV8TEVRBlt6Sc1sN3eV522Uz3Rb9B
 In0z0zOTEaK2F8fiZD8LQIGAu5fdSErgOjJkv5m9Wd1CPEM4wkn7ZfrOt
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iFbvlwJr
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igc: Fix double reset adapter
 triggered from a single taprio cmd
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:

> Following the implementation of "igc: Add TransmissionOverrun counter"
> patch, when a taprio command is triggered by user, igc processes two
> commands: TAPRIO_CMD_REPLACE followed by TAPRIO_CMD_STATS. However, both
> commands unconditionally pass through igc_tsn_offload_apply() which
> evaluates and triggers reset adapter. The double reset causes issues in
> the calculation of adapter->qbv_count in igc.
>
> TAPRIO_CMD_REPLACE command is expected to reset the adapter since it
> activates qbv. It's unexpected for TAPRIO_CMD_STATS to do the same
> because it doesn't configure any driver-specific TSN settings. So, the
> evaluation in igc_tsn_offload_apply() isn't needed for TAPRIO_CMD_STATS.
>
> To address this, commands parsing are relocated to
> igc_tsn_enable_qbv_scheduling(). Commands that don't require an adapter
> reset will exit after processing, thus avoiding igc_tsn_offload_apply().
>
> Fixes: d3750076d464 ("igc: Add TransmissionOverrun counter")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 33 ++++++++++++-----------
>  1 file changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 87b655b839c1..33069880c86c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6310,21 +6310,6 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
>  	size_t n;
>  	int i;
>
> -	switch (qopt->cmd) {
> -	case TAPRIO_CMD_REPLACE:
> -		break;
> -	case TAPRIO_CMD_DESTROY:
> -		return igc_tsn_clear_schedule(adapter);
> -	case TAPRIO_CMD_STATS:
> -		igc_taprio_stats(adapter->netdev, &qopt->stats);
> -		return 0;
> -	case TAPRIO_CMD_QUEUE_STATS:
> -		igc_taprio_queue_stats(adapter->netdev, &qopt->queue_stats);
> -		return 0;
> -	default:
> -		return -EOPNOTSUPP;
> -	}
> -
>  	if (qopt->base_time < 0)
>  		return -ERANGE;
>
> @@ -6433,7 +6418,23 @@ static int igc_tsn_enable_qbv_scheduling(struct igc_adapter *adapter,
>  	if (hw->mac.type != igc_i225)
>  		return -EOPNOTSUPP;
>
> -	err = igc_save_qbv_schedule(adapter, qopt);
> +	switch (qopt->cmd) {
> +	case TAPRIO_CMD_REPLACE:
> +		err = igc_save_qbv_schedule(adapter, qopt);
> +		break;
> +	case TAPRIO_CMD_DESTROY:
> +		err = igc_tsn_clear_schedule(adapter);
> +		break;
> +	case TAPRIO_CMD_STATS:
> +		igc_taprio_stats(adapter->netdev, &qopt->stats);
> +		return 0;
> +	case TAPRIO_CMD_QUEUE_STATS:
> +		igc_taprio_queue_stats(adapter->netdev, &qopt->queue_stats);
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +

Yeah, moving the command parsing to be done earlier sounds like the
right fix:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


>  	if (err)
>  		return err;
>
> --
> 2.25.1
>

-- 
Vinicius

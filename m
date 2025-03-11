Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D1DA5B903
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 07:07:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 485F180ED6;
	Tue, 11 Mar 2025 06:07:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oKxouavpLTAD; Tue, 11 Mar 2025 06:07:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D37380D74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741673267;
	bh=xGGnNkfzXkW34FrALcCPU7DErsLzsmpOLWxeWMxMzC8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dgOEnfz384wzTC8uWNVkvPXMMKluDdaQMVUpjOC6lAgh/x6c2CjHuQx114Rp+hDO7
	 jB14h8B/Zk/f6we94DqFc8NyTJcWy9xtrIXYghLx2fJRI7OWaMaqsZI889/e52Q6pT
	 AleGa0imkHzMnQDzYh2JCGbdtlbQHKUEU2T/thVNN1EWqavQ1IwALsHPPDN9sfdTwB
	 yz5A8RhAB4GsQZU+NeZhEwL3UEsOqcRg5yksOd0eATQ9XeuWATXIC00GcD4gu69oVF
	 JxdkAiPD+P5C1V3yAP4lk0zteh0LFE+Yjnv6bkukVZDzT4kzt0Ts2pAY2NuUf/B+lc
	 ErnrcfnZX9AGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D37380D74;
	Tue, 11 Mar 2025 06:07:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 64CEF1C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 06:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3503E60AB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 06:07:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wvKVIwPpEhyc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 06:07:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D51AC605CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D51AC605CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D51AC605CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 06:07:43 +0000 (UTC)
X-CSE-ConnectionGUID: 3GcjKiMATiifBhPlZHHIew==
X-CSE-MsgGUID: 7BS93VL8Rui479kEgJcMKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42911533"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42911533"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 23:07:42 -0700
X-CSE-ConnectionGUID: EwCur8gjQcyW+W0/DVtgRg==
X-CSE-MsgGUID: nkwfcOvITySxVkOXKzp2aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="120919332"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 23:07:37 -0700
Date: Tue, 11 Mar 2025 07:03:45 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Ruud Bos <kernel.hbk@gmail.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com,
 Raju Lakkaraju <Raju.Lakkaraju@microchip.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
Message-ID: <Z8/SQRskrrvSofW7@mev-dev.igk.intel.com>
References: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
 <20250310-jk-net-fixes-supported-extts-flags-v1-1-854ffb5f3a96@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310-jk-net-fixes-supported-extts-flags-v1-1-854ffb5f3a96@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741673264; x=1773209264;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yRWn1iovWNrsqhtod6iHzgPsTsCfgH/d+xaja/frc2k=;
 b=kMY85RAvcKhgMNa2SyKdzuWY2QJemsy066Xzx3m4wR9ORLsNC4Ivx8ML
 qd+vsKSo/WuWH4C9EI4hjZc7ae+T+Paor3+oYchjNrqENbrEbj7oJWOBX
 Tj6KUnrvE1q4CJgDq6hlpn5t6N/2RYngX8bxWg9v80fEz41Lss75yuEI+
 UJv6c8nCFa/YKv+WRzJnVJJo8KMXfxxply79UpTwxHyV7xAa+bBWGg7LH
 gH8p5dKyCv+x/LnbfArgHphqVZzlZQwpbaiicOADeKAw98EW3AJt77mgj
 Bm3WC9A/FXA0Z6gP1RG34IJf0JyGdvF9IavOyRq2ZLdDSt84mLKqN4nA3
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kMY85RAv
Subject: Re: [Intel-wired-lan] [PATCH net 1/5] igb: reject invalid external
 timestamp requests for 82580-based HW
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 10, 2025 at 03:16:36PM -0700, Jacob Keller wrote:
> The igb_ptp_feature_enable_82580 function correctly checks that unknown
> flags are not passed to the function. However, it does not actually check
> PTP_RISING_EDGE or PTP_FALLING_EDGE when configuring the external timestamp
> function.
> 
> The data sheet for the 82580 product says:
> 
>   Upon a change in the input level of one of the SDP pins that was
>   configured to detect Time stamp events using the TSSDP register, a time
>   stamp of the system time is captured into one of the two auxiliary time
>   stamp registers (AUXSTMPL/H0 or AUXSTMPL/H1).
> 
>   For example to define timestamping of events in the AUXSTMPL0 and
>   AUXSTMPH0 registers, Software should:
> 
>   1. Set the TSSDP.AUX0_SDP_SEL field to select the SDP pin that detects
>      the level change and set the TSSDP.AUX0_TS_SDP_EN bit to 1.
> 
>   2. Set the TSAUXC.EN_TS0 bit to 1 to enable timestamping
> 
> The same paragraph is in the i350 and i354 data sheets.
> 
> The wording implies that the time stamps are captured at any level change.
> There does not appear to be any way to only timestamp one edge of the
> signal.
> 
> Reject requests which do not set both PTP_RISING_EDGE and PTP_FALLING_EDGE
> when operating under PTP_STRICT_FLAGS mode via PTP_EXTTS_REQUEST2.
> 
> Fixes: 38970eac41db ("igb: support EXTTS on 82580/i354/i350")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index f9457055612004c10f74379122063e8136fe7d76..b89ef4538a18d7ca11325ddc15944a878f4d807e 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -509,6 +509,11 @@ static int igb_ptp_feature_enable_82580(struct ptp_clock_info *ptp,
>  					PTP_STRICT_FLAGS))
>  			return -EOPNOTSUPP;
>  
> +		/* Both the rising and falling edge are timstamped */
> +		if (rq->extts.flags & PTP_STRICT_FLAGS &&
> +		    (rq->extts.flags & PTP_EXTTS_EDGES) != PTP_EXTTS_EDGES)
> +			return -EOPNOTSUPP;
> +
>  		if (on) {
>  			pin = ptp_find_pin(igb->ptp_clock, PTP_PF_EXTTS,
>  					   rq->extts.index);

Thanks for fixing
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

In igb_ptp_feature_enable_i210() there is the same check for both edges
but also PTP_ENABLE_FEATURE is tested. There is no need for it here, or
it is redundant even in i210?

> 
> -- 
> 2.48.1.397.gec9d649cc640

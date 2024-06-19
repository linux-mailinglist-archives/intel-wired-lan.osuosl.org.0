Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D81D90F44F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2024 18:40:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDAEA413E4;
	Wed, 19 Jun 2024 16:40:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JNgWHB1G1EL4; Wed, 19 Jun 2024 16:40:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0385C41463
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718815240;
	bh=st2poj8DxrLJx/WMOD1t/V9GzZyqgAhpZjBxLAT5XJM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nfjq0q0Y5dJ9NWCA+pSCokqa2+aTSBiIJgPo8aPZx0eHQpqbgTso4De0myU3gkwxM
	 q8FfeVqXTC2f6Wm6eAO1ANZliAV2FKsFXWbkGSnoWWsBc718gSMxxk1Nns4/Lq8ACt
	 gJppQPzFZI+HsnxS2Ff5518MkGVuk/xnwppEbmYLQDn4RAahX8WWk4TU6yTWAd77xf
	 P+VRyyzR0MkmDhaUps1VwUFp0UjZwqGYLMktcNWzE6YHKKJWBgN0fGTcPQgbw8zQTX
	 B6FiFi7VyRTt/4bVFLyDEKvReGAiL2CLdSXhrfNte1XIiEChjRHEJyJtOsRytBh+5g
	 80DYRv2jDPr7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0385C41463;
	Wed, 19 Jun 2024 16:40:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 544FF1BF370
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:40:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DCC3413CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NiiEHHuCP8el for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2024 16:40:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D03B413C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D03B413C7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D03B413C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 16:40:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AA39E61E6F;
 Wed, 19 Jun 2024 16:40:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12B75C2BBFC;
 Wed, 19 Jun 2024 16:40:32 +0000 (UTC)
Date: Wed, 19 Jun 2024 17:40:30 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240619164030.GJ690967@kernel.org>
References: <20240618104310.1429515-1-karol.kolacinski@intel.com>
 <20240618104310.1429515-3-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618104310.1429515-3-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718815234;
 bh=WiLlLBvmqm2nG+tSOKaMxsR1LfIbZPqnHSXTtDsVPdY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R+lVsXx2w8ziK9fO9ZTjiSESUTh0JRsezGDN+Ij3X248Z9GcnF6zFBBJZAjtacIjY
 u1ObTWLZ6FIA3cKEVRJGmQWt9S/imwNy7lYfUk177sVOxucMC/TPTU5K1DHUnks3cY
 jHADDm4d7Z6dDC9m0/dwIVEeJ18hGky7OfIx7bU9Zmn3hnkeO4QhIcXZUdKyghMorp
 YRF6XmEKTxreQyqTuvDCM5Bqn/vUxWayGujlxKkcbFQyF3SCuekS7a2odSJbazq6gm
 wZr5rrWgpwZvGewcuhNTG/f5AuER5/Oba5Y7d/lpRSZtQOYAHaT5pLGhNQBZVU2qP/
 X4M/J7aFV3BBA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=R+lVsXx2
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: Don't process extts
 if PTP is disabled
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 12:41:37PM +0200, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_extts_event() function can race with ice_ptp_release() and
> result in a NULL pointer dereference which leads to a kernel panic.
> 
> Panic occurs because the ice_ptp_extts_event() function calls
> ptp_clock_event() with a NULL pointer. The ice driver has already
> released the PTP clock by the time the interrupt for the next external
> timestamp event occurs.
> 
> To fix this, modify the ice_ptp_extts_event() function to check the
> PTP state and bail early if PTP is not ready. To ensure that the IRQ
> sees the state change, call synchronize_irq() before removing the PTP
> clock.

Hi Karol and Jacob,

After pf->ptp.state is set in ptp_clock_event(),
ice_ptp_disable_all_extts() is called which in turn calls
synchronize_irq(). Which I assume is what the last sentence above refers
to. But the way it is worded it sounds like a call to synchronize_irq() is
being added by this patch, which is not the case.

I suppose it is not a big deal, but this did confuse me.
So perhaps the wording could be enhanced?

> Another potential fix would be to ensure that all the GPIO configuration
> gets disabled during release of the driver. This is currently not
> trivial as each device family has its own set of configuration which is
> not shared across all devices. In addition, only some of the device
> families use the pin configuration interface. For now, relying on the
> state flag is the simpler solution.
> 
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 30f1f910e6d9..b952cad42f92 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1559,6 +1559,10 @@ void ice_ptp_extts_event(struct ice_pf *pf)
>  	u8 chan, tmr_idx;
>  	u32 hi, lo;
>  
> +	/* Don't process timestamp events if PTP is not ready */
> +	if (pf->ptp.state != ICE_PTP_READY)
> +		return;
> +
>  	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
>  	/* Event time is captured by one of the two matched registers
>  	 *      GLTSYN_EVNT_L: 32 LSB of sampled time event
> @@ -1573,10 +1577,8 @@ void ice_ptp_extts_event(struct ice_pf *pf)
>  			event.timestamp = (((u64)hi) << 32) | lo;
>  			event.type = PTP_CLOCK_EXTTS;
>  			event.index = chan;
> -
> -			/* Fire event */
> -			ptp_clock_event(pf->ptp.clock, &event);
>  			pf->ptp.ext_ts_irq &= ~(1 << chan);
> +			ptp_clock_event(pf->ptp.clock, &event);
>  		}
>  	}
>  }

I'm also confused (often, TBH!) as to how the last hunk of this
patch relates to the problem at hand.

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SK7DBCn6AWrjmwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 17:47:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8E451181D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 17:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2469F41773;
	Mon, 11 May 2026 15:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I_z27eVkkjG9; Mon, 11 May 2026 15:47:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9312441774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778514470;
	bh=D7+qEgtTQ0iuAj3dEc61XncdFBlw8sX6JHLFHJH/1Po=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ci1t9bvdi6ajl7Q/1qnR5F3A6HsD7qygV4sBUThY3goXiVHSk1g/ThmNpVkFLd5Wt
	 bPnEsuTVhY/QwxU8/7m8Ze+b6CYSHaJfmGReJtoUtZPeHpmE9958904OkBYmffdeVu
	 4Qbh4rvS6J8NqnNwpGtWhlj/ynj4XjS3/UZnVxavOqFCPpTMqFuEZnWfuMq5S3tfnF
	 YoTH2oQ1vyD8bAxM+X5SgzUqVOjyckQ00jRKFTVBGlfIYTbK35kqEM7CQzdiVLxtIr
	 d+glg93qlNtCb/VWcdNvTJUoPgdG35RbGie89zOH1JkQp79aTcX+tIAbIyE4ot6Pln
	 D3J3JnTC5qx4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9312441774;
	Mon, 11 May 2026 15:47:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AEC07223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0C1B608CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:47:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uNXIqNA9zMzt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 15:47:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 07C6B608CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07C6B608CA
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07C6B608CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:47:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 82C70600CB;
 Mon, 11 May 2026 15:47:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EF42C2BCB0;
 Mon, 11 May 2026 15:47:46 +0000 (UTC)
Date: Mon, 11 May 2026 16:47:43 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260511154743.GD27589@horms.kernel.org>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
 <20260508031226.3601800-8-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260508031226.3601800-8-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778514467;
 bh=wg3sj4YnE54AHzo71NUx2gXbPJJaa+jjk+3YhaTtn2k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BvNpoFXI3fi7jwGkY+pWzGB1wYn05cTBMtf2Kpj7RTyHJq6h1pPue8F7RwO173Ngr
 6m+0uZ3W3Jhh6O9cOYnEzxy16U8y0930otjA13SJtsp2NtE0ypnPQG/FoQn8jWsPtR
 KpaMT5d1UWpJbbz86jxDsUPw+jiEmn/icj+xqoNKm1LVpvBr7lVZ3gP0aYQr13Qxjo
 XiY8SaGpgfLwCDroE0/qJJWHdmPl4SxZYcRJK5APgHS7fNNJbf2+HAzi+s4aFRUcyU
 GQTiCzqc48IPD0rhu89keicVmyV6tExe2QBPCdpAAeHvs30A98+RE1gP4qya7zfhnr
 99uBaZ7+MwEbw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=BvNpoFXI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/8] ixgbe: limit ITR
 decrease in latency mode to prevent ACK overdrive
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
X-Rspamd-Queue-Id: 8D8E451181D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:12:25AM +0200, Aleksandr Loktionov wrote:
> From: Alexander Duyck <alexander.h.duyck@intel.com>
> 
> When operating in latency mode and the computed ITR is lower than the
> current setting, the algorithm can reduce the interrupt rate too
> aggressively in a single step.  For a TCP workload this means the ACK
> stream (a latency-sensitive, low-packet-rate workload) can drive the
> moderation down to very high interrupt rates, starving CPU time from
> the sender side.
> 
> After the speed-based ITR calculation is complete, check whether the
> result is in latency mode and would decrease below the current setting.
> If so, limit the decrease to at most IXGBE_ITR_ADAPTIVE_MIN_INC (2 us)
> per update.  This ensures the number of interrupts grows by no more
> than 2x per adjustment step for latency-class workloads, dialling in
> smoothly rather than overshooting.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index aea76b3..ba7b013 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2888,6 +2888,17 @@ static void ixgbe_update_itr(struct ixgbe_q_vector *q_vector,
>  		break;
>  	}
>  
> +	/* In the case of a latency specific workload only allow us to
> +	 * reduce the ITR by at most 2us. By doing this we should dial
> +	 * in so that our number of interrupts is no more than 2x the number
> +	 * of packets for the least busy workload. So for example in the case
> +	 * of a TCP workload the ACK packets being received would set the
> +	 * interrupt rate as they are a latency specific workload.
> +	 */
> +	if ((itr & IXGBE_ITR_ADAPTIVE_LATENCY) && itr < ring_container->itr)
> +		itr = max_t(unsigned int, itr,
> +			    ring_container->itr - IXGBE_ITR_ADAPTIVE_MIN_INC);

nit: I expect this could be min(). And if it could, it should.

> +
>  clear_counts:
>  	/* write back value */
>  	ring_container->itr = itr;
> -- 
> 2.52.0
> 

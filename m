Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s9wVG35gTmpNLgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 16:36:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC10727759
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 16:36:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Mfux5lnk;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4309E812FA;
	Wed,  8 Jul 2026 14:36:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qHEM748Gb0pk; Wed,  8 Jul 2026 14:36:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36FDF81326
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783521403;
	bh=+sg0cd/dOtDSeooJg4oAtROLzWI4irmZPtRfZt3Xg10=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mfux5lnk43a29O+6TP1XAKVHJUpsX+zFArSRfjL+cgdsPVghwzZe9ZXcqVcUUgAr2
	 9z2jRGwoO5airvHb/9x0y+Iv3GvOqlssSEdNu42RRRQw7/0rAM7RNhN+wVp56eXbMw
	 9NdYNH+AvVtUz5+p5HJl+P54S6+EUUX7tlmO+8xT3c4IWJZDLl00zXijZ+bhKw3C5H
	 VSgafTPwTT67poIkSeHMXvtSIaXi6onC67YAI3lxvdcDWMIuq6yOpJNfQojqQb6WHk
	 8C2nNUP0c7KDppC6RbcaqJ+ShaVozYFFpkRSZk7Qji9xuHvCVKUPgfktQkbDxn988e
	 YxFSCNtNPZULg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36FDF81326;
	Wed,  8 Jul 2026 14:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 45F3E315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BB4E40084
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:36:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dSKOEPjYq8Ek for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 14:36:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 131AE4007A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 131AE4007A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 131AE4007A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:36:39 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 975C6405A1;
 Wed,  8 Jul 2026 14:36:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E16F1F00A3A;
 Wed,  8 Jul 2026 14:36:36 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: mheib@redhat.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, corbet@lwn.net,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch
Date: Wed,  8 Jul 2026 15:36:01 +0100
Message-ID: <20260708143601.1491656-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701093830.948756-1-mheib@redhat.com>
References: <20260701093830.948756-1-mheib@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783521399;
 bh=+sg0cd/dOtDSeooJg4oAtROLzWI4irmZPtRfZt3Xg10=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YBNNycRn/HVArimdqvQVG4cesmyWfHBX8eimHeL+dpAPEbq1wd0Etn0ggTXixdepX
 LakOxAH1a/MpcAynAKGAKGL7wofGaH5cyk/+RQ1BW7YRYZIIOCpRaE5rpzZBozdD9J
 4WYfeWT3JIY00jASrSQLGOuk7ce3jcyYi++hT3tuHpOeQgffT8mixCleLJWzqtxK4x
 iQD33PxJtLJRCBcigs/Fvd+FonAACgGKhQgSvHAswQrz7Bpa3g02MQb/jNTqkQ1Izi
 6DGRyEZqZzW87Q6t2A2XzB0ugroPFEMl/fLT7n1JddWKhSrYDLtohNbJKl19h8AXQj
 Qz0ELMY7WW3eg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=YBNNycRn
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] i40e: move ATR sample
 rate from ring to PF level
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mheib@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:corbet@lwn.net,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDC10727759

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
i40e: move ATR sample rate from ring to PF level

This commit moves the ATR sample rate configuration from the per-ring level
to the PF level. It initializes the sample rate globally during software init
and updates the fast path to reference the PF structure.

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index a04683004a567..4d4d4b07a0f3a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
[ ... ]
> @@ -3454,12 +3454,7 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
>  		ring->xsk_pool = i40e_xsk_pool(ring);
>  
>  	/* some ATR related tx ring init */
> -	if (test_bit(I40E_FLAG_FD_ATR_ENA, vsi->back->flags)) {
> -		ring->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
> -		ring->atr_count = 0;
> -	} else {
> -		ring->atr_sample_rate = 0;
> -	}
> +	ring->atr_count = 0;

[Severity: High]
Does removing this per-ring initialization remove the protection against
dynamic ethtool flag toggles?

Previously, if the ring was configured while Flow Director ATR was disabled,
the ring's sample rate was cached to 0 in i40e_configure_tx_ring(). This
prevented descriptor injection even if the PF flag was later toggled on
without a ring reset.

[ ... ]
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 894f2d06d39d0..b36e0fc9b31d2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
[ ... ]
> @@ -2879,7 +2879,7 @@ static void i40e_atr(struct i40e_ring *tx_ring, struct sk_buff *skb,
>  		return;
>  
>  	/* if sampling is disabled do nothing */
> -	if (!tx_ring->atr_sample_rate)
> +	if (!pf->atr_sample_rate)
>  		return;

[Severity: High]
Can this global check lead to a hardware Malicious Driver Detection (MDD)
event if ethtool flags are modified dynamically?

If an administrator performs the following sequence:

1. Disables flow-director-atr via ethtool.
2. Disables ntuple (which resets the ring and sets tx_ctx.fd_ena = 0).
3. Re-enables flow-director-atr.

The final step does not trigger a ring reset, so fd_ena remains 0 in the
hardware queue context.

However, I40E_FLAG_FD_ATR_ENA is now true, and pf->atr_sample_rate is
globally set to a non-zero value.

Will i40e_atr() now proceed and inject FDIR descriptors into a TX queue
that is not configured for FDIR?

If so, does this cause the hardware to trigger an MDD event and hang the
TX queue?

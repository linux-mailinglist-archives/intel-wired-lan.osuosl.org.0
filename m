Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CA4WGn8qjmlsAQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 20:31:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A751130B5C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 20:31:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C11941160;
	Thu, 12 Feb 2026 19:31:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YREwRNHHMfNT; Thu, 12 Feb 2026 19:31:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 666F241164
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770924668;
	bh=W9lSqXvbQ7SBvsiQ8zbGfXJLzNXZuBydZTTDeeGX5V4=;
	h=In-Reply-To:References:From:To:Cc:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6VuIQTwGrTAZN6tlp19L9BxYh5Q48d9emdNkHpFiJNBhwE14B02aradM/0ZTBKhOj
	 ngQnUSNH8sTxOPQl6Q3M83/ZuWyW4J8/hby71EwihMZjrKlLUmZT75IJnOTQ68Xe55
	 xSYDFjjynFuWDj0gac7jY8Fxo04YRsq/9DcZway4gvW6Xvfps/1lE2bbVkg/c5heJS
	 oiZPYKuBQp1/v/PfdG/1nRlP0bwcZ67jFNZp4DSaR8FEaIxcPsKil7Qyp3gGmyuVAA
	 9C3hP2iOHyCPYgTt/sbZl4z9DfrrpgbUIAo2fUcyCFfyWBbn3AkBHNzKcqzX4LgYX5
	 iwEfTQjw6BGeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 666F241164;
	Thu, 12 Feb 2026 19:31:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 045A5EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 19:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8C8360762
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 19:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0CPnPF2mHhV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 19:31:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=bot+bpf-ci@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D7E556071E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7E556071E
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7E556071E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 19:31:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0A7A0433FB;
 Thu, 12 Feb 2026 19:31:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32734C4CEF7;
 Thu, 12 Feb 2026 19:31:02 +0000 (UTC)
Content-Type: multipart/mixed; boundary="===============3404291497187834089=="
MIME-Version: 1.0
Message-Id: <105606c43804c23ec856f4ec17a08286f182061e547f954359e2e0325d0d3a6f@mail.kernel.org>
In-Reply-To: <20260212183328.1883148-5-larysa.zaremba@intel.com>
References: <20260212183328.1883148-5-larysa.zaremba@intel.com>
From: bot+bpf-ci@kernel.org
To: larysa.zaremba@intel.com,bpf@vger.kernel.org
Cc: larysa.zaremba@intel.com, claudiu.manoil@nxp.com, vladimir.oltean@nxp.com,
 wei.fang@nxp.com, xiaoning.wang@nxp.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 sdf@fomichev.me, andrii@kernel.org, martin.lau@linux.dev, eddyz87@gmail.com,
 song@kernel.org, yonghong.song@linux.dev, kpsingh@kernel.org,
 haoluo@google.com, jolsa@kernel.org, horms@kernel.org, shuah@kernel.org,
 aleksander.lobakin@intel.com, maciej.fijalkowski@intel.com,
 bastien.curutchet@bootlin.com, tushar.vyavahare@intel.com,
 kernelxing@tencent.com, rbm@suse.com, echaudro@redhat.com, lorenzo@kernel.org,
 toke@redhat.com, imx@lists.linux.dev, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, aleksandr.loktionov@intel.com,
 dtatulea@nvidia.com, ast@kernel.org, andrii@kernel.org, daniel@iogearbox.net,
 martin
 .lau@kernel.org, eddyz87@gmail.com, yonghong.song@linux.dev, clm@meta.com,
 ihor.solodrai@linux.dev
Date: Thu, 12 Feb 2026 19:31:02 +0000 (UTC)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770924662;
 bh=CfyMoN19AB34Wz5ReWi6alLjCIlR82xPRObwiwQjs/0=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=uAwqP0ZNhEW5Vagfetvw+PvGC8DYBv2pnSNHyd1ovIS88pn9ifnTiDPBYMEgDtfBi
 156V17wRWRf5GaA0M4JDS5ELgZFPsToJluBFN1XLAGhKW8KgCeXz5gDB6+vnQ/qdzt
 ErH1JSBmG1tJomT9882swyU1xVor44SJj2wBmtUfim4nUsRCLmHH2crP79+8i/KLrJ
 RL96EddJ5mcRRkjR+VGWrMdsl2IvJvHtDwUCqRRaZyXq0yzheA5CtI69vZAFbKLgJb
 Kx+0YVrKWQsw/ZPaeChxh75VEwtzllV+os7CJyqECsn8HZNcyzJPsZEB+oOKEDJZrK
 ZKgv9CAsQkFjA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=uAwqP0ZN
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 3/9] ice: fix rxq info
 registering in mbuf packets
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	CTYPE_MIXED_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FREEMAIL_CC(0.00)[intel.com,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com,meta.com];
	TAGGED_FROM(0.00)[bpf-ci];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,mail.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:dtatulea@nvidia.com,m:martin .lau@kernel.org,m:clm@meta.com,m:ihor.solodrai@linux.dev,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[53];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8A751130B5C
X-Rspamd-Action: no action

--===============3404291497187834089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index eadb1e3d12b3..511d803cf0a4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -663,23 +663,12 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>  	int err;
>
>  	if (ring->vsi->type == ICE_VSI_PF || ring->vsi->type == ICE_VSI_SF) {

[ ... ]

> @@ -702,14 +691,13 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>  			if (err)
>  				return err;
>
> -			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
> -				err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> -							 ring->q_index,
> -							 ring->q_vector->napi.napi_id,
> -							 ring->rx_buf_len);
> -				if (err)
> -					goto err_destroy_fq;
> -			}
> +			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> +						 ring->q_index,
> +						 ring->q_vector->napi.napi_id,
> +						 ring->rx_buf_len);
> +			if (err)
> +				goto err_destroy_fq;

The registration condition check was removed, so __xdp_rxq_info_reg() is
now called unconditionally. This works correctly when cleanup properly
unregisters the xdp_rxq, but there appears to be a gap for ICE_VSI_SF
in non-XSK mode.

Looking at ice_clean_rx_ring() in ice_txrx.c:

    if (rx_ring->vsi->type == ICE_VSI_PF &&
        xdp_rxq_info_is_reg(&rx_ring->xdp_rxq)) {
        xdp_rxq_info_detach_mem_model(&rx_ring->xdp_rxq);
        xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
    }

This only unregisters for ICE_VSI_PF, not ICE_VSI_SF. With the old code,
the conditional registration skipped re-registration for ICE_VSI_SF. With
this change, for ICE_VSI_SF in non-XSK mode during reconfiguration:

1. ice_clean_rx_ring() - doesn't unregister (only checks ICE_VSI_PF)
2. ice_vsi_cfg_rxq() - unconditionally calls __xdp_rxq_info_reg()
3. __xdp_rxq_info_reg() sees REG_STATE_REGISTERED and triggers:

    WARN(1, "Missing unregister, handled but fix driver");

While this is handled gracefully by the XDP core (it unregisters internally
before re-registering), will this cause spurious WARN splats for subfunction
devices on every reconfiguration?

Should the ICE_VSI_PF check in ice_clean_rx_ring() be updated to also
include ICE_VSI_SF to match the registration path?


---
AI reviewed your patch. Please fix the bug or email reply why it's not a bug.
See: https://github.com/kernel-patches/vmtest/blob/master/ci/claude/README.md

CI run summary: https://github.com/kernel-patches/bpf/actions/runs/21960574055

AI-authorship-score: low
AI-authorship-explanation: The commit shows domain-specific knowledge of ice driver internals and XDP subsystem, with targeted changes that suggest human authorship by an Intel driver developer.
issues-found: 1
issue-severity-score: low
issue-severity-explanation: The issue causes WARN splats for ICE_VSI_SF devices during reconfiguration, but is handled gracefully by XDP core without functional impact.

--===============3404291497187834089==--

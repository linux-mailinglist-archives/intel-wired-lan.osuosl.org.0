Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JsPKh/Dz2lH0QYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:39:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3E53949B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:39:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BDB081D35;
	Fri,  3 Apr 2026 13:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id obTMuEJrr1mB; Fri,  3 Apr 2026 13:39:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B68681D3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775223580;
	bh=n5mPudUwWn2s69W7sQe50CJ8BzR4TkSYom6X4X4FT2Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pgbfQOSbqbESJoOtUOmbSrGCOgz9CeYgNgBIftwEH2q6nlXxn2ZVq/1SBx1v/sa//
	 bO5KEqSa7K2Ih1gZWZOVgIjYyqcJfLXrkh8sm8OpQzDBSlNMGiLzXTZ3jRDzgZSay0
	 xTq79knR7oSeOicvT+6cmCYXZZPEoP5XOC3MSYY1zy53fcIMIfGnoTqe74j+6GYJUw
	 IhGNyRKpQFTpVbQDP/Oa2F1ckgdwWH9xbLGE3KWtMvZYWa8UziyfRJrY1IGuzpZiPu
	 K75gV6e5sMxHuYrC05AtCRKHvddyTG6agn8I/I4WYh8XWygkZSipAN+NI4ugy8eOfy
	 jUUvN6nk8fHig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B68681D3D;
	Fri,  3 Apr 2026 13:39:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 71BCD1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6350A402EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:39:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f7FhXwgJMKNG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 13:39:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 425B54003D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 425B54003D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 425B54003D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:39:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C96B640E25;
 Fri,  3 Apr 2026 13:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CA1EC19421;
 Fri,  3 Apr 2026 13:39:35 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com
Date: Fri,  3 Apr 2026 14:39:30 +0100
Message-ID: <20260403133930.129514-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260327073046.134085-6-aleksandr.loktionov@intel.com>
References: <20260327073046.134085-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775223576;
 bh=gzgo4J0pUZ2NR/fbaMfQmlWY0aPaw+y93UYrHkmJXi8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IWEg59c2mZ0IOrx/OS73hj1Cgai8N7XixauJHLw7J0797WcGJn/9VOjVAL95G6Ocs
 Sz8SCS0fZ+T5oDq1nqGHnD03PSvoUAzQB1Xnyr6iLAOO3OsfC73dp4kfI7Wq2diKON
 3pGE7S34DW8GoDlRHHvYWfRdIPLM80OLICNK+frKoYm/KqROHBFFTsPavF30tC8x+n
 Dv1TXeyQoZ4XW5rBPreO1h/3cwjLjp0OgzRJvNFSlLTbsiaw7yCFkoadsTBpRokFsa
 XVFZpz1jNTVdC8rNgM36dFhlAda/UvU65lwS3G9NPYokXOYgeRAniWGsmLsCZAhoCl
 +Ed6C0wzs/Yog==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IWEg59c2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: call ixgbe_setup_fc()
 before fc_enable() after NVM update
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,linux.dev:url];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2E3E53949B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ixgbe: call ixgbe_setup_fc() before fc_enable() after NVM update

During an NVM update the PHY reset clears the Technology Ability Field
(IEEE 802.3 clause 37 register 7.10) back to hardware defaults. When
the driver subsequently calls only hw->mac.ops.fc_enable() the SRRCTL
register is recalculated from the stale autonegotiated capability bits,
which the MDD (Malicious Driver Detect) logic treats as an invalid
change and halts traffic on the PF.

Fix by calling ixgbe_setup_fc() immediately before fc_enable() in
ixgbe_watchdog_update_link() so that flow-control autoneg and the
PHY registers are re-programmed in the correct order after any reset.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 0bc806aaed90..96e912371d9a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -8029,6 +8029,12 @@ static void ixgbe_watchdog_update_link(struct ixgbe_adapter *adapter)
>  	pfc_en |= !!(adapter->ixgbe_ieee_pfc->pfc_en);
>
>  	if (link_up && !((adapter->flags & IXGBE_FLAG_DCB_ENABLED) && pfc_en)) {
> +		if (hw->mac.ops.setup_fc) {
> +			int err = hw->mac.ops.setup_fc(hw);
> +
> +			if (err)
> +				e_warn(drv, "setup_fc failed: %d\n", err);
> +		}

What happens if setup_fc() fails here? The patch adds this call to fix
MDD issues caused by stale PHY autoneg state after NVM updates.

However, if setup_fc() returns an error, the code only logs a warning
and continues:

	if (hw->mac.ops.setup_fc) {
		int err = hw->mac.ops.setup_fc(hw);

		if (err)
			e_warn(drv, "setup_fc failed: %d\n", err);
	}
	hw->mac.ops.fc_enable(hw);

Since fc_enable() relies on hw->fc.current_mode being properly set by
the autoneg process initiated by setup_fc(), calling it after a
setup_fc failure means it operates on the same stale state the patch
was meant to fix.

Could this leave a residual bug where MDD can still trigger and halt
traffic if setup_fc fails?

>  		hw->mac.ops.fc_enable(hw);
>  		ixgbe_set_rx_drop_en(adapter);
>  	}

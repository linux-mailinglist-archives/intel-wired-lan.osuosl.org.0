Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uYP6B9Y/3mlvpwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:23:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FA93FA6FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:23:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29E3A42A33;
	Tue, 14 Apr 2026 13:23:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yKKAnZKvNhDW; Tue, 14 Apr 2026 13:23:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62A7242A34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776173011;
	bh=UHYbtxeZb8qWTq5FhDtjzGXR8mk+3VBFPV2mka5+pv4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a96K2WfBU0JiFYyQog0CbzcOXbj/Fp197SxCNpsTfIRk1NEmsWjTIwNEsUr7ZyJYU
	 eWR1fEhf/SIE/hXNffLUSAN81q+6cGoMgsVKipYK8AzBWzbIcPZy++m/GNMGvLJ1+f
	 I6X0CoQ5SU/62vZQrKyn6ubBOIviwZPmAZQlC1vf+l3nvM0n+tQYmTNMhuRJcrLF/X
	 cbwGV0M8GlBNyAAydbt//E1UfF7PqJ6bIyt0V3KsIFTdV14oI6t97c3rMk5BZYSlvr
	 5C5LGBip09t3b3+2R2UE5hTewXkAJU/3UydUtJ6BTmEzsbAkeOZSnUaMI/8PEgtqoR
	 kv3Pc33vYUg9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62A7242A34;
	Tue, 14 Apr 2026 13:23:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B8D9283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5CA042A31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:23:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XDGWuJq7uvCq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 13:23:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 275C94291B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 275C94291B
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 275C94291B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:23:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8DC44438E4;
 Tue, 14 Apr 2026 13:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 461F5C19425;
 Tue, 14 Apr 2026 13:23:27 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Date: Tue, 14 Apr 2026 14:23:00 +0100
Message-ID: <20260414132301.756968-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260408131216.2662245-6-aleksandr.loktionov@intel.com>
References: <20260408131216.2662245-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776173008;
 bh=i28YYCrUHHMDpraT0Z5aLv8IuBAQodP0RU10t8qP06M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nziiY2cHF9SaKIleFtCmSzONxdI75XT7GwROAvqbs3etvAtGuC7zRg/p2mFMsMKID
 UKe0EpUVm/KmVEbZZjPNMUNYvh8XnzEmKQZSU+HX2ztEeQyt5xW4UuNQHqHVhk4bwZ
 Rm11fEs0gfl3m4BjdvxG2/sBJrwSE2dmu52Fx2MD5l0lec9TmmDE7hHeKCYVmXvWrH
 xz2ZHSXJsOg8Jbom2t+kdj/PVsfOs7tUG7U/4qlLmy9ac/dPl4dieg/xuiKxk2fBML
 USfeDJzFTmwVPqttkH4nKaF7Xb5H/FNrZlwEsIXgX4ZpPHLBX4kBwTgbzOHzxAXIYT
 a7DRHJZgXMwHQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nziiY2cH
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/8] ixgbe: remove
 ixgbe_ping_all_vfs() from link state change handlers
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,sashiko.dev:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 93FA93FA6FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ixgbe: remove ixgbe_ping_all_vfs() from link state change handlers

This commit removes ixgbe_ping_all_vfs() from the link watchdog handlers
to prevent a race condition during VF initialization where a gratuitous
ping collides with the VF mailbox state machine.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 8110bcf006a30..3071302901499 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -8164,9 +8164,6 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
>  
>  	/* update the default user priority for VFs */
>  	ixgbe_update_default_up(adapter);
> -
> -	/* ping all the active vfs to let them know link has changed */
> -	ixgbe_ping_all_vfs(adapter);
>  }

How will legacy VFs (such as 82599, X540, and X550) receive link state
changes without these pings?

The commit message states that link-state changes are already communicated
to VFs through the normal mailbox protocol. However, older VFs appear to
rely on receiving an IXGBE_VT_MSGTYPE_CTS message from the PF to clear
mac->get_link_status and complete the link up sequence in
ixgbevf_check_mac_link_vf().

Without the ping, will these legacy VFs fail to read the mailbox and stay
stuck reporting the link as down?

Is the mailbox corruption race still triggerable from other paths?

If ixgbe_ping_vf() is called locklessly from process-context NDO callbacks
like ixgbe_ndo_set_vf_link_state() or ixgbe_ndo_set_vf_trust(), could it be
preempted by a hardirq triggering ixgbe_msg_task() (which correctly acquires
vfs_lock before writing to the mailbox)?

Since ixgbe_write_mbx_pf() only arbitrates between the PF and VF via the
IXGBE_PFMAILBOX_PFU hardware lock, it provides no mutual exclusion between
concurrent host threads. Could concurrent writes corrupt the IXGBE_PFMBMEM
buffer and cause the exact same VF initialization failure this patch intended
to fix?

Would wrapping the pings in spin_lock_irqsave(&adapter->vfs_lock, flags)
prevent the mailbox corruption instead of removing the pings entirely?

[ ... ]

> @@ -8197,9 +8194,6 @@ static void ixgbe_watchdog_link_is_down(struct ixgbe_adapter *adapter)
>  
>  	e_info(drv, "NIC Link is Down\n");
>  	netif_carrier_off(netdev);
> -
> -	/* ping all the active vfs to let them know link has changed */
> -	ixgbe_ping_all_vfs(adapter);
>  }

Without this ping, will older VFs miss the mailbox interrupt needed to set
mac->get_link_status = 1, causing them to remain stuck reporting the link as
up indefinitely and silently drop traffic when the cable is unplugged?

This isn't a bug, but removing the calls from the link handlers appears to
leave ixgbe_ping_all_vfs() as dead code without any remaining callers in
the kernel. Should the function definition in ixgbe_sriov.c and its
declaration in ixgbe_sriov.h be removed as well?

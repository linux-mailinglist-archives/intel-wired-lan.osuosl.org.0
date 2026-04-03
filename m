Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JUGGeu/z2kM0QYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:26:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1313946AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:26:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BBD660902;
	Fri,  3 Apr 2026 13:26:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ogt3dGD7gwTd; Fri,  3 Apr 2026 13:26:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 792E860909
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775222760;
	bh=cEfci6skAoMYsDyyJKyOfd2v7RIa0O7shToQi3jJRy0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TNmchtUJaNqL9/hbBlswa/Trpo0vpci1s4GixHZfvO02vVRed02L1h2fqOwUYzTlu
	 Zr2fn4ez1E8xBYNQXPYmrozktbRKLqWjB38Kz4HQ5qf8uRGP+8HuTi5oTUx84DQ7Mx
	 cU0NtShcz5ECJT90Mxem3eRNM1ZtDH34qY+PJDfPaRh6PO+IA9673/nPuPACJtPdTz
	 CTo9k1J4R8ypilAmZTL1OHDxiOr4JXBt5PkkfKpwkCokf7WS0M4BbRGMIDKW/SR1XS
	 QUsLujj7cwx9fgdsrb6QbDx9+lOYdAnkpJA5xQM28A7UkylgZ9aUf9bnnFqUUrSwXf
	 72ak3dFEbpwig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 792E860909;
	Fri,  3 Apr 2026 13:26:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E81761A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:25:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D426E40CB9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:25:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dZBJZUfC61vW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 13:25:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EA65940C1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA65940C1F
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA65940C1F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:25:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 5EB1843AF9;
 Fri,  3 Apr 2026 13:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 134BEC4CEF7;
 Fri,  3 Apr 2026 13:25:55 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Date: Fri,  3 Apr 2026 14:25:51 +0100
Message-ID: <20260403132551.124432-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260327073046.134085-4-aleksandr.loktionov@intel.com>
References: <20260327073046.134085-4-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775222757;
 bh=kUre8Wc1l+1ATIdAhMBNpQbWAMPotyhvO7C0v3jVOb4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W1EoL7SfAU1ZPP2RD62xUBpL1a9rB3bsJo5L88KvpMVTKRJ7Kn82zQBKJMiNcea2Q
 DaNLMn9OpYnDi77XO7w7ayFglNgttAsLZBLATnyq5+J1zE2Bxg8xHP6BUCjZHtrAkH
 ZpXTWVQ7EP4/QrM520BvY7HWvtFU6Jm8+99TEQAnIXJwQj3dLNWCRUSxn/efcb8u3P
 rDLPY5HSFc8TlPWDodJi9HVzgl8KJcW1dNuxGVzx+U3O4UitGtMVpOwqHzFXEqg94q
 8wEKdAxNBwWZLhWuC3P7uxaM29gbCwbSCMpAKHSKUbIhHa4LQmcsdL8b+aRG3vKWem
 DD0XH4CTPJrXQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W1EoL7Sf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: remove
 ixgbe_ping_all_vfs() from watchdog link-up handler
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,linux.dev:url];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DB1313946AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ixgbe: remove ixgbe_ping_all_vfs() from watchdog link-up handler

This patch removes the ixgbe_ping_all_vfs() call from
ixgbe_watchdog_link_is_up() to fix a race condition where VFs receive
CTS (Clear To Send) mailbox messages instead of expected RESET|ACK
responses during initialization.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 0bc806aaed90..6996547a8084 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -8151,9 +8151,6 @@ static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
>
>  	/* update the default user priority for VFs */
>  	ixgbe_update_default_up(adapter);
> -
> -	/* ping all the active vfs to let them know link has changed */
> -	ixgbe_ping_all_vfs(adapter);
>  }

The patch removes ixgbe_ping_all_vfs() from ixgbe_watchdog_link_is_up()
to prevent the race condition during VF initialization. However, the
identical call remains in ixgbe_watchdog_link_is_down().

Doesn't the same race condition apply to link-down events?

When a VF initiates reset and the physical link state changes to down,
the watchdog would trigger:

VF side:
- Sends IXGBE_VF_RESET message
- Waits for RESET|ACK response

PF side:
- ixgbe_vf_reset_msg() processes reset, sets clear_to_send=true
- Link goes down, triggers watchdog
- ixgbe_watchdog_link_is_down() calls ixgbe_ping_all_vfs()
- Sends gratuitous ping with CTS bit

VF receives CTS message instead of expected RESET response, causing the
same initialization failure described in the commit message.

Looking at the unchanged code in ixgbe_watchdog_link_is_down():

	e_info(drv, "NIC Link is Down\n");
	netif_carrier_off(netdev);

	/* ping all the active vfs to let them know link has changed */
	ixgbe_ping_all_vfs(adapter);

The commit message states "Link-state changes are already communicated
to VFs through the normal mailbox protocol; the extra ping here is
redundant and races with VF initialization."

Does this reasoning apply equally to the link-down case?

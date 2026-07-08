Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PmUSLmEPTmqhCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 10:50:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E1C72356B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 10:50:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="X3UYceB/";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DFDF4029F;
	Wed,  8 Jul 2026 08:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GiSbjSXz9GFu; Wed,  8 Jul 2026 08:50:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D046402D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783500636;
	bh=y76FFC23c7SAB1YbYSOwuwTdxocIu4x8oXq50/TkRl4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X3UYceB/IKWnUn2uebWBtZaQmJcYOJp7Evzsc0o/2GZODCgPVP8KrFPflZsSKey0n
	 ykDojreTHA9ZSAZN7n27I49Q5RHECQD3AZVKa5oOZ2M5K/IXmxC7/6cRXKVDckcvZj
	 eo7kS0T5OngSeShRjGJQtky8MxkQ0b00OACN0CCtNoAQnUX8N0qJ9nO1pBk+lQjhp6
	 9OoQw2NQzT5n7TeYQULbE1EPJGinIeF8BEP9rIOyV2aMXpxeQVB/mE/BdcO3iJE8up
	 yl2MMdVkWBt4+OE+8oFAOpQB3FNmFdEzrQcvtTBMrnIuK3MLr6A81bhX5LPT1imJG9
	 tAs79GM4FeJ8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D046402D7;
	Wed,  8 Jul 2026 08:50:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B6C07315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 08:50:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A03CA60738
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 08:50:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6ymTWQP-zI3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 08:50:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E4CBA60673
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4CBA60673
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4CBA60673
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 08:50:33 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id CA2E660008;
 Wed,  8 Jul 2026 08:50:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EA1B1F000E9;
 Wed,  8 Jul 2026 08:50:32 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 198BD3926389; Wed,  8 Jul 2026 08:50:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <178350061164.2381125.12226069469974368415.git-patchwork-notify@kernel.org>
Date: Wed, 08 Jul 2026 08:50:11 +0000
References: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
In-Reply-To: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, manishc@marvell.com, pabeni@redhat.com,
 ecree.xilinx@gmail.com, przemyslaw.kitszel@intel.com, skalluru@marvell.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-net-drivers@amd.com,
 netdev@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783500632;
 bh=y76FFC23c7SAB1YbYSOwuwTdxocIu4x8oXq50/TkRl4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc;
 b=el5z+yeQ9R5b4pp1+Im//k9FzR8zywA+1wiGpWt8kl2AjuJ5Cj8EWJNS6OZnncL6K
 xOJdLLhilJz/HreFUjspTnU7HxY8VafhUrZsN0fKl5oXIGlRi3n4zMhlvcliPEi8u9
 +VnvA//bTpemuC6ZcM/Pgc3G95d830tn75dTCKvfp0TcVPO9Dq+Oz42wSBfC9P3RoO
 gbUHt4tf4MU1j2ivBJDXOCT6Ps3jvi9tjj/CcOKc/X3H7dO7vNRWcLOTkkLo5+KNYC
 m0+XjW0wy2R2mQEGyNg2z72O71XnBzMUDWD2wpGXEedaewdLJEfho7oX1OxPS0E1hj
 8y2x8D29o401A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=el5z+yeQ
Subject: Re: [Intel-wired-lan] [PATCH 0/4] drivers/net/ethernet: replace
 __get_free_pages() with kmalloc()
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,marvell.com,redhat.com,gmail.com,intel.com,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	TAGGED_FROM(0.00)[netdevbpf];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:rppt@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:ecree.xilinx@gmail.com,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 88E1C72356B

Hello:

This series was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Wed, 01 Jul 2026 16:57:17 +0300 you wrote:
> This is a (small) part of larger work of replacing page allocator calls
> with kmalloc.
> 
> My initial intention a few month ago was to remove ugly casts [1], but then
> willy pointed out that Linus objected to something like this [2] and it
> looks like more than a decade old technical debt.
> 
> [...]

Here is the summary with links:
  - [1/4] bnx2x: use kzalloc() to allocate mac filtering list
    https://git.kernel.org/netdev/net-next/c/28a236c54c9a
  - [2/4] ice: use kzalloc() to allocate staging buffer for reading from GNSS
    https://git.kernel.org/netdev/net-next/c/764f2a0c6d1e
  - [3/4] sfc/siena: use kmalloc() to allocate logging buffer
    https://git.kernel.org/netdev/net-next/c/50bfc5eac4cb
  - [4/4] sfc: use kmalloc() to allocate logging buffer
    https://git.kernel.org/netdev/net-next/c/e8cfc70720ea

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



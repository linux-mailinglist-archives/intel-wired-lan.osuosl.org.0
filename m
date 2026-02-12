Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHkwE2s/jmk3BQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 22:00:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE401311A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 22:00:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF3A381470;
	Thu, 12 Feb 2026 21:00:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GZ3d-Ar8cFs9; Thu, 12 Feb 2026 21:00:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAE92812C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770930024;
	bh=TtBwbHyf9ZO3yWNFD0oSknUP+3qIFIVh1BBfxKjHq7E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tnmJIk2yvrkXxkq4AiuO1RXgTOLsce04UwylN9onmPsd9r8pNULRapuPbNHCicJYv
	 ehqG3kQ+6uEcyzd+uxf8fKfvpnaS9QhOHkh9FdeXH5M9NVc1D0gO1wh3ibQSvg38kC
	 QI3g38+yKMMz0++M16TeN6c2eus/oBvP+uWvV9Uxia5HOkhnuyBxGIVUwCMc+/EuyA
	 fGIoVS+PlFwPzJSIULD3Q9GOTI8HMZOXlNP7oSKsIdyVjTi7ejkxPMkRthilrOWkNY
	 STA3gV3j9k8kKD/1GZZRj3XRP99H3rw8n+R2F3ry0YQTRbpvZPTJ2Y2YlqmvXWjveX
	 lZzFOnIw7S96Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAE92812C8;
	Thu, 12 Feb 2026 21:00:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 917F31D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 21:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F75B60799
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 21:00:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SEyYtQ2z3Q2p for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 21:00:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D9ED660783
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9ED660783
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9ED660783
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 21:00:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 304E141B0C;
 Thu, 12 Feb 2026 21:00:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13828C19421;
 Thu, 12 Feb 2026 21:00:18 +0000 (UTC)
Date: Thu, 12 Feb 2026 21:00:17 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aY4_Yau83X1TxEop@horms.kernel.org>
References: <20260211091140.236389-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211091140.236389-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770930020;
 bh=aaE1KRdXIdYiNBsEC1LLonMgcfm5pyUvYhv0fyJFMME=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PyyOebaXvwQVs+VyVwmUXJxAv9GCHN9hZgvK2FMm4UiHrOy90vyIQqgIGVbnVKsTj
 83FAWSDzABZLqa3v0ZLZIny9wOBvlsqV3nzACgStkKM28Jbud0UTJ3sPEqIAZ7QaKp
 zr9pfYARSb8s8mMaNkjAicxEs25zaVZpv9tCjo4wuss1Y2+ibntXNlWj126hfUmE9a
 wAPRBVU08PaGIKYHJF3q2+czSFuoHUnlLq/BOXJghrayw8oogGqDKkNO6vzW2eCCbi
 eQbxP7eFBWjA2nZosnznLt9krzMVNlyWXVD7DmRYf+wtRL32n1EplWHeGnY+Rtakrs
 vHx5cKaMAt/vw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PyyOebaX
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] libie: don't unroll if
 fwlog isn't supported
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BCE401311A9
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 10:11:40AM +0100, Michal Swiatkowski wrote:
> The libie_fwlog_deinit() function can be called during driver unload
> even when firmware logging was never properly initialized. This led to call
> trace:
> 
> [  148.576156] Oops: Oops: 0000 [#1] SMP NOPTI
> [  148.576167] CPU: 80 UID: 0 PID: 12843 Comm: rmmod Kdump: loaded Not tainted 6.17.0-rc7next-queue-3oct-01915-g06d79d51cf51 #1 PREEMPT(full)
> [  148.576177] Hardware name: HPE ProLiant DL385 Gen10 Plus/ProLiant DL385 Gen10 Plus, BIOS A42 07/18/2020
> [  148.576182] RIP: 0010:__dev_printk+0x16/0x70
> [  148.576196] Code: 1f 44 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 41 55 41 54 49 89 d4 55 48 89 fd 53 48 85 f6 74 3c <4c> 8b 6e 50 48 89 f3 4d 85 ed 75 03 4c 8b 2e 48 89 df e8 f3 27 98
> [  148.576204] RSP: 0018:ffffd2fd7ea17a48 EFLAGS: 00010202
> [  148.576211] RAX: ffffd2fd7ea17aa0 RBX: ffff8eb288ae2000 RCX: 0000000000000000
> [  148.576217] RDX: ffffd2fd7ea17a70 RSI: 00000000000000c8 RDI: ffffffffb68d3d88
> [  148.576222] RBP: ffffffffb68d3d88 R08: 0000000000000000 R09: 0000000000000000
> [  148.576227] R10: 00000000000000c8 R11: ffff8eb2b1a49400 R12: ffffd2fd7ea17a70
> [  148.576231] R13: ffff8eb3141fb000 R14: ffffffffc1215b48 R15: ffffffffc1215bd8
> [  148.576236] FS:  00007f5666ba6740(0000) GS:ffff8eb2472b9000(0000) knlGS:0000000000000000
> [  148.576242] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  148.576247] CR2: 0000000000000118 CR3: 000000011ad17000 CR4: 0000000000350ef0
> [  148.576252] Call Trace:
> [  148.576258]  <TASK>
> [  148.576269]  _dev_warn+0x7c/0x96
> [  148.576290]  libie_fwlog_deinit+0x112/0x117 [libie_fwlog]
> [  148.576303]  ixgbe_remove+0x63/0x290 [ixgbe]
> [  148.576342]  pci_device_remove+0x42/0xb0
> [  148.576354]  device_release_driver_internal+0x19c/0x200
> [  148.576365]  driver_detach+0x48/0x90
> [  148.576372]  bus_remove_driver+0x6d/0xf0
> [  148.576383]  pci_unregister_driver+0x2e/0xb0
> [  148.576393]  ixgbe_exit_module+0x1c/0xd50 [ixgbe]
> [  148.576430]  __do_sys_delete_module.isra.0+0x1bc/0x2e0
> [  148.576446]  do_syscall_64+0x7f/0x980
> 
> It can be reproduced by trying to unload ixgbe driver in recovery mode.
> 
> Fix that by checking if fwlog is supported before doing unroll.
> 
> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LBgDw5TuGmKcAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 19:59:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC2629F687
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 19:59:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5122461269;
	Mon, 16 Mar 2026 18:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MnhO9uMknz1k; Mon, 16 Mar 2026 18:59:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BACF761270
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773687561;
	bh=cheQLmDaxX/7lwnkFYUZQqeXZn1FvUF/OpCN4MYhr/k=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lezUdR/PHRlmSFKm3z91flWjkXdUvZ4Lql/VWX/Sgplz21I6CS1nrOm6Gup2lq8NG
	 KLoqeP4JMMGe/cWA+dqd5ceoi23WTLH3YEjtnNJ6Y0uMGILoQCvL/x3imEN/gg0RqO
	 Gt+dsOar4cOG08XtFKik7wIaSxhLX2PQZMPBYzdOP73P5sGUQcBXSJ1WY8knsvyiNQ
	 imV1Ao3Lt/Hjmi7hoSJ76eg0vBNX1yrU773JsK2Kl5wbHtMLGDyz8h3G9mmifgdAPa
	 uyTlVNU5VarVYDiuZPMdhDnFO8VbFNrir/HJwezpU89rhtgLXLdnZmrWTDR9+O1l10
	 YWJCtxyRJHtig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BACF761270;
	Mon, 16 Mar 2026 18:59:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F19C03BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 18:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6DB183544
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 18:59:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QwqnB8S-QtbI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 18:59:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A04583542
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A04583542
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A04583542
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 18:59:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 951B360097;
 Mon, 16 Mar 2026 18:59:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DF22C19421;
 Mon, 16 Mar 2026 18:59:16 +0000 (UTC)
Date: Mon, 16 Mar 2026 11:59:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: <intel-wired-lan@lists.osuosl.org>,
 <michal.swiatkowski@linux.intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, <jacob.e.keller@intel.com>
Message-ID: <20260316115915.19a6cd6a@kernel.org>
In-Reply-To: <f770c976-8688-4192-910f-5996e1850deb@intel.com>
References: <20260315125451.3741843c@kernel.org>
 <20260315130150.12829f88@kernel.org>
 <20260315132245.1a7efb20@kernel.org>
 <f770c976-8688-4192-910f-5996e1850deb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773687556;
 bh=Ueccnq4PhOYEHhxes4R0We0Oz6bLzmMxNz3zYSaOFLc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=f63BHg4Z7depQFi2OmCnSjSioonfxnsW3MTQfB1ckhbYWZ8IoA/NEDYEOh2U4crCr
 lxCrVRQc3KIM4wxT4Pw704Xvhal3dz3EQpYaOjqixbP2H9rBqgWi5aIuYNFKl2iGz4
 hLuOTAI767AO8wolv1Btgqkx/v2IiKwoUiMVtVhFExS7ay/PkPq8jCxldnvI356q34
 5Pc1dF5X3/VWoaqoi9tFOJTcLs4fNNxojZ920uVDh3vR+4eHjCMKee+mkvwMxVWiBm
 45TL/jcgIguS3uyu7k3V6N6nBaOVOjE7FfIpVAVilhqmkWuYKKSgERrc6hk+8h9Wy6
 TrH8+Wkb9ToPA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=f63BHg4Z
Subject: Re: [Intel-wired-lan] ice crashes when not enough IRQs
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3FC2629F687
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 16 Mar 2026 10:29:56 -0700 Tony Nguyen wrote:
> On 3/15/2026 1:22 PM, Jakub Kicinski wrote:
> > On Sun, 15 Mar 2026 13:01:50 -0700 Jakub Kicinski wrote:  
> >> On Sun, 15 Mar 2026 12:54:51 -0700 Jakub Kicinski wrote:  
>  [...]  
> >>
> >> Hm, maybe it's not just CONFIG_IRQ_REMAP=y
> >> Enabling it makes no difference. Let me try to see what state the IRQ
> >> allocation machinery is in on this kernel. On distro kernel ice gets
> >> all the IRQs it wants at boot. But it also barfs something RDMA so
> >> I can't really compare..  
> > 
> > I think it's ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
> > It clamped the number of allocated queues but I think it meant to only
> > clamp the default enabled queue count. No idea how y'all gonna get the
> > extra IRQs later or whether you intended to pack multiple queues per IRQ
> > so I'll let you figure this out..  
> 
> Hi Jakub,
> 
> Thanks for letting us know. I think we have the fix for this in the 
> pipeline [1]. I'll try to get it tested and out to you ASAP.

Thanks, do you also have any locking fixes for i40e ?
It's doing even worse, after running these tests:

[   66.614062][ T1267] nipa-hw-worker: [1/36] Running drivers/net:gro.py
[  138.058617][ T1267] nipa-hw-worker: [2/36] Running drivers/net:hds.py
[  138.856172][ T1267] nipa-hw-worker: [3/36] Running drivers/net:napi_id.py
[  140.195848][ T1267] nipa-hw-worker: [4/36] Running drivers/net:napi_threaded.py

The machine locks up waiting on the netdev instance lock.

Looks like on your own NIPA instance this test doesn't get to run
because ethtool is ancient and doesn't support --json for -l

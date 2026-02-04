Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IJBA3c0g2kwjAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 12:58:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EC2E56B1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 12:58:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D4B960A5F;
	Wed,  4 Feb 2026 11:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ICDnI4iOxgzR; Wed,  4 Feb 2026 11:58:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE1B360A6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770206324;
	bh=WkdJ9/NPTtPjPWFP5fSTau69QakQJcfrJGJQoXectg8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gJUSWg0zm4alUS0sngmKntv9QWIijMdHSwy38wssz3HMzWHFC3LE8DzF5O+Ac24FK
	 pz5oLMCYSlr4gxXdB7f9/FxrAjY+UBlfMk03rxf5f7VWl1TTyxVmHswXW8YOyrjGy4
	 no/EoWrffvL9QK+G6rB9zdL3iK1Byg1OEk4LsMfe3VQVDShbMcLpbsSkoQL6yiuoRr
	 Q21o11H9bNk85IvjANDqvBrCTHCncUm+0Hk6nKl8OasEMRFPIlegqdGHispfAtFHEJ
	 ZbRjuDhZUHhaguW+REIx1oHZgWFp+urgZUkyoE0xse+YVjinHRk9+fHwotIhMNyza9
	 eOBErmPCuh04Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE1B360A6F;
	Wed,  4 Feb 2026 11:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EBE90173
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D87C3832BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mOuTU573UBzU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 11:58:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B6DC81E1C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B6DC81E1C
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B6DC81E1C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:58:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 5D585444CE;
 Wed,  4 Feb 2026 11:58:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FA93C16AAE;
 Wed,  4 Feb 2026 11:58:38 +0000 (UTC)
Date: Wed, 4 Feb 2026 11:58:36 +0000
From: Simon Horman <horms@kernel.org>
To: Aaron Ma <aaron.ma@canonical.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aYM0bLu3GMvcc8Um@horms.kernel.org>
References: <20260129040026.832452-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129040026.832452-1-aaron.ma@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770206321;
 bh=aBgYq5sKLNarh8sJoMQ3wtdCMcUApTBI0ornbC2y7YY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W8Kz6ly2u6h4bavNw72G6Hf58FESgDqolQMQYYpIEDvhwpPiOyUfQt2ZM+xurObbZ
 tH9zLXq/95DNhEL2zAUodYlHbc76EqX6Q5R646qCwWIj56R20+OkO/UAUxKAE1qOT4
 /nMBsXfzAwDlqljUezJwdqUPkvdu+LmGMhS9RzRTzh456wUqgte5a7aNCcUOHLLglX
 YmboBUItpr9H2e0uN4vdJ+apjN1Ey0JKcqtTGRrz/aaSW68/BuqRRT6K8GCR6hVxs9
 RhjT6V6mhOiLtlvA5VNrqLkQXQPfSP6t4BCp+fYu01RZtPkITMCnxCai9kWePV8hmh
 zr2atUFgAMKjQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W8Kz6ly2
Subject: Re: [Intel-wired-lan] [PATCH v4] ice: recap the VSI and QoS info
 after rebuild
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,horms.kernel.org:mid,canonical.com:email,intel.com:email];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aaron.ma@canonical.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 85EC2E56B1
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 12:00:26PM +0800, Aaron Ma wrote:
> Fix IRDMA hardware initialization timeout (-110) after resume by
> separating VSI-dependent configuration from RDMA resource allocation,
> ensuring VSI is rebuilt before IRDMA accesses it.
> 
> After resume from suspend, IRDMA hardware initialization fails:
>   ice: IRDMA hardware initialization FAILED init_state=4 status=-110
> 
> Separate RDMA initialization into two phases:
> 1. ice_init_rdma() - Allocate resources only (no VSI/QoS access, no plug)
> 2. ice_rdma_finalize_setup() - Assign VSI/QoS info and plug device
> 
> This allows:
> - ice_init_rdma() to stay in ice_resume() (mirrors ice_deinit_rdma()
>   in ice_suspend())
> - VSI assignment deferred until after ice_vsi_rebuild() completes
> - QoS info updated after ice_dcb_rebuild() completes
> - Device plugged only when control queues, VSI, and DCB are all ready
> 
> Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on ACPI S3 resume")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>

Reviewed-by: Simon Horman <horms@kernel.org>


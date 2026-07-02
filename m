Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yDZnE0N3RmpxWQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 16:35:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B706F8E99
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 16:35:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=PXea41SJ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5252483B48;
	Thu,  2 Jul 2026 14:35:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K-m5kZN2oe8V; Thu,  2 Jul 2026 14:35:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D462683B3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783002944;
	bh=wH9rv6AxNmdVYoJg0T3cBY47n1twfT656Q2yRzOY/xI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PXea41SJraNo38wZCjrlDOWS6Cw7JQlxgtwgHiMnPvtKJUYNzD8n7gF8mnzli9NEH
	 y05PlZ09odwDjL4/+rd4A6y2xUZT4vkNvpqPwyG/U+D2CaeGzoUa0vTIj1Ej8EGKJw
	 hAOONcCUEwBc1IHeMBJBxp2YLCVIK5FF6r8Gf5NPoaTea8/4aS5wsUIChKUTzsdzTa
	 BjOsYgk2xyyKWfis34HNe3whMAyPETF98aa/zvRuE88B0b6lLIse+CqhvhisPr5iTj
	 xVbDWVp6PZLeMEFsKYqTDKkWWxaAs3Qhrj20Pde+whf6GCJAb3VKImJtUByIPLv/AW
	 5L137APTGFCmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D462683B3D;
	Thu,  2 Jul 2026 14:35:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DD43127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 14:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 83B2940EBF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 14:35:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XBvV4mw5YXG6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 14:35:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=rppt@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CD33B4033F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD33B4033F
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD33B4033F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 14:35:41 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 1FA7E43542;
 Thu,  2 Jul 2026 14:35:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9276F1F000E9;
 Thu,  2 Jul 2026 14:35:37 +0000 (UTC)
Date: Thu, 2 Jul 2026 17:35:34 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Manish Chopra <manishc@marvell.com>, Paolo Abeni <pabeni@redhat.com>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-net-drivers@amd.com, netdev@vger.kernel.org
Message-ID: <akZ3NuRLZ4YjFGGv@kernel.org>
References: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
 <20260701-b4-drivers-ethernet-v1-1-58776615db6e@kernel.org>
 <02237688-9532-4fd0-8494-a7bb524ca4f2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <02237688-9532-4fd0-8494-a7bb524ca4f2@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783002941;
 bh=wH9rv6AxNmdVYoJg0T3cBY47n1twfT656Q2yRzOY/xI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=mEQ4xknizAwN9m9BBuGqodJtOesHR1ePpcgaFcVl6YLkUgpkmhQNwKJYORN0RL5aF
 Zap7xy7QCA5EX2jc+RjnYkBghVkLQf0NjvYHMD4tLjcHgYHcH8XBZ+HsZOAjvFrxmh
 A/TqLdLqF5kjtdjg7m4aGrJMbqzRP9MlAgaskdofaJoNtgjsRuB5ABSs6Xx0x9Jzko
 DMSkjzLGGfKy4hDC9e7AjonGgU4uifZFcqqvZwprngUIFYE9iWHd4LTH6JGEUGLNIQ
 h6QrGBZQ/H80taGOJwizJrsrEzSuVqY0v9sjHpJnOe+cO/eIpPsxu73DhapD9oPms5
 2khvfGU+SZc5w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=mEQ4xkni
Subject: Re: [Intel-wired-lan] [PATCH 1/4] bnx2x: use kzalloc() to allocate
 mac filtering list
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,marvell.com,redhat.com,gmail.com,intel.com,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_SENDER(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:ecree.xilinx@gmail.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A2B706F8E99

On Thu, Jul 02, 2026 at 03:52:13PM +0200, Przemek Kitszel wrote:
> 
> > @@ -2713,8 +2714,7 @@ static int bnx2x_mcast_enqueue_cmd(struct bnx2x *bp,
> >   				total_elems = BNX2X_MCAST_BINS_NUM;
> >   		}
> >   		while (total_elems > 0) {
> > -			elem_group = (struct bnx2x_mcast_elem_group *)
> > -				     __get_free_page(GFP_ATOMIC | __GFP_ZERO);
> > +			elem_group = kzalloc(PAGE_SIZE, GFP_ATOMIC);
> 
> what is the current rule of thumb for kzalloc vs kvzalloc size under
> GFP_ATOMIC?

kvzalloc() with GFP_ATOMIC is kzalloc():

	/*
	 * vmalloc uses GFP_KERNEL for some internal allocations (e.g page tables)
	 * so the given set of flags has to be compatible.
	 */
	if ((flags & GFP_KERNEL) != GFP_KERNEL)
		return kmalloc_node(size, flags, node);

so it's only physically contiguous allocations.

 
> >   			if (!elem_group) {
> >   				bnx2x_free_groups(&new_cmd->group_head);
> >   				kfree(new_cmd);
> > 
> 

-- 
Sincerely yours,
Mike.

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNW6H8ce4mlX1wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 13:51:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D56F541AF3B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 13:51:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DE8340D68;
	Fri, 17 Apr 2026 11:51:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 02b1P0bZ8E8U; Fri, 17 Apr 2026 11:51:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BA2B40D6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776426692;
	bh=LaUNep/TcTq+dxW8ZEh9dZ7xTArEj61fBTSvcr7fY24=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U4QUxacmbUL+yvKa8ljx34Ise7XLq8qnFsaq3JHKBizzn+p8wdZeRpmdBTQSalKMk
	 /eMB8/wF693z7UxYI4eohLFhqDB9j6z9jU6aZt69vlt8SgbW0tprv0/4YYMNHwpry5
	 Yb1KQ18GmotR9fHoyziNAeRaoAjhggZMQUZBdJddmSQ8GM2LsKOY2qVBaSd7TWsHQS
	 N6KPyngvC0gZTaLiqfNieOYij2dPB28r9zuq+hssQNPeroYdYOkmu2ZlN0LN2uJBQe
	 Ht3vqJnLFK2dAUy4SZx8HmFY4JDmC8mecM2PHqTzliQnJHbqCT5UzLad2XZqMfYe6X
	 XYZGmTdgER+6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BA2B40D6A;
	Fri, 17 Apr 2026 11:51:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E8EA259
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 11:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FC8440D5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 11:51:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AuEUZ8YRrbup for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 11:51:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8C57E40C9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C57E40C9A
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C57E40C9A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 11:51:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id EC4054055C;
 Fri, 17 Apr 2026 11:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D92BCC19425;
 Fri, 17 Apr 2026 11:51:25 +0000 (UTC)
Date: Fri, 17 Apr 2026 12:51:22 +0100
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 kohei.enju@gmail.com, stable@vger.kernel.org
Message-ID: <20260417115122.GA31784@horms.kernel.org>
References: <20260415025226.114115-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415025226.114115-1-kohei@enjuk.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776426688;
 bh=rAXyLT5RLfyphcv1d83h3XEBAAHlPAV0dBZp35OPm0I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GWWhQdIWdYicGc8rjEfFApwQQ+vyljQ7WmK9K7RlPn9NGJURPJ1tCWClR1V7WaZ6U
 owzPnxJCDENKSUiyrTS1zBbuELUUCKMVQQmlB114vq85MFkzdOHJ5QeVuJWCXShi9g
 iDNg3Uy+B4ptYuzKAeIwn/V4v7UMxODwIl2GHDAQbevpBVa3WumJREEh8XVuKjEUel
 d5NhrPviXJrtSgqBxxVWLWg5T0ZVkKcdNXJWZyYwapcyLcjhYxUwOIwEZ369YTKOZX
 U5elaBkIoufQN7a/nGJY+QqERUq2fj3Lqgf4YGrdBNgftZax8/3UCrP1ckDYq7rQ/3
 vWUHcLTk8YJ7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GWWhQdIW
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: fix potential skb
 leak in igc_fpe_xmit_smd_frame()
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
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,linux.intel.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,horms.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:faizal.abdul.rahim@linux.intel.com,m:kohei.enju@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D56F541AF3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 02:52:18AM +0000, Kohei Enju wrote:
> When igc_fpe_init_tx_descriptor() fails, no one takes care of an
> allocated skb, leaking it. [1]
> Use dev_kfree_skb_any() on failure.
> 
> Tested on an I226 adapter with the following command, while injecting
> faults in igc_fpe_init_tx_descriptor() to trigger the error path.
>  # ethtool --set-mm $DEV verify-enabled on tx-enabled on pmac-enabled on
> 
> [1]
> unreferenced object 0xffff888113c6cdc0 (size 224):
> ...
>   backtrace (crc be3d3fda):
>     kmem_cache_alloc_node_noprof+0x3b1/0x410
>     __alloc_skb+0xde/0x830
>     igc_fpe_xmit_smd_frame.isra.0+0xad/0x1b0
>     igc_fpe_send_mpacket+0x37/0x90
>     ethtool_mmsv_verify_timer+0x15e/0x300
> 
> Cc: stable@vger.kernel.org
> Fixes: 5422570c0010 ("igc: add support for frame preemption verification")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
> Changes:
>   v2:
>     - change to idiomatic style with goto (Simon)
>     - add Cc to stable (Alex)
>     - add reprodunction steps (Alex)
>   v1: https://lore.kernel.org/all/20260329145122.126040-1-kohei@enjuk.jp/

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>

Sashiko has comments about a potential existing bug in the same code path.
I'd appreciate it if, as a follow-up, you could look over that.

Thanks!

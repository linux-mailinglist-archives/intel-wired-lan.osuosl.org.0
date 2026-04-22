Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHyIFMgM6WmXTgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 20:00:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAF34497DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 20:00:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CA1584910;
	Wed, 22 Apr 2026 18:00:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CckAOC-T6_Qy; Wed, 22 Apr 2026 18:00:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46DA7848E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776880831;
	bh=mh6y5yh9QyquHEkZ51r/J1pTGJ3FWOuH+S5IWnZMJpE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7CInItM2PmAd+NpqvI8JNsiSs/PEw67KCBiD0UnVkwqHpZ6y3rdlR9NBRNtVjK8Z8
	 KVgSQmNMTTSlcqdX0nZ7mZ1BvAFZ4v/9dHQKaQAv8WXr9HjVGjO7SV9J8iJP7lVYOZ
	 IyLXuNmoqpd5YeSMtgFvCbtwpgUL3o1lQG17o0bXSYOravHplHuMxZoAX7oCRal9KT
	 cUYhMhANBOG5BnSOoLuifpvwlgJQyjy1yqp8EsB+jq9//6p4EEtGzOZ2DHtODA7Aj2
	 MAPQT0ztGHzKpNpq8qTMu80+k3N2um//pOdyUrWWysxsXSeTdGw5NbfghD+0Yz3daL
	 3lswr79e7W5LA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46DA7848E0;
	Wed, 22 Apr 2026 18:00:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 494F3183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 18:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 383B240C81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 18:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2OEostrLKUpy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 18:00:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EAF6A40D0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAF6A40D0D
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAF6A40D0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 18:00:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 511FC442A4;
 Wed, 22 Apr 2026 18:00:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38913C19425;
 Wed, 22 Apr 2026 18:00:23 +0000 (UTC)
Date: Wed, 22 Apr 2026 19:00:20 +0100
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20260422180020.GQ651125@horms.kernel.org>
References: <20260418090137.411506-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260418090137.411506-1-kohei@enjuk.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776880826;
 bh=vRGM5fdnwN3r2o7+o8B0zJJEj14G3ujdB0md67BxS6M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cxwr75AxlCyeiQ/LwDiYJ6l6jyirk+bWY/wjemxm4nLyAhfeSFsmFZQoPm7m0R9GL
 vej3+9Nj2Jd5LStc2cSPmc+kenIkHE9nBndhc3a0qFRm6uiVEy9SOJfqvqM13+LdwR
 mZIBjarJwqbv69bCv3XggOay062kWmunTFUuzl9Ghq9tUmNz3QL2Q/aST6YuYSVxJq
 Omgw3s0SktvAZDcbYodie12zJcwkkTDwL5eeAyvwSn1xuRVJiAlSGsVlMi2k9L1Xsw
 yEcMLMAdl8Owo0+xYUKThD83rIOoXDZKv9vPgTcZI/ThPZOK6qfv4y3dbtUBQ+FtCJ
 /JNFVVan13Xuw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cxwr75Ax
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix UAF/NULL deref
 when VSI rebuild and XDP attach race
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:wojciech.drewek@intel.com,m:jacob.e.keller@intel.com,m:larysa.zaremba@intel.com,m:maciej.fijalkowski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email,horms.kernel.org:mid,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5DAF34497DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Apr 18, 2026 at 09:01:15AM +0000, Kohei Enju wrote:
> ice_xdp_setup_prog() unconditionally hot-swaps xdp_prog when
> ICE_VSI_REBUILD_PENDING is set. In the attach path, this can publish a
> new rx_ring->xdp_prog before rx_ring->xdp_ring becomes valid while the
> rebuild is pending. As a result, ice_clean_rx_irq() may dereference
> rx_ring->xdp_ring too early.
> 
> With high-volume RX packets, running these commands in parallel
> triggered a KASAN splat [1].
>  # ethtool --reset $DEV irq dma filter offload
>  # ip link set dev $DEV xdp {obj $OBJ sec xdp,off}
> 
> Fix this by rejecting XDP attach while rebuild is pending.
> Keep XDP detach allowed in this window. Detach clears rx_ring->xdp_prog,
> so the RX path will not attempt to access rx_ring->xdp_ring.
> 
> [1]
> BUG: KASAN: slab-use-after-free in ice_napi_poll+0x3921/0x41a0
> Read of size 2 at addr ffff88812475b880 by task ksoftirqd/1/23
> [...]
> Call Trace:
>  <TASK>
>  ice_napi_poll+0x3921/0x41a0
>  __napi_poll+0x98/0x520
>  net_rx_action+0x8f2/0xfa0
>  handle_softirqs+0x1cb/0x7f0
> [...]
>  </TASK>
> 
> Allocated by task 7246:
>  ice_prepare_xdp_rings+0x3de/0x12d0
>  ice_xdp+0x61c/0xef0
>  dev_xdp_install+0x3c4/0x840
>  dev_xdp_attach+0x50a/0x10a0
>  dev_change_xdp_fd+0x175/0x210
> [...]
> 
> Freed by task 7251:
>  __rcu_free_sheaf_prepare+0x5f/0x230
>  rcu_free_sheaf+0x1a/0xf0
>  rcu_core+0x567/0x1d80
>  handle_softirqs+0x1cb/0x7f0
> 
> Fixes: 2504b8405768 ("ice: protect XDP configuration with a mutex")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>

Reviewed-by: Simon Horman <horms@kernel.org>

Sashiko has provided some feedback on this patch.
However, I believe the issues it raises are not introduced
by this patch and should not block progress of it.
I'd like to ask if you could take a look over that feedback
and see if any follow-up is appropriate.

Thanks!

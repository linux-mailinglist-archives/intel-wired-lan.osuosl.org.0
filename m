Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L71GH+0gMmpUvQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 06:22:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1206E69665C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 06:22:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=BjBVoe9H;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.in:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E69834EC6D;
	Wed, 17 Jun 2026 04:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eqw-zxGqywr6; Wed, 17 Jun 2026 04:22:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 179D14EC6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781670121;
	bh=TIe4l3ASPdIIXkbKu0EttgIt8LTWQF4HXBMwvsrr0Ik=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=BjBVoe9Hdb9qR4opwdGbiZhyWkMxqoC14FqBhgIOxjbP9tJhrwjT9e4FD7tm+OgbA
	 /d3SNLYxuUb61VFEn8CSX8Flx1vLGaBOAb6haBl/KzarERaOjZdIk2aAB+bW5h81kd
	 mGB7ONKp4cMNDPRQKHzPdmrxxGuSMAwBs8B496ObsDM9YJH5CAyZzetIStBFSVLv7p
	 LtAGL4vY4oayX1WzEYVGlXHKHu2sVQ5YtUmjOPMMFUXYQiw6bOwy1XXcvNEX2Hzaea
	 IT8RRuiRvs8wxEidT5MSgorha6yVwz9lNMOOzRFsC7nDJ969JkRdU/ebBAVpSS5AeF
	 Txoq8DwWVy3cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 179D14EC6E;
	Wed, 17 Jun 2026 04:22:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 99929D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 04:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B50A6F754
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 04:21:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VO5MzF4EtHuZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 04:21:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.91;
 helo=sender-pp-o91.zoho.in; envelope-from=kshitiz.bartariya@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 028DE6F753
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 028DE6F753
Received: from sender-pp-o91.zoho.in (sender-pp-o91.zoho.in [103.117.158.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 028DE6F753
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 04:21:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781670056; cv=none; d=zohomail.in; s=zohoarc; 
 b=eaZBpmx3YXhMK3SlM2TZL/DVa2tDz8yc8j1s5h2no1mbLIwjCOtSzfd8RL2+XaJ5MRRA9k7MP05vSfOEXQVlqTKJ5cABzEfkXTlRiPtPn1HOCMJFnPwBakK95ExLnd9LviyS/j6jRKVthRRRjgStsqNvLrDXlFsRCIFcZf/e3/Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1781670056;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=TIe4l3ASPdIIXkbKu0EttgIt8LTWQF4HXBMwvsrr0Ik=; 
 b=Tf1Nnxls8NRZlSalWlyhm/las5UXzhx75fLhLKwxctfE1dSJjRon8J+h2+btScVQETetV/0bK2WE7yQqzstk27JI+OD1g8mPwXJ30pUcCFdo74mxNim2/ViscAq+3vgr/WVtdYGcKKzqpxGoV/SHwKgO8FpBHgi5difiyVGwkYI=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=kshitiz.bartariya@zohomail.in;
 dmarc=pass header.from=<kshitiz.bartariya@zohomail.in>
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1781670049413913.9124159394931;
 Wed, 17 Jun 2026 09:50:49 +0530 (IST)
Received: from  [49.206.134.238] by mail.zoho.in
 with HTTP;Wed, 17 Jun 2026 09:50:49 +0530 (IST)
Date: Wed, 17 Jun 2026 09:50:49 +0530
To: "Simon Horman" <horms@kernel.org>
Cc: "intel-wired-lan" <intel-wired-lan@osuosl.org>,
 "anthony.l.nguyen" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev" <andrew+netdev@lunn.ch>,
 "davem" <davem@davemloft.net>, "edumazet" <edumazet@google.com>,
 "kuba" <kuba@kernel.org>, "pabeni" <pabeni@redhat.com>,
 "jedrzej.jagielski" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan" <intel-wired-lan@lists.osuosl.org>,
 "netdev" <netdev@vger.kernel.org>,
 "linux-kernel" <linux-kernel@vger.kernel.org>
Message-ID: <19ed3cf767d.36a9bda531830.5017017162150392549@zohomail.in>
In-Reply-To: <20260615115806.756776-1-horms@kernel.org>
References: <20260613091231.26601-1-kshitiz.bartariya@zohomail.in>
 <20260615115806.756776-1-horms@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1781670056; 
 s=zoho; d=zohomail.in; i=kshitiz.bartariya@zohomail.in;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=TIe4l3ASPdIIXkbKu0EttgIt8LTWQF4HXBMwvsrr0Ik=;
 b=IXTYXipBSM41EDF4GrHfpBmygZgyNz3yrNxAvuB8z371nZ67aD6iUUHB9ZQOKNXa
 0VFvBR9Quy0LOD/bCam2Jnoktnczsrbxks1rc67NeNRr8nvXG+LmIwcl1gVbj7RGW1z
 9mCOPd7quLlY2dDJULbDdXFIsf10e+BCbLNybzZ8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=kshitiz.bartariya@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=IXTYXipB
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] ixgbe: implement
 get_queue_stats_rx
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
From: Kshitiz Bartariya via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.30 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:intel-wired-lan@osuosl.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[kshitiz.bartariya@zohomail.in];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1206E69665C

Hi Simon,

For the review generated by AI, I had done changes on that line previously but Jakub Kicinski <kuba@kernel.org> pointed out that such checks are redundant https://lore.kernel.org/lkml/20260525085356.5c336491@kernel.org/ .

Kindly let me know according to whom I've to make the final changes.

Thanks,
Kshitiz

From: Simon Horman <horms@kernel.org>
To: <intel-wired-lan@osuosl.org>
Cc: "Simon Horman"<horms@kernel.org>, <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <jedrzej.jagielski@intel.com>, <kshitiz.bartariya@zohomail.in>, <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Date: Mon, 15 Jun 2026 17:28:06 +0530
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] ixgbe: implement get_queue_stats_rx

 > This is an AI-generated review of your patch. The human sending this
 > email has considered the AI review valid, or at least plausible.
 > Full review at: https://netdev-ai.bots.linux.dev/sashiko/
 > ---
 > ixgbe: implement get_queue_stats_rx
 > 
 > This patch wires ixgbe into the netdev_stat_ops interface so that per-RX
 > queue counters (bytes, packets, alloc_fail, csum_bad) are exported
 > through the netdev generic netlink API.
 > 
 > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
 > > index bc16e4c93fd4..67844e25af23 100644
 > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
 > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
 > > @@ -9759,6 +9759,30 @@ static void ixgbe_get_stats64(struct net_device *netdev,
 > >      stats->rx_missed_errors    = netdev->stats.rx_missed_errors;
 > >  }
 > >  
 > > +static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,
 > > +                     struct netdev_queue_stats_rx *stats)
 > > +{
 > > +    struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 > > +    struct ixgbe_ring *ring = adapter->rx_ring[idx];
 > > +
 > 
 > [High]
 > Can adapter->rx_ring[idx] be observed NULL here?
 > 
 > Elsewhere in the same driver, this slot is treated as nullable. The
 > writer side uses WRITE_ONCE() in both directions, for example in
 > ixgbe_free_q_vector():
 > 
 >     WRITE_ONCE(adapter->rx_ring[ring->queue_index], NULL);
 > 
 > and the existing readers in ixgbe_main.c pair that with READ_ONCE() and
 > a NULL guard, e.g. ixgbe_get_stats64():
 > 
 >     struct ixgbe_ring *ring = READ_ONCE(adapter->rx_ring[i]);
 >     if (ring) {
 >         ...
 >     }
 > 
 > and ixgbe_update_stats():
 > 
 >     struct ixgbe_ring *rx_ring = READ_ONCE(adapter->rx_ring[i]);
 >     if (!rx_ring)
 >         continue;
 > 
 > If a userspace caller issues a per-queue qstats request while the driver
 > is reconfiguring queues (e.g. ixgbe_clear_interrupt_scheme() /
 > ixgbe_init_interrupt_scheme() during reset), would a plain dereference
 > here oops?
 > 
 > Should this callback follow the same READ_ONCE() plus NULL-skip pattern
 > used in ixgbe_get_stats64() and ixgbe_update_stats()?
 > 
 > > +    stats->bytes = ring->stats.bytes;
 > > +    stats->packets = ring->stats.packets;
 > 
 > [Medium]
 > Should these 64-bit reads be wrapped in a u64_stats_sync read section?
 > 
 > The writer side, ixgbe_update_rx_ring_stats(), updates these counters
 > under ring->syncp:
 > 
 >     u64_stats_update_begin(&rx_ring->syncp);
 >     rx_ring->stats.packets += total_packets;
 >     rx_ring->stats.bytes += total_bytes;
 >     u64_stats_update_end(&rx_ring->syncp);
 > 
 > and the syncp is initialized at probe (u64_stats_init() on ring->syncp).
 > ixgbe_get_stats64() in this same file already mirrors that on the read
 > side:
 > 
 >     do {
 >         start = u64_stats_fetch_begin(&ring->syncp);
 >         packets = ring->stats.packets;
 >         bytes   = ring->stats.bytes;
 >     } while (u64_stats_fetch_retry(&ring->syncp, start));
 > 
 > On 32-bit kernels a 64-bit load is not atomic, so without the fetch
 > loop can the values returned to userspace be torn (high half from one
 > update, low half from another)?
 > 
 > > +    stats->alloc_fail = ring->rx_stats.alloc_rx_page_failed +
 > > +                ring->rx_stats.alloc_rx_buff_failed;
 > > +    stats->csum_bad = ring->rx_stats.csum_err;
 > > +}
 > > +
 > 
 > [ ... ]
 > 


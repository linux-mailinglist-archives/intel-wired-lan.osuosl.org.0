Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMSSAmF7GGrbkQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 19:29:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DE75F5A14
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 19:29:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82EDE61BD5;
	Thu, 28 May 2026 17:29:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jE5mNT0co17e; Thu, 28 May 2026 17:29:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAB1B61BD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779989341;
	bh=h5u2QCA4IQHZmMF+M7+9tjgQWrAvtLUoEFMzcuaOtCE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z4xSjF5HP9pgF/1gdag4+T/GLpE/uPjyCQp5WMgFjdxKEI64bzChAsizRCaU3k2YY
	 RF7zKWJ7e+5pbLDbq6JH0l7XAd/cfQUE36NLJxWwyUNOt4Jg0wsCxvh8OBE9S5huWv
	 rai7Go5Eyz0DA5sJejwxR2juoCtbgZAOr7YSzw+eWoOU5+oXKJB/9PjmGiG71K55AB
	 jPx6CkJF9/A1ze/nSEbPmC2g7wFm3Wp7iSyd3RdHlNsN4PKZqIgSiYI07kWgTJJZ+D
	 jPs/8vV7HluJQBYhYHhqvrjW6c/IHvWFFydYnEUDJpgDgLBt467pF+I1Fh5n748Dif
	 OUUYkiJhGHtaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAB1B61BD7;
	Thu, 28 May 2026 17:29:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CB39288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E16F84E0E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:29:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 16QAplSG8xaw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 17:28:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4E9B84E0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4E9B84E0D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4E9B84E0D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:28:59 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 3EE5C601E4;
 Thu, 28 May 2026 17:28:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFDBF1F000E9;
 Thu, 28 May 2026 17:28:55 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: kshitiz.bartariya@zohomail.in
Cc: 'Simon Horman' <horms@kernel.org>, kuba@kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 28 May 2026 18:26:52 +0100
Message-ID: <20260528172649.2666600-4-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260526074744.36315-1-kshitiz.bartariya@zohomail.in>
References: <20260526074744.36315-1-kshitiz.bartariya@zohomail.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779989337;
 bh=h5u2QCA4IQHZmMF+M7+9tjgQWrAvtLUoEFMzcuaOtCE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=nivTUmWSUMLEztUCqRnyXAEKc7FeaZ/gbHkDoDAhHF5Foea+qxckdfpaaGrCXES7n
 aKXOmmCMA7ujDQW7hQr+JV+UF6QFWcqegoTv4TKLSZizCPd2CRF8I8Zau0tzjMl2xu
 ixpsrsU+aAgBnKkrrczIWeDc76cdt/YsjrcQ83ZFT9UuMW/cpm1VoOud34SpcbU4xG
 ICJVHK0tiorBFO2ZTsxNUW6YiU6abuAee25YwR+EvjiZNIdDHmI40SUvKnvnDLm98T
 2hkloN+3/aUBt/qDEVotlpspVrBsUa4gdmxyfZv6sWFWMKY7ard/OqltE8CuGkPJVM
 /N+SFcHxDTbzw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=nivTUmWS
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: implement
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kshitiz.bartariya@zohomail.in,m:horms@kernel.org,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,sashiko.dev:url];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 74DE75F5A14
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ixgbe: implement get_queue_stats_rx

This commit hooks into the netdev_stat_ops interface to expose per RX queue
statistics through the netdev generic netlink API.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 2646ee6f295f0..2184213727c7d 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
[ ... ]
> @@ -9740,6 +9740,21 @@ static void ixgbe_get_stats64(struct net_device *netdev,
>  	stats->rx_missed_errors	= netdev->stats.rx_missed_errors;
>  }
>  
> +static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,
> +				     struct netdev_queue_stats_rx *stats)
> +{
> +	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
> +	struct ixgbe_ring *ring = adapter->rx_ring[idx];
> +

Simon says: The issue flagged below does seem to warrant investigation.

[Severity: High]
Does this code risk a NULL pointer dereference?

The generic netlink queue stat dump executes under RCU without holding the
rtnl_lock. During device reconfigurations (e.g., changing the number of channels
via ethtool -L), the driver temporarily tears down the queues and sets
adapter->rx_ring[idx] to NULL.

Because this happens while the interface is still marked up and before
dev->real_num_rx_queues is updated, a concurrent queue stats dump could invoke
ixgbe_get_queue_stats_rx() while the ring pointer is NULL.

> +	stats->alloc_fail = ring->rx_stats.alloc_rx_page_failed +
> +			    ring->rx_stats.alloc_rx_buff_failed;
> +	stats->csum_bad = ring->rx_stats.csum_err;

Simon says: While it seems to me that the heart of the issue flagged below is
            a subjective decision around the scope of this work.

[Severity: Medium]
Are we missing the packet and byte counts here?

The driver tracks these fundamental metrics in ring->stats.packets and
ring->stats.bytes, and they can be safely read using the ring->syncp
u64_stats_sync lock.

Since they are omitted from struct netdev_queue_stats_rx, the generic netlink
API will treat them as NETDEV_STAT_NOT_SET, leaving userspace tools without
packet and byte counts for the RX queues.

> +}
> +

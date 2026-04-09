Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOsUM5f21mlUKQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 02:45:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C433C515E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 02:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE47140728;
	Thu,  9 Apr 2026 00:45:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d2TwXkepWMnf; Thu,  9 Apr 2026 00:45:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 232954075F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775695509;
	bh=fh2RT04a1qE4AdjGEhrjiAI4NtAoE435wHmxjKkMiWM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s5LrLtK/wM6gaXsJUbwBc++3dlxi7fBfSHZ7CxXy2eqKJAysJ33GuTHXcDgYMXwMj
	 ahiSEWZLX2WZvx5RqDR4F332Q19t/4LZ1egHrBD/a9mhFL3zmctH2bKar5lw3m/ifm
	 wiWv7e/ZTCkKj0aV3J4sojO94U2vd1GcTKGdgz/lc4EXBt605E/7JBrQPsCLZsFd6V
	 vo53TOi3IHu3mwHBc6Dp57SApUKNon9+GpgN5I6dSAGIgij7Wwv+mwAMISaSMuBVDi
	 Sxz/BqnMJ3ywWV2I7DE79IhHF+SoE25dRrM154VxQtyCg7jGLlpDyvCWWRkCUATjwB
	 Az6lXKaH/90yA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 232954075F;
	Thu,  9 Apr 2026 00:45:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A0F62C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 00:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BF92406F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 00:45:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ehfLo37FSqDF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 00:45:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7D0504064E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D0504064E
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D0504064E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 00:45:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 98269444C0;
 Thu,  9 Apr 2026 00:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7781C19421;
 Thu,  9 Apr 2026 00:45:04 +0000 (UTC)
Date: Wed, 8 Apr 2026 17:45:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 netdev@vger.kernel.org
Message-ID: <20260408174504.17210f78@kernel.org>
In-Reply-To: <0815f1eb4b60faa653ea703e420395b724d05216.1775648513.git.pabeni@redhat.com>
References: <cover.1775648513.git.pabeni@redhat.com>
 <0815f1eb4b60faa653ea703e420395b724d05216.1775648513.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775695505;
 bh=yKPYnKdH6B2V81W24pAJpsyTt+fFkWrquiwbGfT6igE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hMAMHib3bR4GWd9vMtRvPlmGJZmi1vzYPXO8sa7qzqs9ZxnCx7gaZVqftnQTbllZn
 6cFlCVWSIaYW5NEn+YWcEwL1fcg85Ye7lK6ByD+th7IfRm+Ap8r/PP8JaF7T7wCyJ3
 SUk56fPyMEu7QXxe69UPAaaE5zpvc5k0Sgitx8KYo+SoYdZC8bXQGyAdZ5JIX2H6Yb
 +z9MU8X/8v/cjXNMaM/pAWKx6bgtFBhRPHafUA9EzZZRL2cCzWilXH1c8iEtQY3V29
 4rByjybIrhD/afsXGg/iSgIys8Y2UuvI7ykZ67qX7MjpUChsFVEGq5V+M1czy5N7WI
 aRCpSBK/6UDCw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hMAMHib3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
 per-queue stats
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
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
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
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 48C433C515E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed,  8 Apr 2026 13:43:45 +0200 Paolo Abeni wrote:
> +static void i40e_get_queue_stats_tx(struct net_device *dev, int idx,
> +				    struct netdev_queue_stats_tx *tx)
> +{
> +	struct i40e_netdev_priv *np = netdev_priv(dev);
> +	struct i40e_vsi *vsi = np->vsi;
> +	struct i40e_ring *tx_ring;
> +
> +	rcu_read_lock();
> +	tx_ring = READ_ONCE(vsi->tx_rings[idx]);
> +	if (!tx_ring)
> +		goto out;
> +
> +	i40e_zero_tx_ring_stats(tx);
> +	i40e_add_tx_ring_stats(tx_ring, tx);
> +
> +	if (i40e_enabled_xdp_vsi(vsi)) {
> +		tx_ring = READ_ONCE(vsi->xdp_rings[idx]);
> +		if (tx_ring)
> +			i40e_add_tx_ring_stats(tx_ring, tx);

If XDP Tx happens on dedicated queues it should be added to base,
not to the stats of the "stack" queue. This is in anticipation of
XDP being its own queue type one day, we'll then isolate those
out of base. Ripping the out of TX could cause regressions.

> +	}
> +
> +out:
> +	rcu_read_unlock();
> +}
> +
> +static void i40e_get_base_stats(struct net_device *dev,
> +				struct netdev_queue_stats_rx *rx,
> +				struct netdev_queue_stats_tx *tx)
> +{
> +	struct i40e_netdev_priv *np = netdev_priv(dev);
> +	struct i40e_vsi *vsi = np->vsi;
> +
> +	tx->bytes = vsi->tx_bytes;
> +	tx->packets = vsi->tx_packets;
> +	tx->wake = vsi->tx_restart_base;
> +	tx->stop = vsi->tx_stopped_base;
> +	tx->hw_drops = vsi->tx_busy_base;
> +
> +	rx->bytes = vsi->rx_bytes;
> +	rx->packets = vsi->rx_packets;
> +}

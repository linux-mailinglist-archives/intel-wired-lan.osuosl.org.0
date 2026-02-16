Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFJlBFkZk2nD1QEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 14:19:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE3A143C3E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 14:19:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B41140B0E;
	Mon, 16 Feb 2026 13:19:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ISnvn_NxPWf4; Mon, 16 Feb 2026 13:19:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A64840ADF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771247958;
	bh=yyPZMNCvgEIFVbA5qts4ygVgEEATSl41ahGxqk/oMuw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YubEhEvm67eSke6tD/OPLl/hLp/vPVZfsg+pYdL+OjjlHFA2XSCbQaPCIhzxqaUnx
	 BLRhKBON3CjpqysC8vdOkUKhFlF8+vPrYtHMlkaJX9n6kc26Et6R/yq2YZXCqUGHbu
	 J2XR4tzjqPYuqIAv9//Dgb9zaTdA04h+h4HwZ6rlK8yX9vQ0HgxoK+HEBR2C+9MvtT
	 7xoOlE4fUR9QhTU99vh2FD0q4M//5+H9jKW1/jgiyQXgQynxlT4F9CCT4ViLS7zmNn
	 0dH8CtiLWIew2bhHynVNQzfYn12KWoShDDFQ1mAfa4SpTBEwGe/v666AXfhxy+z4Iv
	 WG33DpqpVM+rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A64840ADF;
	Mon, 16 Feb 2026 13:19:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CB3C35B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 13:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E9E260B5D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 13:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YT6-Kk0qEgJg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Feb 2026 13:19:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 56AC560B5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56AC560B5C
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56AC560B5C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 13:19:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 2F52B600C4;
 Mon, 16 Feb 2026 13:19:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0704EC116C6;
 Mon, 16 Feb 2026 13:19:11 +0000 (UTC)
Date: Mon, 16 Feb 2026 13:19:09 +0000
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Witold Fijalkowski <witoldx.fijalkowski@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 kohei.enju@gmail.com
Message-ID: <aZMZTTXWtIO1ERpm@horms.kernel.org>
References: <20260214191502.267670-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260214191502.267670-1-kohei@enjuk.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771247954;
 bh=L+SuQDcvBCHqR3x9W5Om/Gh8l0QgbINjVgOff6HAL+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BTiHqB0rP48PVxvQLTUYs9bSqEf1NSYD2bs+/j6lInOtin3m/NKf+Sruuc55l0vWW
 7JwMX+oAkhgNTyXgXgz70WTTK7gczZc08TIlDSKHNSxAOfTfBqhOkOHZ9WzEcZovrK
 M4vLVtTZqK3EDibwvl9UUIh/cp2HNe4NwapXFe84t0eY1wDCO+k3do/WpjC/dQHBM0
 dt+nNNqC5Gj4HA+DDIfxZiEKuPdhxLUF6wK+2qXP4j4SYaLImHvJyar8ZUjYQ5B/X2
 MLXzY2MmGvpjNJ5jZvASwVRFeF6vm41TP4bfbXsO3M2pDPu9yHfMSzVl/xXafbezTX
 F/uUjVs6IHjPA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BTiHqB0r
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix out-of-bounds
 writes in iavf_get_ethtool_stats()
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,osuosl.org:dkim];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:mateusz.palczewski@intel.com,m:witoldx.fijalkowski@intel.com,m:przemyslawx.patynowski@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7AE3A143C3E
X-Rspamd-Action: no action

On Sat, Feb 14, 2026 at 07:14:25PM +0000, Kohei Enju wrote:
> iavf incorrectly uses real_num_tx_queues for ETH_SS_STATS. Since the
> value could change in runtime, we should use num_tx_queues instead.
> 
> Moreover iavf_get_ethtool_stats() uses num_active_queues while
> iavf_get_sset_count() and iavf_get_stat_strings() use
> real_num_tx_queues, which triggers out-of-bounds writes when we do
> "ethtool -L" and "ethtool -S" simultaneously [1].
> 
> For example when we change channels from 1 to 8, Thread 3 could be
> scheduled before Thread 2, and out-of-bounds writes could be triggered
> in Thread 3:
> 
> Thread 1 (ethtool -L)       Thread 2 (work)        Thread 3 (ethtool -S)
> iavf_set_channels()
> ...
> iavf_alloc_queues()
> -> num_active_queues = 8
> iavf_schedule_finish_config()
>                                                    iavf_get_sset_count()
>                                                    real_num_tx_queues: 1
>                                                    -> buffer for 1 queue
>                                                    iavf_get_ethtool_stats()
>                                                    num_active_queues: 8
>                                                    -> out-of-bounds!
>                             iavf_finish_config()
>                             -> real_num_tx_queues = 8

...

> Fixes: 64430f70ba6f ("iavf: Fix displaying queue statistics shown by ethtool")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>

...

> @@ -345,19 +344,19 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
>  	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
>  
>  	rcu_read_lock();
> -	/* As num_active_queues describe both tx and rx queues, we can use
> -	 * it to iterate over rings' stats.
> +	/* Use num_tx_queues to report stats for the maximum number of queues.
> +	 * Queues beyond num_active_queues will report zero.
>  	 */
> -	for (i = 0; i < adapter->num_active_queues; i++) {
> -		struct iavf_ring *ring;
> +	for (i = 0; i < netdev->num_tx_queues; i++) {
> +		struct iavf_ring *tx_ring = NULL, *rx_ring = NULL;
>  
> -		/* Tx rings stats */
> -		ring = &adapter->tx_rings[i];
> -		iavf_add_queue_stats(&data, ring);
> +		if (i < adapter->num_active_queues) {

Hi Enju-san,

If I understand things correctly, in the scenario described in the patch
description, num_active_queues will be 8 here.

Won't that result in an overflow?

> +			tx_ring = &adapter->tx_rings[i];
> +			rx_ring = &adapter->rx_rings[i];
> +		}
>  
> -		/* Rx rings stats */
> -		ring = &adapter->rx_rings[i];
> -		iavf_add_queue_stats(&data, ring);
> +		iavf_add_queue_stats(&data, tx_ring);
> +		iavf_add_queue_stats(&data, rx_ring);
>  	}
>  	rcu_read_unlock();
>  }

...

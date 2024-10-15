Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4B999DBE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 03:52:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45D584096B;
	Tue, 15 Oct 2024 01:52:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WBOaBQAbuMKx; Tue, 15 Oct 2024 01:52:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA3C64063B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728957125;
	bh=aFubY3hDlN4JAZvP05a365cRVGS3VvQnoS3gjUeyF9Y=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TjbvZbTP/pjtcIKqQ+5TCtbkuh1ScmYEBpJjIdx+GaTA+ryOBeBQQeDwoi2xGzi0m
	 Pt4XU2xSqOrRYtqw7ueLcSskAQ+wQo0+PzpAVvrwBIBVKyaeWlh39AbfKi8W+FRULE
	 XxA6xazwYZcWVTT71BxwDNINXRpCt9bFPkG1U4Y86lJsxDPhFp4iHaCPWd3osem4zN
	 00dVPZddvJJcnzIosveCGl3Wk2iylePTCDtqmrfNsOOzYMy4okUh6vWOTKRNj7ATdI
	 wkeerIKJlgiAfyx1zSl7HCenQm/eOsJk/KZNx/KLSHDbSWVJDBJHeoqDA9s7NWQEYs
	 qvKaUsYhiNLdQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA3C64063B;
	Tue, 15 Oct 2024 01:52:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D46841BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 01:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9CA904048F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 01:52:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p5MqRJYMn0v9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 01:52:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F0BF403BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F0BF403BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F0BF403BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 01:51:59 +0000 (UTC)
X-CSE-ConnectionGUID: W27+KBUpSUO+qxrAumW3xQ==
X-CSE-MsgGUID: umDmiBv8QkuIfuk5ButqKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="15948996"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="15948996"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 18:51:59 -0700
X-CSE-ConnectionGUID: Xtxza0obQPi2lh2TP1yC5g==
X-CSE-MsgGUID: pgSghFNdTh6Jrefj0IEGKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="78561331"
Received: from jdoman-desk1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.221.73])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 18:51:58 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org
In-Reply-To: <20241014213012.187976-3-jdamato@fastly.com>
References: <20241014213012.187976-1-jdamato@fastly.com>
 <20241014213012.187976-3-jdamato@fastly.com>
Date: Mon, 14 Oct 2024 18:51:57 -0700
Message-ID: <87ldyqnneq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728957120; x=1760493120;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jRe3cvMMhFQXU5Qt3lmzcFa6sNreGfi9RKk2Rty5aS8=;
 b=E9a6hxAGpwHzz2t+uz+z8LwHO+1/puyKstkQ5EnCzRFCs7PH9T8IezHj
 PvPq7Lx1Ifl/zgPHYpXzcklvHYgOGxR07aT1iND6Veg2Fa+QrlfXs/zil
 4CdbIecwWLh1lpEvrzkdOTLl/OCLvMZ/Jk2EejpMrI87O1PlYeqCSdg/p
 17E3OBPjfQ3FNbT0z6OKh+5uP4GaHksRWW1UfV3CWbaOoKmz7wJYprDRa
 mGAaMvfEncCUqv16vmcC4MI0cCTAbiv40hAyDXy63bpbGVs/c/R7tvcNF
 fw6IIm1mFpuqJRJHT3RuQa1ZxnqGEenx5edDM7Va+rh3JSqSAQayn0Q8f
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E9a6hxAG
Subject: Re: [Intel-wired-lan] [RFC net-next v2 2/2] igc: Link queues to
 NAPI instances
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, kurt@linutronix.de,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "open list:XDP \(eXpress Data Path\)" <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Joe Damato <jdamato@fastly.com> writes:

> Link queues to NAPI instances via netdev-genl API so that users can
> query this information with netlink. Handle a few cases in the driver:
>   1. Link/unlink the NAPIs when XDP is enabled/disabled
>   2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
>
> Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json='{"ifindex": 2}'
>
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
>  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
>  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>
> Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
> is present for both rx and tx queues at the same index, for example
> index 0:
>
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>
> To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
> the grub command line option "maxcpus=2" to force
> igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.
>
> Example output when IGC_FLAG_QUEUE_PAIRS is disabled:
>
> $ lscpu | grep "On-line CPU"
> On-line CPU(s) list:      0,2
>
> $ ethtool -l enp86s0  | tail -5
> Current hardware settings:
> RX:		n/a
> TX:		n/a
> Other:		1
> Combined:	2
>
> $ cat /proc/interrupts  | grep enp
>  144: [...] enp86s0
>  145: [...] enp86s0-rx-0
>  146: [...] enp86s0-rx-1
>  147: [...] enp86s0-tx-0
>  148: [...] enp86s0-tx-1
>
> 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
> report 4 IRQs with unique NAPI IDs:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json='{"ifindex": 2}'
> [{'id': 8196, 'ifindex': 2, 'irq': 148},
>  {'id': 8195, 'ifindex': 2, 'irq': 147},
>  {'id': 8194, 'ifindex': 2, 'irq': 146},
>  {'id': 8193, 'ifindex': 2, 'irq': 145}]
>
> Now we examine which queues these NAPIs are associated with, expecting
> that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
> have its own NAPI instance:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json='{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  v2:
>    - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
>      disabled
>    - Refactored code to move napi queue mapping and unmapping to helper
>      functions igc_set_queue_napi and igc_unset_queue_napi
>    - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
>    - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
>      igc_xdp_enable_pool, and igc_xdp_disable_pool
>
>  drivers/net/ethernet/intel/igc/igc.h      |  3 ++
>  drivers/net/ethernet/intel/igc/igc_main.c | 58 +++++++++++++++++++++--
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
>  3 files changed, 59 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index eac0f966e0e4..7b1c9ea60056 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -337,6 +337,9 @@ struct igc_adapter {
>  	struct igc_led_classdev *leds;
>  };
>  
> +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> +			struct napi_struct *napi);
> +void igc_unset_queue_napi(struct igc_adapter *adapter, int q_idx);
>  void igc_up(struct igc_adapter *adapter);
>  void igc_down(struct igc_adapter *adapter);
>  int igc_open(struct net_device *netdev);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 7964bbedb16c..59c00acfa0ed 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4948,6 +4948,47 @@ static int igc_sw_init(struct igc_adapter *adapter)
>  	return 0;
>  }
>  
> +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> +			struct napi_struct *napi)
> +{
> +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
> +		netif_queue_set_napi(adapter->netdev, q_idx,
> +				     NETDEV_QUEUE_TYPE_RX, napi);
> +		netif_queue_set_napi(adapter->netdev, q_idx,
> +				     NETDEV_QUEUE_TYPE_TX, napi);
> +	} else {
> +		if (q_idx < adapter->num_rx_queues) {
> +			netif_queue_set_napi(adapter->netdev, q_idx,
> +					     NETDEV_QUEUE_TYPE_RX, napi);
> +		} else {
> +			q_idx -= adapter->num_rx_queues;
> +			netif_queue_set_napi(adapter->netdev, q_idx,
> +					     NETDEV_QUEUE_TYPE_TX, napi);
> +		}
> +	}
> +}
> +
> +void igc_unset_queue_napi(struct igc_adapter *adapter, int q_idx)
> +{
> +	struct net_device *netdev = adapter->netdev;
> +
> +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
> +		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
> +				     NULL);
> +		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX,
> +				     NULL);
> +	} else {
> +		if (q_idx < adapter->num_rx_queues) {
> +			netif_queue_set_napi(adapter->netdev, q_idx,
> +					     NETDEV_QUEUE_TYPE_RX, NULL);
> +		} else {
> +			q_idx -= adapter->num_rx_queues;
> +			netif_queue_set_napi(adapter->netdev, q_idx,
> +					     NETDEV_QUEUE_TYPE_TX, NULL);
> +		}
> +	}
> +}

It seems that igc_unset_queue_napi() is igc_set_queue_napi(x, y, NULL),
so I would suggest either implementing "unset" in terms of "set", or
using igc_set_queue_napi(x, y, NULL) directly in the "unlink" case (I
have a slight preference for the second option).

> +
>  /**
>   * igc_up - Open the interface and prepare it to handle traffic
>   * @adapter: board private structure
> @@ -4955,6 +4996,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
>  void igc_up(struct igc_adapter *adapter)
>  {
>  	struct igc_hw *hw = &adapter->hw;
> +	struct napi_struct *napi;
>  	int i = 0;
>  
>  	/* hardware has been reset, we need to reload some things */
> @@ -4962,8 +5004,11 @@ void igc_up(struct igc_adapter *adapter)
>  
>  	clear_bit(__IGC_DOWN, &adapter->state);
>  
> -	for (i = 0; i < adapter->num_q_vectors; i++)
> -		napi_enable(&adapter->q_vector[i]->napi);
> +	for (i = 0; i < adapter->num_q_vectors; i++) {
> +		napi = &adapter->q_vector[i]->napi;
> +		napi_enable(napi);
> +		igc_set_queue_napi(adapter, i, napi);
> +	}
>  
>  	if (adapter->msix_entries)
>  		igc_configure_msix(adapter);
> @@ -5192,6 +5237,7 @@ void igc_down(struct igc_adapter *adapter)
>  	for (i = 0; i < adapter->num_q_vectors; i++) {
>  		if (adapter->q_vector[i]) {
>  			napi_synchronize(&adapter->q_vector[i]->napi);
> +			igc_unset_queue_napi(adapter, i);
>  			napi_disable(&adapter->q_vector[i]->napi);
>  		}
>  	}
> @@ -6021,6 +6067,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
>  	struct igc_adapter *adapter = netdev_priv(netdev);
>  	struct pci_dev *pdev = adapter->pdev;
>  	struct igc_hw *hw = &adapter->hw;
> +	struct napi_struct *napi;
>  	int err = 0;
>  	int i = 0;
>  
> @@ -6056,8 +6103,11 @@ static int __igc_open(struct net_device *netdev, bool resuming)
>  
>  	clear_bit(__IGC_DOWN, &adapter->state);
>  
> -	for (i = 0; i < adapter->num_q_vectors; i++)
> -		napi_enable(&adapter->q_vector[i]->napi);
> +	for (i = 0; i < adapter->num_q_vectors; i++) {
> +		napi = &adapter->q_vector[i]->napi;
> +		napi_enable(napi);
> +		igc_set_queue_napi(adapter, i, napi);
> +	}
>  
>  	/* Clear any pending interrupts. */
>  	rd32(IGC_ICR);
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index e27af72aada8..886f04b8c394 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -84,6 +84,7 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
>  		napi_disable(napi);
>  	}
>  
> +	igc_unset_queue_napi(adapter, queue_id);
>  	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
>  	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
>  
> @@ -133,6 +134,7 @@ static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
>  	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
>  	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
>  	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> +	igc_set_queue_napi(adapter, queue_id, napi);
>  
>  	if (needs_reset) {
>  		napi_enable(napi);
> -- 
> 2.25.1
>


Cheers,
-- 
Vinicius

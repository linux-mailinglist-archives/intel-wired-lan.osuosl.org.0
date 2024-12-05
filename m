Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B669E4B3B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 01:38:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0285A4079D;
	Thu,  5 Dec 2024 00:38:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q4VAUXpLYwGS; Thu,  5 Dec 2024 00:38:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7552C4079B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733359093;
	bh=5uAFtQOQ4wI+u493i9WWzuDC+rdqkXpVIozUQpa72R8=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6/NIGKULh2SVqXaw24Q5XCufZ8TfUvXTMMnTwMBkDoUXVWG3QRD0tEISPP5CKsJu6
	 YO8wobhU3YtWCuZjhgqmSCeaihNK17AssanWw72fWUKfxZnOhRsE8mce4iSr7usnPT
	 Fnjna6cIk3iYFDQzlzF7TZvLKN10gi5qLYuUJfGHd35rkEG/J4oOWOkq/qgDUrkqql
	 BZpo66CQVJYBMh7OF9K4POooCGYkvS0HDPeraQMwcRhNeLOsXM7QgRbEfa9UhO0SxK
	 MyNXRj9nB0RxVMsqyINJDZABAYqpyc0FZFUEp3Ae3jv+tWuJLV+rm+lJW66mUZvQ+4
	 VOxc+6z1Jz9Qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7552C4079B;
	Thu,  5 Dec 2024 00:38:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E49A5AE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 00:38:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D031B4076C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 00:38:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id shCrb3iK2nd2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 00:38:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8630640796
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8630640796
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8630640796
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 00:38:10 +0000 (UTC)
X-CSE-ConnectionGUID: IZg0uf4aQiurH5CQacYyJg==
X-CSE-MsgGUID: PxeHS0O0SKCJJ/Am06WrPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33566521"
X-IronPort-AV: E=Sophos;i="6.12,208,1728975600"; d="scan'208";a="33566521"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 16:38:09 -0800
X-CSE-ConnectionGUID: bgfxqTM4QCGuyUxOLRDMHw==
X-CSE-MsgGUID: caqkOxw8TQ2sQqysq2/IHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,208,1728975600"; d="scan'208";a="99003015"
Received: from dgramcko-desk.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.223.250])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 16:38:08 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "David S .
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
In-Reply-To: <20241204120233.3148482-1-yoong.siang.song@intel.com>
References: <20241204120233.3148482-1-yoong.siang.song@intel.com>
Date: Wed, 04 Dec 2024 16:38:07 -0800
Message-ID: <87wmgfvua8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733359091; x=1764895091;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=10K0kt3qulMGZi30OdMQv6XXrGRmT0E1cUH//lIKnVY=;
 b=KROQWjd6hgWmwG1Y35m1HUVMwgVQR88DUhbZv3u4EPLiWiMTrFcB8GNj
 52KfhOJRJHNdOoNqmpSXKu6s5xul8Ye6wO4sAPXT8eK2MmKoAMrHZLc7S
 ML5w6ryyhvrx0FM7eYTC+/STdH0Om7xm8k1xfXuuY6NQuyQ9pBH4naijA
 7N9x5WkV3N/qS7YsjGbf3Uzf8yIeedxjYIO7xkwNOyWZx3xk7pNs1GByr
 X6IvONHO99jwwgEihFcOUCiE/hNw3UDdeFsXntZ2Omc3gMqmfQ+rOEJOr
 ZBQAWY8GZH01gIzt8a8LM+DEGdSotfLyINO9S1R8kyhmNyJYxA+QvHrOo
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KROQWjd6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] igc: Improve
 XDP_SETUP_PROG process
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

Song Yoong Siang <yoong.siang.song@intel.com> writes:

> Improve XDP_SETUP_PROG process by avoiding unnecessary link down/up event
> and hardware device reset.
>

Some examples of problems that these hardware resets are causing would
be good.

> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---

The duplication of code doesn't look that good. Initialization is
tricky, it seems to make it easy to update one place and forget to
update the other.

A couple of ideas:
 - separate the code into functions that can be used from the "usual"
 igc_open()/igc_close() flow;
 - it seems that igc_close()/igc_open() are too big a hammer for
 installing a new XDP program: what do we really need? (my mental model
 is: 1. stop new traffic from going into any queue; 2. wait for any
 packets "in progress"; 3. install the program; 4. resume operations;
 what else?)

>  drivers/net/ethernet/intel/igc/igc.h      |   2 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 138 ++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |   4 +-
>  3 files changed, 142 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index eac0f966e0e4..b1e46fcaae1a 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -341,6 +341,8 @@ void igc_up(struct igc_adapter *adapter);
>  void igc_down(struct igc_adapter *adapter);
>  int igc_open(struct net_device *netdev);
>  int igc_close(struct net_device *netdev);
> +void igc_xdp_open(struct net_device *netdev);
> +void igc_xdp_close(struct net_device *netdev);
>  int igc_setup_tx_resources(struct igc_ring *ring);
>  int igc_setup_rx_resources(struct igc_ring *ring);
>  void igc_free_tx_resources(struct igc_ring *ring);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 27872bdea9bd..098529a80b88 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6145,6 +6145,144 @@ int igc_close(struct net_device *netdev)
>  	return 0;
>  }
>  
> +void igc_xdp_open(struct net_device *netdev)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct pci_dev *pdev = adapter->pdev;
> +	struct igc_hw *hw = &adapter->hw;
> +	int err = 0;
> +	int i = 0;
> +
> +	/* disallow open during test */
> +	if (test_bit(__IGC_TESTING, &adapter->state))
> +		return;
> +
> +	pm_runtime_get_sync(&pdev->dev);
> +
> +	igc_ptp_reset(adapter);
> +
> +	/* allocate transmit descriptors */
> +	err = igc_setup_all_tx_resources(adapter);
> +	if (err)
> +		goto err_setup_tx;
> +
> +	/* allocate receive descriptors */
> +	err = igc_setup_all_rx_resources(adapter);
> +	if (err)
> +		goto err_setup_rx;
> +
> +	igc_setup_tctl(adapter);
> +	igc_setup_rctl(adapter);
> +	igc_configure_tx(adapter);
> +	igc_configure_rx(adapter);
> +	igc_rx_fifo_flush_base(&adapter->hw);
> +
> +	/* call igc_desc_unused which always leaves
> +	 * at least 1 descriptor unused to make sure
> +	 * next_to_use != next_to_clean
> +	 */
> +	for (i = 0; i < adapter->num_rx_queues; i++) {
> +		struct igc_ring *ring = adapter->rx_ring[i];
> +
> +		if (ring->xsk_pool)
> +			igc_alloc_rx_buffers_zc(ring, igc_desc_unused(ring));
> +		else
> +			igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
> +	}
> +
> +	err = igc_request_irq(adapter);
> +	if (err)
> +		goto err_req_irq;
> +
> +	clear_bit(__IGC_DOWN, &adapter->state);
> +
> +	for (i = 0; i < adapter->num_q_vectors; i++)
> +		napi_enable(&adapter->q_vector[i]->napi);
> +
> +	/* Clear any pending interrupts. */
> +	rd32(IGC_ICR);
> +	igc_irq_enable(adapter);
> +
> +	pm_runtime_put(&pdev->dev);
> +
> +	netif_tx_start_all_queues(netdev);
> +	netif_carrier_on(netdev);
> +
> +	return;
> +
> +err_req_irq:
> +	igc_release_hw_control(adapter);
> +	igc_power_down_phy_copper_base(&adapter->hw);
> +	igc_free_all_rx_resources(adapter);
> +err_setup_rx:
> +	igc_free_all_tx_resources(adapter);
> +err_setup_tx:
> +	igc_reset(adapter);
> +	pm_runtime_put(&pdev->dev);
> +}
> +
> +void igc_xdp_close(struct net_device *netdev)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct pci_dev *pdev = adapter->pdev;
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 tctl, rctl;
> +	int i = 0;
> +
> +	WARN_ON(test_bit(__IGC_RESETTING, &adapter->state));
> +
> +	pm_runtime_get_sync(&pdev->dev);
> +
> +	set_bit(__IGC_DOWN, &adapter->state);
> +
> +	igc_ptp_suspend(adapter);
> +
> +	if (pci_device_is_present(pdev)) {
> +		/* disable receives in the hardware */
> +		rctl = rd32(IGC_RCTL);
> +		wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
> +		/* flush and sleep below */
> +	}
> +	/* set trans_start so we don't get spurious watchdogs during reset */
> +	netif_trans_update(netdev);
> +
> +	netif_carrier_off(netdev);
> +	netif_tx_stop_all_queues(netdev);
> +
> +	if (pci_device_is_present(pdev)) {
> +		/* disable transmits in the hardware */
> +		tctl = rd32(IGC_TCTL);
> +		tctl &= ~IGC_TCTL_EN;
> +		wr32(IGC_TCTL, tctl);
> +		/* flush both disables and wait for them to finish */
> +		wrfl();
> +		usleep_range(10000, 20000);
> +
> +		igc_irq_disable(adapter);
> +	}
> +
> +	for (i = 0; i < adapter->num_q_vectors; i++) {
> +		if (adapter->q_vector[i]) {
> +			napi_synchronize(&adapter->q_vector[i]->napi);
> +			napi_disable(&adapter->q_vector[i]->napi);
> +		}
> +	}
> +
> +	del_timer_sync(&adapter->watchdog_timer);
> +	del_timer_sync(&adapter->phy_info_timer);
> +
> +	igc_disable_all_tx_rings_hw(adapter);
> +	igc_clean_all_tx_rings(adapter);
> +	igc_clean_all_rx_rings(adapter);
> +
> +	igc_free_irq(adapter);
> +
> +	igc_free_all_tx_resources(adapter);
> +	igc_free_all_rx_resources(adapter);
> +
> +	pm_runtime_put_sync(&pdev->dev);
> +}
> +
>  /**
>   * igc_ioctl - Access the hwtstamp interface
>   * @netdev: network interface device structure
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index 869815f48ac1..f1d6ab56ab54 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -25,7 +25,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
>  
>  	need_update = !!adapter->xdp_prog != !!prog;
>  	if (if_running && need_update)
> -		igc_close(dev);
> +		igc_xdp_close(dev);
>  
>  	old_prog = xchg(&adapter->xdp_prog, prog);
>  	if (old_prog)
> @@ -37,7 +37,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
>  		xdp_features_clear_redirect_target(dev);
>  
>  	if (if_running && need_update)
> -		igc_open(dev);
> +		igc_xdp_open(dev);
>  
>  	return 0;
>  }
> -- 
> 2.34.1
>
>

Cheers,
-- 
Vinicius

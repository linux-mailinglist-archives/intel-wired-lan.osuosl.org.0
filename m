Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCbXG7qZjGkhrgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 16:01:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A285125609
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 16:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEB158377F;
	Wed, 11 Feb 2026 15:00:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TpdTgVvoOKqc; Wed, 11 Feb 2026 15:00:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22E3183794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770822059;
	bh=y4AafEYEcM4PAB/Md+36/CZVTrRK4dIfPCHm6762zpM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MVyQ2ibhE89sycMR8IepgggNAh6AO/jvKekp4VLREgBsV5ws8t9i4W8qQgjFyJvoc
	 VKTQ1YdDCL1LcSDl3swZidmsdHtaTl07O+noGZDatPpkI5HuOw98Rqv+V9yJkxOFVG
	 YWjlQ2S85mpFNgbovMpblLaNbGMImyDBQiaF3qYhL5VInIQYV5M0vX9gt0TUAS8YPD
	 USZ9FSCjsmMzb4If75CKQu7fH8fojK151RS9rC0bN9QHdcANd+DD31JhBk9ayTSu9k
	 fgDSZTRJlsC9wOilhzYcjSnYddrWKmp6iQ4AVV4+cU57eydEkj7Prlu+Vk+XeCaNvX
	 s472R2sDka5RQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22E3183794;
	Wed, 11 Feb 2026 15:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 67C39BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 15:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5591140DB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 15:00:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k541N9AtkjKT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 15:00:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFBE640DAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFBE640DAA
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFBE640DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 15:00:54 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 319014C1A25A02;
 Wed, 11 Feb 2026 16:00:18 +0100 (CET)
Message-ID: <589746b5-0519-47d9-b583-89f4d81573a7@molgen.mpg.de>
Date: Wed, 11 Feb 2026 16:00:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Harshank Matkar <harshankmatkar1304@outlook.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 tony.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com, linux-kernel@vger.kernel.org,
 Bjorn Helgaas <helgaas@kernel.org>, linux-pci@vger.kernel.org
References: <20260210203332.23200-1-harshankmatkar1304@outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260210203332.23200-1-harshankmatkar1304@outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] igc: Add PCIe link recovery for
 I225/I226
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[outlook.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	FORGED_RECIPIENTS(0.00)[m:harshankmatkar1304@outlook.com,m:netdev@vger.kernel.org,m:tony.nguyen@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:helgaas@kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RSPAMD_URIBL_FAIL(0.00)[osuosl.org:query timed out];
	RCVD_COUNT_SEVEN(0.00)[8];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ASN_FAIL(0.00)[8.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,outlook.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,molgen.mpg.de:mid]
X-Rspamd-Queue-Id: 5A285125609
X-Rspamd-Action: no action

[Cc: +Linux PCI folks]


Dear Harshank,


Thank you for your patch. Just a note to please version your patches. 
`git format-patch` has the switch `--reroll-count` or `-v` to do this.

Am 10.02.26 um 21:34 schrieb Harshank Matkar:
> From: Harshank Matkar <harshankmatkar1304@outlook.com>
> 
> When ASPM L0s transitions occur on Intel I225/I226 controllers,
> transient PCIe link instability can cause register read failures
> (0xFFFFFFFF responses). Implement a multi-layer recovery strategy:
> 
> 1. Immediate retries: 3 attempts with 100-200μs delays

Why were these delays chosen?

> 2. Link retraining: Trigger PCIe link retraining via capabilities
> 3. Device detachment: Only as last resort after max attempts
> 
> The recovery mechanism includes rate limiting, maximum attempt
> tracking, and device presence validation to prevent false detaches
> on transient ASPM glitches while maintaining safety through
> bounded retry limits.

It’d be great if you added the test setup and case.

> Signed-off-by: Harshank Matkar <harshankmatkar1304@outlook.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |   6 +-
>   drivers/net/ethernet/intel/igc/igc_main.c | 155 ++++++++++++++++++++--
>   2 files changed, 149 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index a427f05814c1..2ef488b279b9 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -346,6 +346,10 @@ struct igc_adapter {
>   	struct mutex led_mutex;
>   	struct igc_led_classdev *leds;
>   	bool leds_available;
> +
> +	/* PCIe recovery tracking */
> +	unsigned int pcie_recovery_attempts;
> +	unsigned long last_recovery_time;
>   };
>   
>   void igc_up(struct igc_adapter *adapter);
> @@ -422,7 +426,7 @@ enum igc_rss_type_num {
>   	IGC_RSS_TYPE_MAX		= 10,
>   };
>   #define IGC_RSS_TYPE_MAX_TABLE		16
> -#define IGC_RSS_TYPE_MASK		GENMASK(3,0) /* 4-bits (3:0) = mask 0x0F */
> +#define IGC_RSS_TYPE_MASK		GENMASK(3, 0) /* 4-bits (3:0) = mask 0x0F */
>   
>   /* igc_rss_type - Rx descriptor RSS type field */
>   static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 89a321a344d2..f0daa3edbb79 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1411,9 +1411,8 @@ static int igc_tx_map(struct igc_ring *tx_ring,
>   	/* Make sure there is space in the ring for the next send. */
>   	igc_maybe_stop_tx(tx_ring, DESC_NEEDED);
>   
> -	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more()) {
> +	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
>   		writel(i, tx_ring->tail);
> -	}
>   
>   	return 0;
>   dma_error:
> @@ -1613,8 +1612,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>   	 * otherwise try next time
>   	 */
>   	for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
> -		count += TXD_USE_COUNT(skb_frag_size(
> -						&skb_shinfo(skb)->frags[f]));
> +		count += TXD_USE_COUNT(skb_frag_size(&skb_shinfo(skb)->frags[f]));

Unrelated.

>   
>   	if (igc_maybe_stop_tx(tx_ring, count + 5)) {
>   		/* this is a hard error */
> @@ -2524,7 +2522,6 @@ static int __igc_xdp_run_prog(struct igc_adapter *adapter,
>   		if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
>   			goto out_failure;
>   		return IGC_XDP_REDIRECT;
> -		break;
>   	default:
>   		bpf_warn_invalid_xdp_action(adapter->netdev, prog, act);
>   		fallthrough;
> @@ -2791,7 +2788,7 @@ static struct igc_xdp_buff *xsk_buff_to_igc_ctx(struct xdp_buff *xdp)
>   	 * igc_xdp_buff shares its layout with xdp_buff_xsk and private
>   	 * igc_xdp_buff fields fall into xdp_buff_xsk->cb
>   	 */
> -       return (struct igc_xdp_buff *)xdp;
> +	return (struct igc_xdp_buff *)xdp;

Correct, but should be a separate patch.

>   }
>   
>   static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
> @@ -3895,9 +3892,8 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
>   {
>   	int err;
>   
> -	if (rule->flex) {
> +	if (rule->flex)
>   		return igc_add_flex_filter(adapter, rule);
> -	}

Correct, but unrelated and I think cosmetic changes are not wanted.

>   
>   	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
>   		err = igc_add_etype_filter(adapter, rule->filter.etype,
> @@ -6984,11 +6980,112 @@ static const struct net_device_ops igc_netdev_ops = {
>   	.ndo_hwtstamp_set	= igc_ptp_hwtstamp_set,
>   };
>   
> +#define IGC_REGISTER_READ_RETRIES	3
> +#define IGC_PCIE_RECOVERY_MAX_ATTEMPTS	10
> +#define IGC_PCIE_RECOVERY_INTERVAL_MS	1000
> +
> +/**
> + * igc_pcie_link_recover - Attempt PCIe link recovery
> + * @adapter: board private structure
> + *
> + * Attempts to recover a failed PCIe link by triggering a link retrain.
> + * Rate-limited to 1 attempt per second, maximum 10 attempts.
> + *
> + * Returns true if recovery was successful, false otherwise.
> + */
> +static bool igc_pcie_link_recover(struct igc_adapter *adapter)
> +{
> +	struct pci_dev *pdev = adapter->pdev;
> +	unsigned long now = jiffies;
> +	u16 lnksta, lnkctl;
> +	int ret;
> +	int i;
> +
> +	/* Rate limiting: no more than 1 attempt per second */
> +	if (time_before(now, adapter->last_recovery_time +
> +			msecs_to_jiffies(IGC_PCIE_RECOVERY_INTERVAL_MS)))
> +		return false;
> +
> +	/* Maximum attempt limit */
> +	if (adapter->pcie_recovery_attempts >= IGC_PCIE_RECOVERY_MAX_ATTEMPTS) {
> +		netdev_err(adapter->netdev,
> +			   "Exceeded maximum PCIe recovery attempts (%d)\n",
> +			   IGC_PCIE_RECOVERY_MAX_ATTEMPTS);
> +		return false;
> +	}
> +
> +	adapter->last_recovery_time = now;
> +	adapter->pcie_recovery_attempts++;
> +
> +	netdev_warn(adapter->netdev,
> +		    "Attempting PCIe link recovery (attempt %d/%d)\n",
> +		    adapter->pcie_recovery_attempts,
> +		    IGC_PCIE_RECOVERY_MAX_ATTEMPTS);
> +
> +	/* Check if device is still present on the bus */
> +	if (!pci_device_is_present(pdev)) {
> +		netdev_err(adapter->netdev, "Device not present on PCIe bus\n");
> +		return false;
> +	}
> +
> +	/* Check link status */
> +	ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnksta);
> +	if (ret) {
> +		netdev_err(adapter->netdev, "Failed to read link status\n");
> +		return false;
> +	}
> +
> +	/* Trigger link retrain if link appears down */
> +	if (!(lnksta & PCI_EXP_LNKSTA_DLLLA)) {
> +		netdev_info(adapter->netdev,
> +			    "Link down, attempting retrain\n");
> +
> +		/* Read link control register */
> +		ret = pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &lnkctl);
> +		if (ret == 0) {
> +			/* Trigger retrain by setting RL bit */
> +			pcie_capability_write_word(pdev, PCI_EXP_LNKCTL,
> +						   lnkctl | PCI_EXP_LNKCTL_RL);
> +
> +			/* Wait for retrain to complete (up to 1 second) */
> +			for (i = 0; i < 100; i++) {
> +				usleep_range(10000, 20000);
> +				ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA,
> +								&lnksta);
> +				if (ret == 0 && (lnksta & PCI_EXP_LNKSTA_DLLLA) &&
> +				    !(lnksta & PCI_EXP_LNKSTA_LT)) {
> +					netdev_info(adapter->netdev,
> +						    "PCIe link recovery successful\n");
> +					return true;
> +				}
> +			}
> +		}
> +	}
> +
> +	/* Give the link some additional time to recover on its own */
> +	msleep(100);

That’s quite a long delay. Is that according to some standard?

> +
> +	/* Check if device is responding now */
> +	if (pci_device_is_present(pdev)) {
> +		ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnksta);
> +		if (ret == 0 && (lnksta & PCI_EXP_LNKSTA_DLLLA)) {
> +			netdev_info(adapter->netdev,
> +				    "PCIe link recovered after delay\n");
> +			return true;
> +		}
> +	}
> +
> +	netdev_warn(adapter->netdev, "PCIe link recovery failed\n");
> +	return false;
> +}
> +
>   u32 igc_rd32(struct igc_hw *hw, u32 reg)
>   {
>   	struct igc_adapter *igc = container_of(hw, struct igc_adapter, hw);
>   	u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
> +	struct net_device *netdev = igc->netdev;
>   	u32 value = 0;
> +	int retry;
>   
>   	if (IGC_REMOVED(hw_addr))
>   		return ~value;
> @@ -6997,13 +7094,49 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>   
>   	/* reads should not return all F's */
>   	if (!(~value) && (!reg || !(~readl(hw_addr)))) {
> -		struct net_device *netdev = igc->netdev;
> +		/* Layer 1: Immediate retries with short delays (100-200μs) */
> +		for (retry = 0; retry < IGC_REGISTER_READ_RETRIES; retry++) {
> +			usleep_range(100, 200);
> +			value = readl(&hw_addr[reg]);
> +
> +			/* If we got a valid read, return immediately */
> +			if (~value || (reg && ~readl(hw_addr))) {
> +				netdev_dbg(netdev,
> +					   "Register read recovered after %d retries\n",
> +					   retry + 1);
> +				return value;
> +			}
> +		}
> +
> +		/* Layer 2: Attempt full PCIe link recovery */
> +		netdev_warn(netdev,
> +			    "All immediate retries failed, attempting PCIe link recovery\n");
> +
> +		if (igc_pcie_link_recover(igc)) {
> +			/* Recovery succeeded, re-read the register */
> +			hw_addr = READ_ONCE(hw->hw_addr);
> +			if (hw_addr && !IGC_REMOVED(hw_addr)) {
> +				value = readl(&hw_addr[reg]);
> +
> +				/* Verify the read is valid */
> +				if (~value || (reg && ~readl(hw_addr))) {
> +					netdev_info(netdev,
> +						    "Register read successful after link recovery\n");
> +					return value;
> +				}
> +			}
> +		}
> +
> +		/* Layer 3: All recovery attempts failed, detach device */
> +		netdev_err(netdev,
> +			   "PCIe link lost after %d retries and recovery attempts, device now detached\n",
> +			   IGC_REGISTER_READ_RETRIES);
>   
>   		hw->hw_addr = NULL;
>   		netif_device_detach(netdev);
> -		netdev_err(netdev, "PCIe link lost, device now detached\n");
> +
>   		WARN(pci_device_is_present(igc->pdev),
> -		     "igc: Failed to read reg 0x%x!\n", reg);
> +		     "igc: Failed to read reg 0x%x after all recovery attempts!\n", reg);
>   	}
>   
>   	return value;

The idea looks good, but maybe there is something in Linux’ PCIe core to 
achieve something similar?


Kind regards,

Paul

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FE67F7836
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 16:50:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 104764218B;
	Fri, 24 Nov 2023 15:50:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 104764218B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700841044;
	bh=n/FeIIFTuN1b/UKTN0xPqdazFIqJwdhctYBxyMvdRtA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pTwJfnYoLY6PCoe0KclE5NJgKNlbTEOARK1bXhwRZsO/hXGkuZZeWTHFA0y5x6Psw
	 dIv742e+a/hH/vsJzJb56ax28q5zx/qzGz62/C6BfBEAvNxIuxpRuQvivicGB3vug3
	 iFLb02rKohpUsZnVI02cRVoHnyf4lHJIJXGd+F6RfqzklpXdC7ehQf2JguJBcLS6No
	 6XAJpGVFuVoiyccHn/R28A+ImyZ6GJpAetpn1cvWqmWvopgerna+ypfXMSr8UZUg2+
	 /2yim+GEwtc5Cz6upZ4M7ONEdGF4gsXaJK7xe1Wkaz47xvRm+cwYydJYQN7EWNRjGa
	 KvQwGUcmxJRfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t9PLkXUqMhbn; Fri, 24 Nov 2023 15:50:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B96342174;
	Fri, 24 Nov 2023 15:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B96342174
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 674D61BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D33142158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D33142158
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gP69un45VGRp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 15:50:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E48A842166
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E48A842166
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="389592507"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="389592507"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 07:50:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="15659964"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 24 Nov 2023 07:50:17 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 24 Nov 2023 16:47:23 +0100
Message-ID: <20231124154732.1623518-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700841021; x=1732377021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n1LTuEL+LfqEu/wskQDFEm6BBXgasOkjOAlXZLLUlo4=;
 b=acIZXlyTd4tZVQ2N0YVY+VQPzS99E5wNRYPI1EijG/e/W1EQG0uI7YUo
 uhdFfat+9KAB4eJl2fwWPqYGhwbhsF0Gzeq49l0r9F9trh841o3UuDK60
 rLVskG0lni4dBkRpMs3onbHE1XSPOPWa4eGZNOHwCvaHTVuAVjhj6ShO9
 8szYRG9KbzmxOsxoZO63vTGABPcLGQ5jS6qmaOUjGrJKZur5rgRqpNucg
 W/lmh0rQ9XqRRVieo5zlBFhqhGSdq85TN5MuLz1Qi5Cf6GPOMldEIUc1g
 TifwhGA6sjorJ+glnb6/K54Vwc4Due7xCDeuQLZGcFVnC9dQQADArLCkX
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=acIZXlyT
Subject: [Intel-wired-lan] [PATCH net-next v5 05/14] iavf: kill "legacy-rx"
 for good
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ever since build_skb() became stable, the old way with allocating an skb
for storing the headers separately, which will be then copied manually,
was slower, less flexible, and thus obsolete.

* It had higher pressure on MM since it actually allocates new pages,
  which then get split and refcount-biased (NAPI page cache);
* It implies memcpy() of packet headers (40+ bytes per each frame);
* the actual header length was calculated via eth_get_headlen(), which
  invokes Flow Dissector and thus wastes a bunch of CPU cycles;
* XDP makes it even more weird since it requires headroom for long and
  also tailroom for some time (since mbuf landed). Take a look at the
  ice driver, which is built around work-arounds to make XDP work with
  it.

Even on some quite low-end hardware (not a common case for 100G NICs) it
was performing worse.
The only advantage "legacy-rx" had is that it didn't require any
reserved headroom and tailroom. But iavf didn't use this, as it always
splits pages into two halves of 2k, while that save would only be useful
when striding. And again, XDP effectively removes that sole pro.

There's a train of features to land in IAVF soon: Page Pool, XDP, XSk,
multi-buffer etc. Each new would require adding more and more Danse
Macabre for absolutely no reason, besides making hotpath less and less
effective.
Remove the "feature" with all the related code. This includes at least
one very hot branch (typically hit on each new frame), which was either
always-true or always-false at least for a complete NAPI bulk of 64
frames, the whole private flags cruft, and so on. Some stats:

Function: add/remove: 0/4 grow/shrink: 0/7 up/down: 0/-721 (-721)
RO Data: add/remove: 0/1 grow/shrink: 0/0 up/down: 0/-40 (-40)

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   2 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 141 ------------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  10 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  84 +----------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  27 +---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   3 +-
 6 files changed, 8 insertions(+), 259 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index e7ab89dc883a..64c94e9a6b2d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -287,7 +287,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_RESET_PENDING		BIT(4)
 #define IAVF_FLAG_RESET_NEEDED		BIT(5)
 #define IAVF_FLAG_WB_ON_ITR_CAPABLE		BIT(6)
-#define IAVF_FLAG_LEGACY_RX			BIT(15)
+/* BIT(15) is free, was IAVF_FLAG_LEGACY_RX */
 #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
 #define IAVF_FLAG_SETUP_NETDEV_FEATURES		BIT(18)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 6f236d1a6444..5fd41f0284a6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -239,29 +239,6 @@ static const struct iavf_stats iavf_gstrings_stats[] = {
 
 #define IAVF_QUEUE_STATS_LEN	ARRAY_SIZE(iavf_gstrings_queue_stats)
 
-/* For now we have one and only one private flag and it is only defined
- * when we have support for the SKIP_CPU_SYNC DMA attribute.  Instead
- * of leaving all this code sitting around empty we will strip it unless
- * our one private flag is actually available.
- */
-struct iavf_priv_flags {
-	char flag_string[ETH_GSTRING_LEN];
-	u32 flag;
-	bool read_only;
-};
-
-#define IAVF_PRIV_FLAG(_name, _flag, _read_only) { \
-	.flag_string = _name, \
-	.flag = _flag, \
-	.read_only = _read_only, \
-}
-
-static const struct iavf_priv_flags iavf_gstrings_priv_flags[] = {
-	IAVF_PRIV_FLAG("legacy-rx", IAVF_FLAG_LEGACY_RX, 0),
-};
-
-#define IAVF_PRIV_FLAGS_STR_LEN ARRAY_SIZE(iavf_gstrings_priv_flags)
-
 /**
  * iavf_get_link_ksettings - Get Link Speed and Duplex settings
  * @netdev: network interface device structure
@@ -341,8 +318,6 @@ static int iavf_get_sset_count(struct net_device *netdev, int sset)
 		return IAVF_STATS_LEN +
 			(IAVF_QUEUE_STATS_LEN * 2 *
 			 netdev->real_num_tx_queues);
-	else if (sset == ETH_SS_PRIV_FLAGS)
-		return IAVF_PRIV_FLAGS_STR_LEN;
 	else
 		return -EINVAL;
 }
@@ -384,22 +359,6 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
 	rcu_read_unlock();
 }
 
-/**
- * iavf_get_priv_flag_strings - Get private flag strings
- * @netdev: network interface device structure
- * @data: buffer for string data
- *
- * Builds the private flags string table
- **/
-static void iavf_get_priv_flag_strings(struct net_device *netdev, u8 *data)
-{
-	unsigned int i;
-
-	for (i = 0; i < IAVF_PRIV_FLAGS_STR_LEN; i++)
-		ethtool_sprintf(&data, "%s",
-				iavf_gstrings_priv_flags[i].flag_string);
-}
-
 /**
  * iavf_get_stat_strings - Get stat strings
  * @netdev: network interface device structure
@@ -438,108 +397,11 @@ static void iavf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
 	case ETH_SS_STATS:
 		iavf_get_stat_strings(netdev, data);
 		break;
-	case ETH_SS_PRIV_FLAGS:
-		iavf_get_priv_flag_strings(netdev, data);
-		break;
 	default:
 		break;
 	}
 }
 
-/**
- * iavf_get_priv_flags - report device private flags
- * @netdev: network interface device structure
- *
- * The get string set count and the string set should be matched for each
- * flag returned.  Add new strings for each flag to the iavf_gstrings_priv_flags
- * array.
- *
- * Returns a u32 bitmap of flags.
- **/
-static u32 iavf_get_priv_flags(struct net_device *netdev)
-{
-	struct iavf_adapter *adapter = netdev_priv(netdev);
-	u32 i, ret_flags = 0;
-
-	for (i = 0; i < IAVF_PRIV_FLAGS_STR_LEN; i++) {
-		const struct iavf_priv_flags *priv_flags;
-
-		priv_flags = &iavf_gstrings_priv_flags[i];
-
-		if (priv_flags->flag & adapter->flags)
-			ret_flags |= BIT(i);
-	}
-
-	return ret_flags;
-}
-
-/**
- * iavf_set_priv_flags - set private flags
- * @netdev: network interface device structure
- * @flags: bit flags to be set
- **/
-static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
-{
-	struct iavf_adapter *adapter = netdev_priv(netdev);
-	u32 orig_flags, new_flags, changed_flags;
-	int ret = 0;
-	u32 i;
-
-	orig_flags = READ_ONCE(adapter->flags);
-	new_flags = orig_flags;
-
-	for (i = 0; i < IAVF_PRIV_FLAGS_STR_LEN; i++) {
-		const struct iavf_priv_flags *priv_flags;
-
-		priv_flags = &iavf_gstrings_priv_flags[i];
-
-		if (flags & BIT(i))
-			new_flags |= priv_flags->flag;
-		else
-			new_flags &= ~(priv_flags->flag);
-
-		if (priv_flags->read_only &&
-		    ((orig_flags ^ new_flags) & ~BIT(i)))
-			return -EOPNOTSUPP;
-	}
-
-	/* Before we finalize any flag changes, any checks which we need to
-	 * perform to determine if the new flags will be supported should go
-	 * here...
-	 */
-
-	/* Compare and exchange the new flags into place. If we failed, that
-	 * is if cmpxchg returns anything but the old value, this means
-	 * something else must have modified the flags variable since we
-	 * copied it. We'll just punt with an error and log something in the
-	 * message buffer.
-	 */
-	if (cmpxchg(&adapter->flags, orig_flags, new_flags) != orig_flags) {
-		dev_warn(&adapter->pdev->dev,
-			 "Unable to update adapter->flags as it was modified by another thread...\n");
-		return -EAGAIN;
-	}
-
-	changed_flags = orig_flags ^ new_flags;
-
-	/* Process any additional changes needed as a result of flag changes.
-	 * The changed_flags value reflects the list of bits that were changed
-	 * in the code above.
-	 */
-
-	/* issue a reset to force legacy-rx change to take effect */
-	if (changed_flags & IAVF_FLAG_LEGACY_RX) {
-		if (netif_running(netdev)) {
-			iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
-			ret = iavf_wait_for_reset(adapter);
-			if (ret)
-				netdev_warn(netdev, "Changing private flags timeout or interrupted waiting for reset");
-		}
-	}
-
-	return ret;
-}
-
 /**
  * iavf_get_msglevel - Get debug message level
  * @netdev: network interface device structure
@@ -585,7 +447,6 @@ static void iavf_get_drvinfo(struct net_device *netdev,
 	strscpy(drvinfo->driver, iavf_driver_name, 32);
 	strscpy(drvinfo->fw_version, "N/A", 4);
 	strscpy(drvinfo->bus_info, pci_name(adapter->pdev), 32);
-	drvinfo->n_priv_flags = IAVF_PRIV_FLAGS_STR_LEN;
 }
 
 /**
@@ -1977,8 +1838,6 @@ static const struct ethtool_ops iavf_ethtool_ops = {
 	.get_strings		= iavf_get_strings,
 	.get_ethtool_stats	= iavf_get_ethtool_stats,
 	.get_sset_count		= iavf_get_sset_count,
-	.get_priv_flags		= iavf_get_priv_flags,
-	.set_priv_flags		= iavf_set_priv_flags,
 	.get_msglevel		= iavf_get_msglevel,
 	.set_msglevel		= iavf_set_msglevel,
 	.get_coalesce		= iavf_get_coalesce,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ef9ae406d285..e99f6bdb4b4a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -740,9 +740,7 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
 	struct iavf_hw *hw = &adapter->hw;
 	int i;
 
-	/* Legacy Rx will always default to a 2048 buffer size. */
-#if (PAGE_SIZE < 8192)
-	if (!(adapter->flags & IAVF_FLAG_LEGACY_RX)) {
+	if (PAGE_SIZE < 8192) {
 		struct net_device *netdev = adapter->netdev;
 
 		/* For jumbo frames on systems with 4K pages we have to use
@@ -759,16 +757,10 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
 		    (netdev->mtu <= ETH_DATA_LEN))
 			rx_buf_len = IAVF_RXBUFFER_1536 - NET_IP_ALIGN;
 	}
-#endif
 
 	for (i = 0; i < adapter->num_active_queues; i++) {
 		adapter->rx_rings[i].tail = hw->hw_addr + IAVF_QRX_TAIL1(i);
 		adapter->rx_rings[i].rx_buf_len = rx_buf_len;
-
-		if (adapter->flags & IAVF_FLAG_LEGACY_RX)
-			clear_ring_build_skb_enabled(&adapter->rx_rings[i]);
-		else
-			set_ring_build_skb_enabled(&adapter->rx_rings[i]);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index c610013bdcb0..27cea26cc53e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -823,17 +823,6 @@ static void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
 	writel(val, rx_ring->tail);
 }
 
-/**
- * iavf_rx_offset - Return expected offset into page to access data
- * @rx_ring: Ring we are requesting offset of
- *
- * Returns the offset value for ring into the data buffer.
- */
-static unsigned int iavf_rx_offset(struct iavf_ring *rx_ring)
-{
-	return ring_uses_build_skb(rx_ring) ? IAVF_SKB_PAD : 0;
-}
-
 /**
  * iavf_alloc_mapped_page - recycle or make a new page
  * @rx_ring: ring to use
@@ -878,7 +867,7 @@ static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
 
 	bi->dma = dma;
 	bi->page = page;
-	bi->page_offset = iavf_rx_offset(rx_ring);
+	bi->page_offset = IAVF_SKB_PAD;
 
 	/* initialize pagecnt_bias to 1 representing we fully own page */
 	bi->pagecnt_bias = 1;
@@ -1219,7 +1208,7 @@ static void iavf_add_rx_frag(struct iavf_ring *rx_ring,
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
 #else
-	unsigned int truesize = SKB_DATA_ALIGN(size + iavf_rx_offset(rx_ring));
+	unsigned int truesize = SKB_DATA_ALIGN(size + IAVF_SKB_PAD);
 #endif
 
 	if (!size)
@@ -1267,71 +1256,6 @@ static struct iavf_rx_buffer *iavf_get_rx_buffer(struct iavf_ring *rx_ring,
 	return rx_buffer;
 }
 
-/**
- * iavf_construct_skb - Allocate skb and populate it
- * @rx_ring: rx descriptor ring to transact packets on
- * @rx_buffer: rx buffer to pull data from
- * @size: size of buffer to add to skb
- *
- * This function allocates an skb.  It then populates it with the page
- * data from the current receive descriptor, taking care to set up the
- * skb correctly.
- */
-static struct sk_buff *iavf_construct_skb(struct iavf_ring *rx_ring,
-					  struct iavf_rx_buffer *rx_buffer,
-					  unsigned int size)
-{
-	void *va;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(size);
-#endif
-	unsigned int headlen;
-	struct sk_buff *skb;
-
-	if (!rx_buffer)
-		return NULL;
-	/* prefetch first cache line of first page */
-	va = page_address(rx_buffer->page) + rx_buffer->page_offset;
-	net_prefetch(va);
-
-	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
-			       IAVF_RX_HDR_SIZE,
-			       GFP_ATOMIC | __GFP_NOWARN);
-	if (unlikely(!skb))
-		return NULL;
-
-	/* Determine available headroom for copy */
-	headlen = size;
-	if (headlen > IAVF_RX_HDR_SIZE)
-		headlen = eth_get_headlen(skb->dev, va, IAVF_RX_HDR_SIZE);
-
-	/* align pull length to size of long to optimize memcpy performance */
-	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
-
-	/* update all of the pointers */
-	size -= headlen;
-	if (size) {
-		skb_add_rx_frag(skb, 0, rx_buffer->page,
-				rx_buffer->page_offset + headlen,
-				size, truesize);
-
-		/* buffer is used by skb, update page_offset */
-#if (PAGE_SIZE < 8192)
-		rx_buffer->page_offset ^= truesize;
-#else
-		rx_buffer->page_offset += truesize;
-#endif
-	} else {
-		/* buffer is unused, reset bias back to rx_buffer */
-		rx_buffer->pagecnt_bias++;
-	}
-
-	return skb;
-}
-
 /**
  * iavf_build_skb - Build skb around an existing buffer
  * @rx_ring: Rx descriptor ring to transact packets on
@@ -1504,10 +1428,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		/* retrieve a buffer from the ring */
 		if (skb)
 			iavf_add_rx_frag(rx_ring, rx_buffer, skb, size);
-		else if (ring_uses_build_skb(rx_ring))
-			skb = iavf_build_skb(rx_ring, rx_buffer, size);
 		else
-			skb = iavf_construct_skb(rx_ring, rx_buffer, size);
+			skb = iavf_build_skb(rx_ring, rx_buffer, size);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 7e6ee32d19b6..4b412f7662e4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -82,20 +82,11 @@ enum iavf_dyn_idx_t {
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
 /* Supported Rx Buffer Sizes (a multiple of 128) */
-#define IAVF_RXBUFFER_256   256
 #define IAVF_RXBUFFER_1536  1536  /* 128B aligned standard Ethernet frame */
 #define IAVF_RXBUFFER_2048  2048
 #define IAVF_RXBUFFER_3072  3072  /* Used for large frames w/ padding */
 #define IAVF_MAX_RXBUFFER   9728  /* largest size for single descriptor */
 
-/* NOTE: netdev_alloc_skb reserves up to 64 bytes, NET_IP_ALIGN means we
- * reserve 2 more, and skb_shared_info adds an additional 384 bytes more,
- * this adds up to 512 bytes of extra data meaning the smallest allocation
- * we could have is 1K.
- * i.e. RXBUFFER_256 --> 960 byte skb (size-1024 slab)
- * i.e. RXBUFFER_512 --> 1216 byte skb (size-2048 slab)
- */
-#define IAVF_RX_HDR_SIZE IAVF_RXBUFFER_256
 #define IAVF_PACKET_HDR_PAD (ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
 #define iavf_rx_desc iavf_32byte_rx_desc
 
@@ -362,7 +353,8 @@ struct iavf_ring {
 
 	u16 flags;
 #define IAVF_TXR_FLAGS_WB_ON_ITR		BIT(0)
-#define IAVF_RXR_FLAGS_BUILD_SKB_ENABLED	BIT(1)
+/* BIT(1) is free, was IAVF_RXR_FLAGS_BUILD_SKB_ENABLED */
+/* BIT(2) is free */
 #define IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1	BIT(3)
 #define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
 #define IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2	BIT(5)
@@ -393,21 +385,6 @@ struct iavf_ring {
 					 */
 } ____cacheline_internodealigned_in_smp;
 
-static inline bool ring_uses_build_skb(struct iavf_ring *ring)
-{
-	return !!(ring->flags & IAVF_RXR_FLAGS_BUILD_SKB_ENABLED);
-}
-
-static inline void set_ring_build_skb_enabled(struct iavf_ring *ring)
-{
-	ring->flags |= IAVF_RXR_FLAGS_BUILD_SKB_ENABLED;
-}
-
-static inline void clear_ring_build_skb_enabled(struct iavf_ring *ring)
-{
-	ring->flags &= ~IAVF_RXR_FLAGS_BUILD_SKB_ENABLED;
-}
-
 #define IAVF_ITR_ADAPTIVE_MIN_INC	0x0002
 #define IAVF_ITR_ADAPTIVE_MIN_USECS	0x0002
 #define IAVF_ITR_ADAPTIVE_MAX_USECS	0x007e
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 64c4443dbef9..37d0e4313130 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -289,8 +289,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		return;
 
 	/* Limit maximum frame size when jumbo frames is not enabled */
-	if (!(adapter->flags & IAVF_FLAG_LEGACY_RX) &&
-	    (adapter->netdev->mtu <= ETH_DATA_LEN))
+	if (adapter->netdev->mtu <= ETH_DATA_LEN)
 		max_frame = IAVF_RXBUFFER_1536 - NET_IP_ALIGN;
 
 	vqci->vsi_id = adapter->vsi_res->vsi_id;
-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

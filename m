Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 122868A98AA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:36:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49415416A8;
	Thu, 18 Apr 2024 11:36:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dnyZBg3SvtMe; Thu, 18 Apr 2024 11:36:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D15E5416B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713440210;
	bh=PjRY8woSK83Kp/jpnNgzGdUAreR8/3JFqn2RwXFlDdM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ypPje2Zn3KovXTkBwoNLvXP9wvf+0FjJuEaVagbxArfclm8O6EZk6mCoyqlb3xVc7
	 dM+HIfyUNDV3ldVZxDzslw5touvyT8ZO8dufm89BcugQcnR2f+9/65+BhITt3emGAo
	 6QrKs/dLBcBekY37JL/TOWTcaJ7NrfhguB2j+lWpKDDr98fEeEIjIF+sdMbHR5MXMl
	 1B7YLi+n+2CJ8jHuTYoAP78QymW8GU9xUA6s5l/dqCowsD4O7PJ1iUJ5rKpUVAXsLZ
	 q+JLz8qYVQjsakP6npofMQB5bruPrwj0hKSVTa33KpoJic0MoHoUXxLgd8JUm9Xoe+
	 i8RQwWi2yo36g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D15E5416B1;
	Thu, 18 Apr 2024 11:36:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D30301BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CCE8660BA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id codtDctfddRQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:36:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5877360BA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5877360BA4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5877360BA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:45 +0000 (UTC)
X-CSE-ConnectionGUID: AZdoD7beRKKWlHub3LDIfg==
X-CSE-MsgGUID: iIlkG235QYqDFwyfNlMHTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19587729"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19587729"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:36:44 -0700
X-CSE-ConnectionGUID: 1RaZyRvoQeSew33bAHBqFQ==
X-CSE-MsgGUID: V4soo/B8RE2+Ht3YpMa5iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27586101"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 18 Apr 2024 04:36:40 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 18 Apr 2024 13:36:08 +0200
Message-ID: <20240418113616.1108566-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
References: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713440205; x=1744976205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L8dtoDsouCZARnBzs7bAEsnbzPm6h4g5N8dUFen5L2Q=;
 b=Vlo+GlrGLe8E/x5evplfKB29mpNM5VUsLhFqlKjT+jDPXaQA+sZv4qSK
 QXEB1i6aqR/n2gecLUYk3MY4HhAHFoj8JVNBBY+oV9ig5n8c0sxiLICHt
 JTX6f09ob6vnszeI95LEaH8GcOL6tjP1iJMfCFfQrBE8f2+LkdYz2NrOP
 8Kdtz7SqjY53hlfBarsj8EXaB0poCb1aYqJ8uvJhbc6gyd2q3RO+eL1qs
 iL3HwyjXqC21TvpvZrXW7sz69hiGcAME+vH5mpZrDmjVv/nWHmm4ZcbaR
 8wbGNY8e4IyUIuOkWqqcFSSiNyeNIufyYkcT2nwqzs49DLA6qXNbYn9E/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vlo+GlrG
Subject: [Intel-wired-lan] [PATCH net-next v10 02/10] iavf: kill "legacy-rx"
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, linux-mm@kvack.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
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
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  27 +---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 140 ------------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  10 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  82 +---------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   3 +-
 6 files changed, 8 insertions(+), 256 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index db8188c7ac4b..23a6557fc3db 100644
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
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 10ba36602c0c..68543efdd29b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -81,20 +81,11 @@ enum iavf_dyn_idx_t {
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
 
@@ -361,7 +352,8 @@ struct iavf_ring {
 
 	u16 flags;
 #define IAVF_TXR_FLAGS_WB_ON_ITR		BIT(0)
-#define IAVF_RXR_FLAGS_BUILD_SKB_ENABLED	BIT(1)
+/* BIT(1) is free, was IAVF_RXR_FLAGS_BUILD_SKB_ENABLED */
+/* BIT(2) is free */
 #define IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1	BIT(3)
 #define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
 #define IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2	BIT(5)
@@ -392,21 +384,6 @@ struct iavf_ring {
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
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 378c3e9ddf9d..52273f7eab2c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -240,29 +240,6 @@ static const struct iavf_stats iavf_gstrings_stats[] = {
 
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
@@ -342,8 +319,6 @@ static int iavf_get_sset_count(struct net_device *netdev, int sset)
 		return IAVF_STATS_LEN +
 			(IAVF_QUEUE_STATS_LEN * 2 *
 			 netdev->real_num_tx_queues);
-	else if (sset == ETH_SS_PRIV_FLAGS)
-		return IAVF_PRIV_FLAGS_STR_LEN;
 	else
 		return -EINVAL;
 }
@@ -385,21 +360,6 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
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
-		ethtool_puts(&data, iavf_gstrings_priv_flags[i].flag_string);
-}
-
 /**
  * iavf_get_stat_strings - Get stat strings
  * @netdev: network interface device structure
@@ -438,108 +398,11 @@ static void iavf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
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
@@ -585,7 +448,6 @@ static void iavf_get_drvinfo(struct net_device *netdev,
 	strscpy(drvinfo->driver, iavf_driver_name, 32);
 	strscpy(drvinfo->fw_version, "N/A", 4);
 	strscpy(drvinfo->bus_info, pci_name(adapter->pdev), 32);
-	drvinfo->n_priv_flags = IAVF_PRIV_FLAGS_STR_LEN;
 }
 
 /**
@@ -1995,8 +1857,6 @@ static const struct ethtool_ops iavf_ethtool_ops = {
 	.get_strings		= iavf_get_strings,
 	.get_ethtool_stats	= iavf_get_ethtool_stats,
 	.get_sset_count		= iavf_get_sset_count,
-	.get_priv_flags		= iavf_get_priv_flags,
-	.set_priv_flags		= iavf_set_priv_flags,
 	.get_msglevel		= iavf_get_msglevel,
 	.set_msglevel		= iavf_set_msglevel,
 	.get_coalesce		= iavf_get_coalesce,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index d6cbe5022815..5eb7379956e4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -719,9 +719,7 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
 	struct iavf_hw *hw = &adapter->hw;
 	int i;
 
-	/* Legacy Rx will always default to a 2048 buffer size. */
-#if (PAGE_SIZE < 8192)
-	if (!(adapter->flags & IAVF_FLAG_LEGACY_RX)) {
+	if (PAGE_SIZE < 8192) {
 		struct net_device *netdev = adapter->netdev;
 
 		/* For jumbo frames on systems with 4K pages we have to use
@@ -738,16 +736,10 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
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
index 33ec01d0ed67..a908b394409d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -824,17 +824,6 @@ static void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
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
@@ -879,7 +868,7 @@ static bool iavf_alloc_mapped_page(struct iavf_ring *rx_ring,
 
 	bi->dma = dma;
 	bi->page = page;
-	bi->page_offset = iavf_rx_offset(rx_ring);
+	bi->page_offset = IAVF_SKB_PAD;
 
 	/* initialize pagecnt_bias to 1 representing we fully own page */
 	bi->pagecnt_bias = 1;
@@ -1218,7 +1207,7 @@ static void iavf_add_rx_frag(struct iavf_ring *rx_ring,
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
 #else
-	unsigned int truesize = SKB_DATA_ALIGN(size + iavf_rx_offset(rx_ring));
+	unsigned int truesize = SKB_DATA_ALIGN(size + IAVF_SKB_PAD);
 #endif
 
 	if (!size)
@@ -1266,69 +1255,6 @@ static struct iavf_rx_buffer *iavf_get_rx_buffer(struct iavf_ring *rx_ring,
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
-	skb = napi_alloc_skb(&rx_ring->q_vector->napi, IAVF_RX_HDR_SIZE);
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
@@ -1500,10 +1426,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
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
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 22f2df7c460b..a31df5af0473 100644
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
2.44.0


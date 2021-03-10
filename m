Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E694333627
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 08:11:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 072F284354;
	Wed, 10 Mar 2021 07:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GD6pMgMoGJsg; Wed, 10 Mar 2021 07:10:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4B87841E6;
	Wed, 10 Mar 2021 07:10:59 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D68C1BF47E
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 787426F4C8
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w0IkH2fy4NXg for <intel-wired-lan@osuosl.org>;
 Wed, 10 Mar 2021 07:10:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49DA36F6C6
 for <intel-wired-lan@osuosl.org>; Wed, 10 Mar 2021 07:10:36 +0000 (UTC)
IronPort-SDR: 9EdVYljeLfUZLtLjOf7dYJQtjWl1R/O3a1ScqP2RSN0+iNPYWzIi9qVrNxNALezEGwhOUMO+IU
 cokAxCdZR8/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="208203847"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="208203847"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 23:10:34 -0800
IronPort-SDR: NrttKeHCawvt47KDWep6BoaPdOQWR0iDZ0utx+3rjDyVKBrCh4pU2p7l1axkH1DygjefKeiCzj
 n9FC++JheurQ==
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="410070549"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 23:10:34 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue,  9 Mar 2021 23:13:20 -0800
Message-Id: <20210310071322.15425-7-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310071322.15425-1-jithu.joseph@intel.com>
References: <20210310071322.15425-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v7 6/8] igc: Add initial XDP support
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
Cc: Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

This patch adds the initial XDP support to the igc driver. For now,
only XDP_PASS, XDP_DROP, XDP_ABORTED actions are supported. Upcoming
patches will add support for the remaining XDP actions.

XDP configuration helpers are defined in a new file, igc_xdp.c. These
helpers are utilized in igc_main.c to implement the ndo_bpf callback.
XDP-related code that belongs to the driver's hot path is landed in
igc_main.c.

By default, the driver uses Rx buffers with 2 KB size. When XDP is
enabled, it uses larger buffers so we have enough space to accommodate
the headroom and tailroom required by XDP infrastructure. Also, the
driver doesn't support XDP functionality with frames that span over
multiple buffers so jumbo frames are not allowed for now.

The approach implemented by this patch follows the approach implemented
in other Intel drivers as much as possible for the sake of consistency
across the drivers.

Quick comment regarding igc_build_skb(): this patch doesn't touch it
because the function is never called. It seems its support is
incomplete/in progress. The function was added by commit 0507ef8a0372b
("igc: Add transmit and receive fastpath and interrupt handlers") but
ring_uses_build_skb() always return False since the IGC_RING_FLAG_RX_
BUILD_SKB_ENABLED isn't set anywhere in the driver code.

This patch has been tested with the sample app "xdp1" located in
samples/bpf/ dir.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/Makefile   |   2 +-
 drivers/net/ethernet/intel/igc/igc.h      |   2 +
 drivers/net/ethernet/intel/igc/igc_main.c | 118 ++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  33 ++++++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  10 ++
 5 files changed, 153 insertions(+), 12 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_xdp.h

diff --git a/drivers/net/ethernet/intel/igc/Makefile b/drivers/net/ethernet/intel/igc/Makefile
index 1c3051db9085..95d1e8c490a4 100644
--- a/drivers/net/ethernet/intel/igc/Makefile
+++ b/drivers/net/ethernet/intel/igc/Makefile
@@ -8,4 +8,4 @@
 obj-$(CONFIG_IGC) += igc.o
 
 igc-objs := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
-igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o
+igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o igc_xdp.o
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index b00cd8696b6d..3a1737227222 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -219,6 +219,8 @@ struct igc_adapter {
 	ktime_t ptp_reset_start; /* Reset time in clock mono */
 
 	char fw_version[32];
+
+	struct bpf_prog *xdp_prog;
 };
 
 void igc_up(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5f77f1f43a7c..bd041467fef3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -10,17 +10,22 @@
 #include <linux/ip.h>
 #include <linux/pm_runtime.h>
 #include <net/pkt_sched.h>
+#include <linux/bpf_trace.h>
 
 #include <net/ipv6.h>
 
 #include "igc.h"
 #include "igc_hw.h"
 #include "igc_tsn.h"
+#include "igc_xdp.h"
 
 #define DRV_SUMMARY	"Intel(R) 2.5G Ethernet Linux Driver"
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK)
 
+#define IGC_XDP_PASS		0
+#define IGC_XDP_CONSUMED	BIT(0)
+
 static int debug = -1;
 
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
@@ -375,6 +380,8 @@ static void igc_clean_rx_ring(struct igc_ring *rx_ring)
 			i = 0;
 	}
 
+	clear_ring_uses_large_buffer(rx_ring);
+
 	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
@@ -497,6 +504,11 @@ static int igc_setup_all_rx_resources(struct igc_adapter *adapter)
 	return err;
 }
 
+static bool igc_xdp_is_enabled(struct igc_adapter *adapter)
+{
+	return !!adapter->xdp_prog;
+}
+
 /**
  * igc_configure_rx_ring - Configure a receive ring after Reset
  * @adapter: board private structure
@@ -513,6 +525,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 	u32 srrctl = 0, rxdctl = 0;
 	u64 rdba = ring->dma;
 
+	if (igc_xdp_is_enabled(adapter))
+		set_ring_uses_large_buffer(ring);
+
 	/* disable the queue */
 	wr32(IGC_RXDCTL(reg_idx), 0);
 
@@ -1582,12 +1597,12 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 
 static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 					 struct igc_rx_buffer *rx_buffer,
-					 unsigned int size, int pkt_offset,
+					 struct xdp_buff *xdp,
 					 ktime_t timestamp)
 {
-	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset +
-		   pkt_offset;
+	unsigned int size = xdp->data_end - xdp->data;
 	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
+	void *va = xdp->data;
 	unsigned int headlen;
 	struct sk_buff *skb;
 
@@ -1731,6 +1746,10 @@ static bool igc_cleanup_headers(struct igc_ring *rx_ring,
 				union igc_adv_rx_desc *rx_desc,
 				struct sk_buff *skb)
 {
+	/* XDP packets use error pointer so abort at this point */
+	if (IS_ERR(skb))
+		return true;
+
 	if (unlikely(igc_test_staterr(rx_desc, IGC_RXDEXT_STATERR_RXE))) {
 		struct net_device *netdev = rx_ring->netdev;
 
@@ -1770,7 +1789,14 @@ static void igc_put_rx_buffer(struct igc_ring *rx_ring,
 
 static inline unsigned int igc_rx_offset(struct igc_ring *rx_ring)
 {
-	return ring_uses_build_skb(rx_ring) ? IGC_SKB_PAD : 0;
+	struct igc_adapter *adapter = rx_ring->q_vector->adapter;
+
+	if (ring_uses_build_skb(rx_ring))
+		return IGC_SKB_PAD;
+	if (igc_xdp_is_enabled(adapter))
+		return XDP_PACKET_HEADROOM;
+
+	return 0;
 }
 
 static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
@@ -1884,6 +1910,42 @@ static void igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16 cleaned_count)
 	}
 }
 
+static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
+					struct xdp_buff *xdp)
+{
+	struct bpf_prog *prog;
+	int res;
+	u32 act;
+
+	rcu_read_lock();
+
+	prog = READ_ONCE(adapter->xdp_prog);
+	if (!prog) {
+		res = IGC_XDP_PASS;
+		goto unlock;
+	}
+
+	act = bpf_prog_run_xdp(prog, xdp);
+	switch (act) {
+	case XDP_PASS:
+		res = IGC_XDP_PASS;
+		break;
+	default:
+		bpf_warn_invalid_xdp_action(act);
+		fallthrough;
+	case XDP_ABORTED:
+		trace_xdp_exception(adapter->netdev, prog, act);
+		fallthrough;
+	case XDP_DROP:
+		res = IGC_XDP_CONSUMED;
+		break;
+	}
+
+unlock:
+	rcu_read_unlock();
+	return ERR_PTR(-res);
+}
+
 static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 {
 	unsigned int total_bytes = 0, total_packets = 0;
@@ -1895,8 +1957,10 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		union igc_adv_rx_desc *rx_desc;
 		struct igc_rx_buffer *rx_buffer;
 		ktime_t timestamp = 0;
+		struct xdp_buff xdp;
 		int pkt_offset = 0;
 		unsigned int size;
+		void *pktbuf;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IGC_RX_BUFFER_WRITE) {
@@ -1917,24 +1981,38 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 
 		rx_buffer = igc_get_rx_buffer(rx_ring, size);
 
-		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
-			void *pktbuf = page_address(rx_buffer->page) +
-				       rx_buffer->page_offset;
+		pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
 
+		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
 							pktbuf);
 			pkt_offset = IGC_TS_HDR_LEN;
 			size -= IGC_TS_HDR_LEN;
 		}
 
-		/* retrieve a buffer from the ring */
-		if (skb)
+		if (!skb) {
+			struct igc_adapter *adapter = q_vector->adapter;
+
+			xdp.data = pktbuf + pkt_offset;
+			xdp.data_end = xdp.data + size;
+			xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);
+			xdp_set_data_meta_invalid(&xdp);
+			xdp.frame_sz = igc_get_rx_frame_truesize(rx_ring, size);
+
+			skb = igc_xdp_run_prog(adapter, &xdp);
+		}
+
+		if (IS_ERR(skb)) {
+			rx_buffer->pagecnt_bias++;
+			total_packets++;
+			total_bytes += size;
+		} else if (skb)
 			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
 		else if (ring_uses_build_skb(rx_ring))
 			skb = igc_build_skb(rx_ring, rx_buffer, rx_desc, size);
 		else
-			skb = igc_construct_skb(rx_ring, rx_buffer, size,
-						pkt_offset, timestamp);
+			skb = igc_construct_skb(rx_ring, rx_buffer, &xdp,
+						timestamp);
 
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
@@ -3875,6 +3953,11 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
 	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
+	if (igc_xdp_is_enabled(adapter) && new_mtu > ETH_DATA_LEN) {
+		netdev_dbg(netdev, "Jumbo frames not supported with XDP");
+		return -EINVAL;
+	}
+
 	/* adjust max frame to be at least the size of a standard frame */
 	if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
 		max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;
@@ -4863,6 +4946,18 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 	}
 }
 
+static int igc_bpf(struct net_device *dev, struct netdev_bpf *bpf)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+
+	switch (bpf->command) {
+	case XDP_SETUP_PROG:
+		return igc_xdp_set_prog(adapter, bpf->prog, bpf->extack);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static const struct net_device_ops igc_netdev_ops = {
 	.ndo_open		= igc_open,
 	.ndo_stop		= igc_close,
@@ -4876,6 +4971,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_features_check	= igc_features_check,
 	.ndo_do_ioctl		= igc_ioctl,
 	.ndo_setup_tc		= igc_setup_tc,
+	.ndo_bpf		= igc_bpf,
 };
 
 /* PCIe configuration access */
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
new file mode 100644
index 000000000000..27c886a254f1
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2020, Intel Corporation. */
+
+#include "igc.h"
+#include "igc_xdp.h"
+
+int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
+		     struct netlink_ext_ack *extack)
+{
+	struct net_device *dev = adapter->netdev;
+	bool if_running = netif_running(dev);
+	struct bpf_prog *old_prog;
+
+	if (dev->mtu > ETH_DATA_LEN) {
+		/* For now, the driver doesn't support XDP functionality with
+		 * jumbo frames so we return error.
+		 */
+		NL_SET_ERR_MSG_MOD(extack, "Jumbo frames not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (if_running)
+		igc_close(dev);
+
+	old_prog = xchg(&adapter->xdp_prog, prog);
+	if (old_prog)
+		bpf_prog_put(old_prog);
+
+	if (if_running)
+		igc_open(dev);
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
new file mode 100644
index 000000000000..8a410bcefe1a
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2020, Intel Corporation. */
+
+#ifndef _IGC_XDP_H_
+#define _IGC_XDP_H_
+
+int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
+		     struct netlink_ext_ack *extack);
+
+#endif /* _IGC_XDP_H_ */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

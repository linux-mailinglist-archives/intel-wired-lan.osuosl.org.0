Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110C829D212
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 21:20:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4A3D87477;
	Wed, 28 Oct 2020 20:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6uLK7D0JhHYo; Wed, 28 Oct 2020 20:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF896874D9;
	Wed, 28 Oct 2020 20:20:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95E4B1BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 88F94214D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3awwAnMdzGwV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 20:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 6B1972010F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:57 +0000 (UTC)
IronPort-SDR: e2Ue+atGZYZgx5QMF90yJbbNrggatUn8CBOloxoGGz+4d56cumtB8rxEJAmhOfcSeHF8YI/8iy
 APAN9blq+Z6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="147614194"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="147614194"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:55 -0700
IronPort-SDR: UNfea66dXjW/3sjO1bMQ8Z9DicBpp6LDenbDfwMeYV65PFk5pwUU/1xmuFk6ImdPehWUdCO++y
 54j2+oCykHYA==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536374756"
Received: from zcolon-mobl.amr.corp.intel.com ([10.209.108.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:55 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Oct 2020 13:19:40 -0700
Message-Id: <20201028201943.93147-8-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028201943.93147-1-andre.guedes@intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 07/10] igc: Add initial XDP support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds the initial XDP support to the igc driver. For now,
only XDP_PASS, XDP_DROP, XDP_ABORTED actions are supported. Upcoming
patches will add support for the remaining XDP actions.

XDP-specific helpers are defined in a new file, igc_xdp.c. These
helpers are utilized in igc_main.c to implement the ndo_bpf callback
and to handle XDP programs execution in igc_clean_rx_irq().

By default, the driver uses rx buffers with 2 KB size. When XDP is
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
---
 drivers/net/ethernet/intel/igc/Makefile   |  2 +-
 drivers/net/ethernet/intel/igc/igc.h      |  2 +
 drivers/net/ethernet/intel/igc/igc_main.c | 73 ++++++++++++++++++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 76 +++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_xdp.h  | 18 ++++++
 5 files changed, 159 insertions(+), 12 deletions(-)
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
index e72f1fc772aa..5c2f363106ae 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -224,6 +224,8 @@ struct igc_adapter {
 	struct mutex ptm_time_lock; /* protects host and device timestamps */
 	ktime_t ptm_device_time;
 	struct system_counterval_t ptm_host_time;
+
+	struct bpf_prog *xdp_prog;
 };
 
 void igc_up(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 84ffde75e968..585ad575d9fd 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -17,6 +17,7 @@
 #include "igc.h"
 #include "igc_hw.h"
 #include "igc_tsn.h"
+#include "igc_xdp.h"
 
 #define DRV_SUMMARY	"Intel(R) 2.5G Ethernet Linux Driver"
 
@@ -346,6 +347,8 @@ static void igc_clean_rx_ring(struct igc_ring *rx_ring)
 {
 	u16 i = rx_ring->next_to_clean;
 
+	clear_ring_uses_large_buffer(rx_ring);
+
 	dev_kfree_skb(rx_ring->skb);
 	rx_ring->skb = NULL;
 
@@ -514,6 +517,9 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 	u32 srrctl = 0, rxdctl = 0;
 	u64 rdba = ring->dma;
 
+	if (igc_xdp_is_enabled(adapter))
+		set_ring_uses_large_buffer(ring);
+
 	/* disable the queue */
 	wr32(IGC_RXDCTL(reg_idx), 0);
 
@@ -1594,12 +1600,12 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 
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
 
@@ -1748,6 +1754,10 @@ static bool igc_cleanup_headers(struct igc_ring *rx_ring,
 				union igc_adv_rx_desc *rx_desc,
 				struct sk_buff *skb)
 {
+	/* XDP packets use error pointer so abort at this point */
+	if (IS_ERR(skb))
+		return true;
+
 	if (unlikely(igc_test_staterr(rx_desc, IGC_RXDEXT_STATERR_RXE))) {
 		struct net_device *netdev = rx_ring->netdev;
 
@@ -1787,7 +1797,14 @@ static void igc_put_rx_buffer(struct igc_ring *rx_ring,
 
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
@@ -1912,8 +1929,10 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		union igc_adv_rx_desc *rx_desc;
 		struct igc_rx_buffer *rx_buffer;
 		ktime_t timestamp = 0;
+		struct xdp_buff xdp;
 		int pkt_offset = 0;
 		unsigned int size;
+		void *pktbuf;
 
 		/* return some buffers to hardware, one at a time is too slow */
 		if (cleaned_count >= IGC_RX_BUFFER_WRITE) {
@@ -1934,24 +1953,38 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 
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
@@ -3893,6 +3926,11 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
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
@@ -4881,6 +4919,18 @@ static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
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
@@ -4894,6 +4944,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_features_check	= igc_features_check,
 	.ndo_do_ioctl		= igc_ioctl,
 	.ndo_setup_tc		= igc_setup_tc,
+	.ndo_bpf		= igc_bpf,
 };
 
 /* PCIe configuration access */
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
new file mode 100644
index 000000000000..faec0bedc550
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2020, Intel Corporation. */
+
+#include <linux/bpf_trace.h>
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
+
+struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
+				 struct xdp_buff *xdp)
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
+bool igc_xdp_is_enabled(struct igc_adapter *adapter)
+{
+	return !!adapter->xdp_prog;
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
new file mode 100644
index 000000000000..ab36ab4d48fd
--- /dev/null
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2020, Intel Corporation. */
+
+#ifndef _IGC_XDP_H_
+#define _IGC_XDP_H_
+
+#define IGC_XDP_PASS		0
+#define IGC_XDP_CONSUMED	BIT(0)
+
+int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
+		     struct netlink_ext_ack *extack);
+
+struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
+				 struct xdp_buff *xdp);
+
+bool igc_xdp_is_enabled(struct igc_adapter *adapter);
+
+#endif /* _IGC_XDP_H_ */
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

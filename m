Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D53B644996
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2019 19:23:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB18086582;
	Thu, 13 Jun 2019 17:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ezr3a0HSX6Lm; Thu, 13 Jun 2019 17:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4EA1C86388;
	Thu, 13 Jun 2019 17:23:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C53581BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 07:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C21582107D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 07:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWf2XeXUlGFD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2019 07:37:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id ABE6920345
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 07:37:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 00:37:44 -0700
X-ExtLoop1: 1
Received: from mkarlsso-mobl.ger.corp.intel.com (HELO VM.ger.corp.intel.com)
 ([10.103.211.41])
 by orsmga004.jf.intel.com with ESMTP; 13 Jun 2019 00:37:39 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, brouer@redhat.com
Date: Thu, 13 Jun 2019 09:37:25 +0200
Message-Id: <1560411450-29121-2-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560411450-29121-1-git-send-email-magnus.karlsson@intel.com>
References: <1560411450-29121-1-git-send-email-magnus.karlsson@intel.com>
X-Mailman-Approved-At: Thu, 13 Jun 2019 17:23:43 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next 1/6] xsk: replace
 ndo_xsk_async_xmit with ndo_xsk_wakeup
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, maciejromanfijalkowski@gmail.com,
 bruce.richardson@intel.com, ciara.loftus@intel.com,
 ilias.apalodimas@linaro.org, xiaolong.ye@intel.com,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 maciej.fijalkowski@intel.com, bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This commit replaces ndo_xsk_async_xmit with ndo_xsk_wakeup. This new
ndo provides the same functionality as before but with the addition of
a new flags field that is used to specifiy if Rx, Tx or both should be
woken up. The previous ndo only woke up Tx, as implied by the
name. The i40e and ixgbe drivers (which are all the supported ones)
are updated with this new interface.

This new ndo will be used by the new need_wakeup functionality of XDP
sockets that need to be able to wake up both Rx and Tx driver
processing.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c          |  5 +++--
 drivers/net/ethernet/intel/i40e/i40e_xsk.c           |  7 ++++---
 drivers/net/ethernet/intel/i40e/i40e_xsk.h           |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c        |  5 +++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c         |  4 ++--
 include/linux/netdevice.h                            | 14 ++++++++++++--
 7 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 320562b..327182e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12025,7 +12025,8 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
 	if (need_reset && prog)
 		for (i = 0; i < vsi->num_queue_pairs; i++)
 			if (vsi->xdp_rings[i]->xsk_umem)
-				(void)i40e_xsk_async_xmit(vsi->netdev, i);
+				(void)i40e_xsk_wakeup(vsi->netdev, i,
+						      XDP_WAKEUP_RX);
 
 	return 0;
 }
@@ -12347,7 +12348,7 @@ static const struct net_device_ops i40e_netdev_ops = {
 	.ndo_bridge_setlink	= i40e_ndo_bridge_setlink,
 	.ndo_bpf		= i40e_xdp,
 	.ndo_xdp_xmit		= i40e_xdp_xmit,
-	.ndo_xsk_async_xmit	= i40e_xsk_async_xmit,
+	.ndo_xsk_wakeup	        = i40e_xsk_wakeup,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 1b17486..32be3dd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -116,7 +116,7 @@ static int i40e_xsk_umem_enable(struct i40e_vsi *vsi, struct xdp_umem *umem,
 			return err;
 
 		/* Kick start the NAPI context so that receiving will start */
-		err = i40e_xsk_async_xmit(vsi->netdev, qid);
+		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
 		if (err)
 			return err;
 	}
@@ -762,13 +762,14 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
 }
 
 /**
- * i40e_xsk_async_xmit - Implements the ndo_xsk_async_xmit
+ * i40e_xsk_wakeup - Implements the ndo_xsk_wakeup
  * @dev: the netdevice
  * @queue_id: queue id to wake up
+ * @flags: ignored in our case since we have Rx and Tx in the same NAPI.
  *
  * Returns <0 for errors, 0 otherwise.
  **/
-int i40e_xsk_async_xmit(struct net_device *dev, u32 queue_id)
+int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 {
 	struct i40e_netdev_priv *np = netdev_priv(dev);
 	struct i40e_vsi *vsi = np->vsi;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
index 8cc0a2e..9ed59c1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
@@ -18,6 +18,6 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
 
 bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
 			   struct i40e_ring *tx_ring, int napi_budget);
-int i40e_xsk_async_xmit(struct net_device *dev, u32 queue_id);
+int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 
 #endif /* _I40E_XSK_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 57fd9ee..5812f84 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10272,7 +10272,8 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 	if (need_reset && prog)
 		for (i = 0; i < adapter->num_rx_queues; i++)
 			if (adapter->xdp_ring[i]->xsk_umem)
-				(void)ixgbe_xsk_async_xmit(adapter->netdev, i);
+				(void)ixgbe_xsk_wakeup(adapter->netdev, i,
+						       XDP_WAKEUP_RX);
 
 	return 0;
 }
@@ -10391,7 +10392,7 @@ static const struct net_device_ops ixgbe_netdev_ops = {
 	.ndo_features_check	= ixgbe_features_check,
 	.ndo_bpf		= ixgbe_xdp,
 	.ndo_xdp_xmit		= ixgbe_xdp_xmit,
-	.ndo_xsk_async_xmit	= ixgbe_xsk_async_xmit,
+	.ndo_xsk_wakeup         = ixgbe_xsk_wakeup,
 };
 
 static void ixgbe_disable_txr_hw(struct ixgbe_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
index d93a690..6d01700 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
@@ -42,7 +42,7 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
 void ixgbe_xsk_clean_rx_ring(struct ixgbe_ring *rx_ring);
 bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 			    struct ixgbe_ring *tx_ring, int napi_budget);
-int ixgbe_xsk_async_xmit(struct net_device *dev, u32 queue_id);
+int ixgbe_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 void ixgbe_xsk_clean_tx_ring(struct ixgbe_ring *tx_ring);
 
 #endif /* #define _IXGBE_TXRX_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index bfe95ce..1a1add8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -151,7 +151,7 @@ static int ixgbe_xsk_umem_enable(struct ixgbe_adapter *adapter,
 		ixgbe_txrx_ring_enable(adapter, qid);
 
 		/* Kick start the NAPI context so that receiving will start */
-		err = ixgbe_xsk_async_xmit(adapter->netdev, qid);
+		err = ixgbe_xsk_wakeup(adapter->netdev, qid, XDP_WAKEUP_RX);
 		if (err)
 			return err;
 	}
@@ -739,7 +739,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 	return budget > 0 && xmit_done;
 }
 
-int ixgbe_xsk_async_xmit(struct net_device *dev, u32 qid)
+int ixgbe_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(dev);
 	struct ixgbe_ring *ring;
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 44b47e9..fd29d39 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -903,6 +903,10 @@ struct netdev_bpf {
 	};
 };
 
+/* Flags for ndo_xsk_wakeup. */
+#define XDP_WAKEUP_RX (1 << 0)
+#define XDP_WAKEUP_TX (1 << 1)
+
 #ifdef CONFIG_XFRM_OFFLOAD
 struct xfrmdev_ops {
 	int	(*xdo_dev_state_add) (struct xfrm_state *x);
@@ -1229,6 +1233,12 @@ struct tlsdev_ops;
  *	that got dropped are freed/returned via xdp_return_frame().
  *	Returns negative number, means general error invoking ndo, meaning
  *	no frames were xmit'ed and core-caller will free all frames.
+ * int (*ndo_xsk_wakeup)(struct net_device *dev, u32 queue_id, u32 flags);
+ *      This function is used to wake up the softirq, ksoftirqd or kthread
+ *	responsible for sending and/or receiving packets on a specific
+ *	queue id bound to an AF_XDP socket. The flags field specifies if
+ *	only RX, only Tx, or both should be woken up using the flags
+ *	XDP_WAKEUP_RX and XDP_WAKEUP_TX.
  * struct devlink_port *(*ndo_get_devlink_port)(struct net_device *dev);
  *	Get devlink port instance associated with a given netdev.
  *	Called with a reference on the netdevice and devlink locks only,
@@ -1428,8 +1438,8 @@ struct net_device_ops {
 	int			(*ndo_xdp_xmit)(struct net_device *dev, int n,
 						struct xdp_frame **xdp,
 						u32 flags);
-	int			(*ndo_xsk_async_xmit)(struct net_device *dev,
-						      u32 queue_id);
+	int			(*ndo_xsk_wakeup)(struct net_device *dev,
+						  u32 queue_id, u32 flags);
 	struct devlink_port *	(*ndo_get_devlink_port)(struct net_device *dev);
 };
 
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9D98E0B9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5854D86958;
	Wed, 14 Aug 2019 22:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pt_22vmv9Q0I; Wed, 14 Aug 2019 22:31:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 483B286930;
	Wed, 14 Aug 2019 22:31:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E67BC1BF96B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E30C1204AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZL9Ii8DtdN+a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 07:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 65716203FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:28:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 00:28:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,384,1559545200"; d="scan'208";a="327923132"
Received: from mkarlsso-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.52.109])
 by orsmga004.jf.intel.com with ESMTP; 14 Aug 2019 00:28:44 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, brouer@redhat.com,
 maximmi@mellanox.com
Date: Wed, 14 Aug 2019 09:27:23 +0200
Message-Id: <1565767643-4908-9-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v4 8/8] net/mlx5e: Add AF_XDP
 need_wakeup support
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
Cc: axboe@kernel.dk, maciejromanfijalkowski@gmail.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, bruce.richardson@intel.com,
 ciara.loftus@intel.com, ilias.apalodimas@linaro.org, xiaolong.ye@intel.com,
 jonathan.lemon@gmail.com, qi.z.zhang@intel.com, maciej.fijalkowski@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maxim Mikityanskiy <maximmi@mellanox.com>

This commit adds support for the new need_wakeup feature of AF_XDP. The
applications can opt-in by using the XDP_USE_NEED_WAKEUP bind() flag.
When this feature is enabled, some behavior changes:

RX side: If the Fill Ring is empty, instead of busy-polling, set the
flag to tell the application to kick the driver when it refills the Fill
Ring.

TX side: If there are pending completions or packets queued for
transmission, set the flag to tell the application that it can skip the
sendto() syscall and save time.

The performance testing was performed on a machine with the following
configuration:

- 24 cores of Intel Xeon E5-2620 v3 @ 2.40 GHz
- Mellanox ConnectX-5 Ex with 100 Gbit/s link

The results with retpoline disabled:

       | without need_wakeup  | with need_wakeup     |
       |----------------------|----------------------|
       | one core | two cores | one core | two cores |
-------|----------|-----------|----------|-----------|
txonly | 20.1     | 33.5      | 29.0     | 34.2      |
rxdrop | 0.065    | 14.1      | 12.0     | 14.1      |
l2fwd  | 0.032    | 7.3       | 6.6      | 7.2       |

"One core" means the application and NAPI run on the same core. "Two
cores" means they are pinned to different cores.

Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
Reviewed-by: Tariq Toukan <tariqt@mellanox.com>
Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.h | 14 ++++++++++++++
 drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.h | 12 ++++++++++++
 drivers/net/ethernet/mellanox/mlx5/core/en_rx.c     |  7 +++++--
 drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c   | 20 +++++++++++++++++---
 4 files changed, 48 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.h b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.h
index 307b923..cab0e93 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.h
@@ -5,6 +5,7 @@
 #define __MLX5_EN_XSK_RX_H__
 
 #include "en.h"
+#include <net/xdp_sock.h>
 
 /* RX data path */
 
@@ -24,4 +25,17 @@ struct sk_buff *mlx5e_xsk_skb_from_cqe_linear(struct mlx5e_rq *rq,
 					      struct mlx5e_wqe_frag_info *wi,
 					      u32 cqe_bcnt);
 
+static inline bool mlx5e_xsk_update_rx_wakeup(struct mlx5e_rq *rq, bool alloc_err)
+{
+	if (!xsk_umem_uses_need_wakeup(rq->umem))
+		return alloc_err;
+
+	if (unlikely(alloc_err))
+		xsk_set_rx_need_wakeup(rq->umem);
+	else
+		xsk_clear_rx_need_wakeup(rq->umem);
+
+	return false;
+}
+
 #endif /* __MLX5_EN_XSK_RX_H__ */
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.h b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.h
index 9c50515..79b487d 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.h
@@ -5,6 +5,7 @@
 #define __MLX5_EN_XSK_TX_H__
 
 #include "en.h"
+#include <net/xdp_sock.h>
 
 /* TX data path */
 
@@ -12,4 +13,15 @@ int mlx5e_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);
 
 bool mlx5e_xsk_tx(struct mlx5e_xdpsq *sq, unsigned int budget);
 
+static inline void mlx5e_xsk_update_tx_wakeup(struct mlx5e_xdpsq *sq)
+{
+	if (!xsk_umem_uses_need_wakeup(sq->umem))
+		return;
+
+	if (sq->pc != sq->cc)
+		xsk_clear_tx_need_wakeup(sq->umem);
+	else
+		xsk_set_tx_need_wakeup(sq->umem);
+}
+
 #endif /* __MLX5_EN_XSK_TX_H__ */
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
index 60570b4..fae0694 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
@@ -692,8 +692,11 @@ bool mlx5e_post_rx_mpwqes(struct mlx5e_rq *rq)
 	rq->mpwqe.umr_in_progress += rq->mpwqe.umr_last_bulk;
 	rq->mpwqe.actual_wq_head   = head;
 
-	/* If XSK Fill Ring doesn't have enough frames, busy poll by
-	 * rescheduling the NAPI poll.
+	/* If XSK Fill Ring doesn't have enough frames, report the error, so
+	 * that one of the actions can be performed:
+	 * 1. If need_wakeup is used, signal that the application has to kick
+	 * the driver when it refills the Fill Ring.
+	 * 2. Otherwise, busy poll by rescheduling the NAPI poll.
 	 */
 	if (unlikely(alloc_err == -ENOMEM && rq->umem))
 		return true;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
index 6d16dee..257a7c9 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
@@ -33,6 +33,7 @@
 #include <linux/irq.h>
 #include "en.h"
 #include "en/xdp.h"
+#include "en/xsk/rx.h"
 #include "en/xsk/tx.h"
 
 static inline bool mlx5e_channel_no_affinity_change(struct mlx5e_channel *c)
@@ -83,10 +84,23 @@ void mlx5e_trigger_irq(struct mlx5e_icosq *sq)
 
 static bool mlx5e_napi_xsk_post(struct mlx5e_xdpsq *xsksq, struct mlx5e_rq *xskrq)
 {
-	bool busy_xsk = false;
-
+	bool busy_xsk = false, xsk_rx_alloc_err;
+
+	/* Handle the race between the application querying need_wakeup and the
+	 * driver setting it:
+	 * 1. Update need_wakeup both before and after the TX. If it goes to
+	 * "yes", it can only happen with the first update.
+	 * 2. If the application queried need_wakeup before we set it, the
+	 * packets will be transmitted anyway, even w/o a wakeup.
+	 * 3. Give a chance to clear need_wakeup after new packets were queued
+	 * for TX.
+	 */
+	mlx5e_xsk_update_tx_wakeup(xsksq);
 	busy_xsk |= mlx5e_xsk_tx(xsksq, MLX5E_TX_XSK_POLL_BUDGET);
-	busy_xsk |= xskrq->post_wqes(xskrq);
+	mlx5e_xsk_update_tx_wakeup(xsksq);
+
+	xsk_rx_alloc_err = xskrq->post_wqes(xskrq);
+	busy_xsk |= mlx5e_xsk_update_rx_wakeup(xskrq, xsk_rx_alloc_err);
 
 	return busy_xsk;
 }
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

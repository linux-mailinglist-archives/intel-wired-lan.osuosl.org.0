Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DDB223398
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jul 2020 08:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68BC686DF0;
	Fri, 17 Jul 2020 06:24:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QGmXpvroWGnv; Fri, 17 Jul 2020 06:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9915C86DDB;
	Fri, 17 Jul 2020 06:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 894A21BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 06:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 863F58615E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 06:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 54hD1SgyyFl6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jul 2020 06:24:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from tc-sys-mailedm03.tc.baidu.com (mx56.baidu.com [61.135.168.56])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 052D986153
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 06:24:25 +0000 (UTC)
Received: from localhost (cp01-cos-dev01.cp01.baidu.com [10.92.119.46])
 by tc-sys-mailedm03.tc.baidu.com (Postfix) with ESMTP id 37717450003C;
 Fri, 17 Jul 2020 14:24:22 +0800 (CST)
From: Li RongQing <lirongqing@baidu.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com, bjorn.topel@intel.com
Date: Fri, 17 Jul 2020 14:24:21 +0800
Message-Id: <1594967062-20674-2-git-send-email-lirongqing@baidu.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
Subject: [Intel-wired-lan] [PATCH 1/2] xdp: i40e: ixgbe: ixgbevf: not flip
 rx buffer for copy mode xdp
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

i40e/ixgbe/ixgbevf_rx_buffer_flip in copy mode xdp can lead to
data corruption, like the following flow:

   1. first skb is not for xsk, and forwarded to another device
      or socket queue
   2. seconds skb is for xsk, copy data to xsk memory, and page
      of skb->data is released
   3. rx_buff is reusable since only first skb is in it, but
      *_rx_buffer_flip will make that page_offset is set to
      first skb data
   4. then reuse rx buffer, first skb which still is living
      will be corrupted.

so add flags in xdp struct, to report xdp's data status, then
driver has knowledge whether to flip rx buffer

Fixes: c497176cb2e4 ("xsk: add Rx receive functions and poll support")
Signed-off-by: Li RongQing <lirongqing@baidu.com>
Signed-off-by: Dongsheng Rong <rongdongsheng@baidu.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c       | 5 ++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 5 ++++-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 5 ++++-
 include/net/xdp.h                                 | 3 +++
 net/xdp/xsk.c                                     | 4 +++-
 5 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b3836092c327..51fa6f86f917 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2376,6 +2376,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
+			xdp.flags = 0;
 			xdp.data = page_address(rx_buffer->page) +
 				   rx_buffer->page_offset;
 			xdp.data_meta = xdp.data;
@@ -2394,7 +2395,9 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 
 			if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
 				xdp_xmit |= xdp_res;
-				i40e_rx_buffer_flip(rx_ring, rx_buffer, size);
+
+				if (!(xdp.flags & XDP_DATA_RELEASED))
+					i40e_rx_buffer_flip(rx_ring, rx_buffer, size);
 			} else {
 				rx_buffer->pagecnt_bias++;
 			}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index a8bf941c5c29..9e44a7e1d91c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2333,6 +2333,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
+			xdp.flags = 0;
 			xdp.data = page_address(rx_buffer->page) +
 				   rx_buffer->page_offset;
 			xdp.data_meta = xdp.data;
@@ -2351,7 +2352,9 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 
 			if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
 				xdp_xmit |= xdp_res;
-				ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
+
+				if (!(xdp.flags & XDP_DATA_RELEASED))
+					ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
 			} else {
 				rx_buffer->pagecnt_bias++;
 			}
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index a39e2cb384dd..1c1a8b6a5dcf 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -1168,6 +1168,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
+			xdp.flags = 0;
 			xdp.data = page_address(rx_buffer->page) +
 				   rx_buffer->page_offset;
 			xdp.data_meta = xdp.data;
@@ -1184,7 +1185,9 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		if (IS_ERR(skb)) {
 			if (PTR_ERR(skb) == -IXGBEVF_XDP_TX) {
 				xdp_xmit = true;
-				ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
+
+				if (!(xdp.flags & XDP_DATA_RELEASED))
+					ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
 						       size);
 			} else {
 				rx_buffer->pagecnt_bias++;
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 609f819ed08b..6b32a01ade19 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -47,6 +47,8 @@ enum xdp_mem_type {
 #define XDP_XMIT_FLUSH		(1U << 0)	/* doorbell signal consumer */
 #define XDP_XMIT_FLAGS_MASK	XDP_XMIT_FLUSH
 
+#define XDP_DATA_RELEASED (1U << 0)
+
 struct xdp_mem_info {
 	u32 type; /* enum xdp_mem_type, but known size type */
 	u32 id;
@@ -73,6 +75,7 @@ struct xdp_buff {
 	struct xdp_rxq_info *rxq;
 	struct xdp_txq_info *txq;
 	u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
+	u32 flags;
 };
 
 /* Reserve memory area at end-of data area.
diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
index b6c0f08bd80d..2c4c5c16660b 100644
--- a/net/xdp/xsk.c
+++ b/net/xdp/xsk.c
@@ -172,8 +172,10 @@ static int __xsk_rcv(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len,
 		xsk_buff_free(xsk_xdp);
 		return err;
 	}
-	if (explicit_free)
+	if (explicit_free) {
 		xdp_return_buff(xdp);
+		xdp->flags |= XDP_DATA_RELEASED;
+	}
 	return 0;
 }
 
-- 
2.16.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

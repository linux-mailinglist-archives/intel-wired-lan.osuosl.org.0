Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5643786EF2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 14:23:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B15280EDE;
	Thu, 24 Aug 2023 12:23:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B15280EDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692879835;
	bh=h5Gx1LWXja1l+375BbVwSXHupcIzTHRZznk9rX95MIM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=15M5vJM2Csl0l4ea/eajRuteI+Vx+bVO5gewuru3zI7GR1Aj3bSSCiEdYZeQuj/ae
	 oPKNgkXCINzupfGFUJvCVvY3TWIDi7YXdG0dd3l3iklBHpWoFUPrrtSLNPrrwA6TjM
	 smGP5XlTMovC0yp+4lIFFnUIPmKoL4Smy5Cx/FIWFTcA1S5rkyogDTzJmvmY5/Owkh
	 1urDEy2/L3Bv5bo8BR8J1zwcSUR0Dm2dzRXnmhSEVk18wWFiv7JQgyuiYwbwz4OZrD
	 8HrQD+MiILzp+XN5wtY4hTXeiyBsLcnmbxC4zs4dfnEDv2MK4bMtF/PjuV5GcAcQR1
	 UR2df41PlAWiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Br94pKmX1sR; Thu, 24 Aug 2023 12:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F12A780EAC;
	Thu, 24 Aug 2023 12:23:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F12A780EAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C03E1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22A704192F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:23:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22A704192F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRe3H0PDHFbY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 12:23:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B15D7405A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B15D7405A2
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438357212"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="438357212"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 05:23:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="737028456"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="737028456"
Received: from isergee-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.45.83])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 05:23:45 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 06:23:37 -0600
Message-Id: <20230824122337.3300895-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692879827; x=1724415827;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3Mmn8JlityqKdQzmvmS75At49n/YpqpDl+gPUnIVcH4=;
 b=Dzoy5A9lVOWVCDUBSKv6L2xA8hDIYP6XRgCiiW2ft+nzZjMEqYqjq0jy
 tybGc8COWzfpLJ5IN//zkl9BoL8RcEsUwaTCRQQz+uabAdIE+aE6iQMKp
 QqhS2uDf/bjx+mrrbS4KeKJZOgHl0gnt2DJ5hyjPNUZCQVqo7Ui+Ob5yc
 l7+/zRUCAbEVpFKVVjX5DawIT118fpWFr4qdCZZimSl2g+u/6+wC9yAIO
 FlRCeq2yc2jQabgKoKFU/orGRVmoY2MuSsYbloGYZi5CHYfUvxl83dwxn
 EHpkjaFfTKq+J3y10V2ikiL58wMByjDJG/x1zPiLQhHNZF9MnJXxRbJ5K
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dzoy5A9l
Subject: [Intel-wired-lan] [PATCH iwl-next] iavf: remove "inline" functions
 from iavf_txrx.c
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

From: Jacob Keller <jacob.e.keller@intel.com>

The iAVF txrx hotpath code has several functions that are marked as
"static inline" in the iavf_txrx.c file. This use of inline is frowned
upon in the netdev community and explicitly marked as something to avoid
in the Linux coding-style document (section 15).

Even though these functions are only used once, it is expected that GCC
is smart enough to decide when to perform function inlining where
appropriate without the "hint".

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 43 ++++++++++-----------
 1 file changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 8c5f6096b002..562dafb89f1d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -7,8 +7,7 @@
 #include "iavf_trace.h"
 #include "iavf_prototype.h"
 
-static inline __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
-				u32 td_tag)
+static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size, u32 td_tag)
 {
 	return cpu_to_le64(IAVF_TX_DESC_DTYPE_DATA |
 			   ((u64)td_cmd  << IAVF_TXD_QW1_CMD_SHIFT) |
@@ -370,8 +369,7 @@ static void iavf_enable_wb_on_itr(struct iavf_vsi *vsi,
 	q_vector->arm_wb_state = true;
 }
 
-static inline bool iavf_container_is_rx(struct iavf_q_vector *q_vector,
-					struct iavf_ring_container *rc)
+static bool iavf_container_is_rx(struct iavf_q_vector *q_vector, struct iavf_ring_container *rc)
 {
 	return &q_vector->rx == rc;
 }
@@ -806,7 +804,7 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
  * @rx_ring: ring to bump
  * @val: new head index
  **/
-static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
+static void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
 {
 	rx_ring->next_to_use = val;
 
@@ -828,7 +826,7 @@ static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
  *
  * Returns the offset value for ring into the data buffer.
  */
-static inline unsigned int iavf_rx_offset(struct iavf_ring *rx_ring)
+static unsigned int iavf_rx_offset(struct iavf_ring *rx_ring)
 {
 	return ring_uses_build_skb(rx_ring) ? IAVF_SKB_PAD : 0;
 }
@@ -977,9 +975,9 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
  * @skb: skb currently being received and modified
  * @rx_desc: the receive descriptor
  **/
-static inline void iavf_rx_checksum(struct iavf_vsi *vsi,
-				    struct sk_buff *skb,
-				    union iavf_rx_desc *rx_desc)
+static void iavf_rx_checksum(struct iavf_vsi *vsi,
+			     struct sk_buff *skb,
+			     union iavf_rx_desc *rx_desc)
 {
 	struct iavf_rx_ptype_decoded decoded;
 	u32 rx_error, rx_status;
@@ -1061,7 +1059,7 @@ static inline void iavf_rx_checksum(struct iavf_vsi *vsi,
  *
  * Returns a hash type to be used by skb_set_hash
  **/
-static inline int iavf_ptype_to_htype(u8 ptype)
+static int iavf_ptype_to_htype(u8 ptype)
 {
 	struct iavf_rx_ptype_decoded decoded = decode_rx_desc_ptype(ptype);
 
@@ -1085,10 +1083,10 @@ static inline int iavf_ptype_to_htype(u8 ptype)
  * @skb: skb currently being received and modified
  * @rx_ptype: Rx packet type
  **/
-static inline void iavf_rx_hash(struct iavf_ring *ring,
-				union iavf_rx_desc *rx_desc,
-				struct sk_buff *skb,
-				u8 rx_ptype)
+static void iavf_rx_hash(struct iavf_ring *ring,
+			 union iavf_rx_desc *rx_desc,
+			 struct sk_buff *skb,
+			 u8 rx_ptype)
 {
 	u32 hash;
 	const __le64 rss_mask =
@@ -1115,10 +1113,10 @@ static inline void iavf_rx_hash(struct iavf_ring *ring,
  * order to populate the hash, checksum, VLAN, protocol, and
  * other fields within the skb.
  **/
-static inline
-void iavf_process_skb_fields(struct iavf_ring *rx_ring,
-			     union iavf_rx_desc *rx_desc, struct sk_buff *skb,
-			     u8 rx_ptype)
+static void
+iavf_process_skb_fields(struct iavf_ring *rx_ring,
+			union iavf_rx_desc *rx_desc, struct sk_buff *skb,
+			u8 rx_ptype)
 {
 	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
 
@@ -1662,8 +1660,7 @@ static inline u32 iavf_buildreg_itr(const int type, u16 itr)
  * @q_vector: q_vector for which itr is being updated and interrupt enabled
  *
  **/
-static inline void iavf_update_enable_itr(struct iavf_vsi *vsi,
-					  struct iavf_q_vector *q_vector)
+static void iavf_update_enable_itr(struct iavf_vsi *vsi, struct iavf_q_vector *q_vector)
 {
 	struct iavf_hw *hw = &vsi->back->hw;
 	u32 intval;
@@ -2275,9 +2272,9 @@ int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size)
  * @td_cmd:   the command field in the descriptor
  * @td_offset: offset for checksum or crc
  **/
-static inline void iavf_tx_map(struct iavf_ring *tx_ring, struct sk_buff *skb,
-			       struct iavf_tx_buffer *first, u32 tx_flags,
-			       const u8 hdr_len, u32 td_cmd, u32 td_offset)
+static void iavf_tx_map(struct iavf_ring *tx_ring, struct sk_buff *skb,
+			struct iavf_tx_buffer *first, u32 tx_flags,
+			const u8 hdr_len, u32 td_cmd, u32 td_offset)
 {
 	unsigned int data_len = skb->data_len;
 	unsigned int size = skb_headlen(skb);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

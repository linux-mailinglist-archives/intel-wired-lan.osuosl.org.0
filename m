Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEAB78797F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 22:44:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95D2841B50;
	Thu, 24 Aug 2023 20:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95D2841B50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692909871;
	bh=tyGxJrNpD1S5yUcltSqpvQrEQSVYqswRNW4so1z9t18=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XlqNpdEcv4r/IoDZy3sZ01s4VJdOyL3hOmFl7Ob4azPxNUf/OOCGmeTFn08U6TF76
	 snkzha0b58otzBuJlFXgrPQ1cXTOdhwIUufTtCkA56Et948WHweoaScf11VXkGkp23
	 jRKXA/6zvmC/n9dtHAS/FMji4jGC+qTmvr5RnGgu0firieONeFcg6Vbm6y3wnsHAZc
	 1IOuYslFTf5N5HbOsW1THdL05ABLcQOc7x0zw4lIYGxjnlMtiAHdxlLVf65DI8RA7M
	 QQihE2KsiFSq7TiuVzc7Adp+pBf+Sj8BB6+x8LpcYe8nn507ZNFIihhBvFQ7h1K/br
	 75sa0W60QfOgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qYFzkRQvqkyk; Thu, 24 Aug 2023 20:44:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF4CD418E1;
	Thu, 24 Aug 2023 20:44:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF4CD418E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D07D1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:44:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01B6260E07
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:44:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01B6260E07
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4amqG2rVojtt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 20:44:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0310560C20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:44:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0310560C20
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="438499123"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="438499123"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:44:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="772235025"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="772235025"
Received: from rolfneux-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.45.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:44:20 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 14:44:00 -0600
Message-Id: <20230824204400.3311921-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692909863; x=1724445863;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MbYc4RD0oxMPQf4XveP+YyGA9Zt72gLADWtuLrSHCws=;
 b=g7ZrGpVjdfFrAVXCOSE5BIsC1NmpFDT6ydrqAzE2CXa5+g7COjnYvsFx
 mxK1EeOYT2Kg8U5hlwjnCzZMQP1CGsPe9Px4H46aVASv73qEZZS/SrwPh
 YhQSDdDyjZjY4a11FeZWlBocJ7jipz3YmvpdlAidYxDqyI9B8rcCS2Rw7
 zviSTYM9a+9RiC1T2xvvKHt4q8raLaptSjQc3MHTtJwS/MwVl+uGBYZs6
 TFl2J6q8xhjIW88tl8Xsv80KaRawPFaFiPrTAjx6lFcDntm6E/te2lKic
 GiYmKQO2zRUzTUdzoEEi+tVIaCPPGJFu5a6r9IpajQkQj9bFLFZRfhzN9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g7ZrGpVj
Subject: [Intel-wired-lan] [PATCH iwl-next v2] iavf: remove "inline"
 functions from iavf_txrx.c
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

./scripts/bloat-o-meter is showing zero difference with this changes.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
v2: fix lines longer than 80 chars

 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 46 ++++++++++-----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 8c5f6096b002..d64c4997136b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -7,8 +7,8 @@
 #include "iavf_trace.h"
 #include "iavf_prototype.h"
 
-static inline __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
-				u32 td_tag)
+static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
+			 u32 td_tag)
 {
 	return cpu_to_le64(IAVF_TX_DESC_DTYPE_DATA |
 			   ((u64)td_cmd  << IAVF_TXD_QW1_CMD_SHIFT) |
@@ -370,8 +370,8 @@ static void iavf_enable_wb_on_itr(struct iavf_vsi *vsi,
 	q_vector->arm_wb_state = true;
 }
 
-static inline bool iavf_container_is_rx(struct iavf_q_vector *q_vector,
-					struct iavf_ring_container *rc)
+static bool iavf_container_is_rx(struct iavf_q_vector *q_vector,
+				 struct iavf_ring_container *rc)
 {
 	return &q_vector->rx == rc;
 }
@@ -806,7 +806,7 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
  * @rx_ring: ring to bump
  * @val: new head index
  **/
-static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
+static void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
 {
 	rx_ring->next_to_use = val;
 
@@ -828,7 +828,7 @@ static inline void iavf_release_rx_desc(struct iavf_ring *rx_ring, u32 val)
  *
  * Returns the offset value for ring into the data buffer.
  */
-static inline unsigned int iavf_rx_offset(struct iavf_ring *rx_ring)
+static unsigned int iavf_rx_offset(struct iavf_ring *rx_ring)
 {
 	return ring_uses_build_skb(rx_ring) ? IAVF_SKB_PAD : 0;
 }
@@ -977,9 +977,9 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
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
@@ -1061,7 +1061,7 @@ static inline void iavf_rx_checksum(struct iavf_vsi *vsi,
  *
  * Returns a hash type to be used by skb_set_hash
  **/
-static inline int iavf_ptype_to_htype(u8 ptype)
+static int iavf_ptype_to_htype(u8 ptype)
 {
 	struct iavf_rx_ptype_decoded decoded = decode_rx_desc_ptype(ptype);
 
@@ -1085,10 +1085,10 @@ static inline int iavf_ptype_to_htype(u8 ptype)
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
@@ -1115,10 +1115,10 @@ static inline void iavf_rx_hash(struct iavf_ring *ring,
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
 
@@ -1662,8 +1662,8 @@ static inline u32 iavf_buildreg_itr(const int type, u16 itr)
  * @q_vector: q_vector for which itr is being updated and interrupt enabled
  *
  **/
-static inline void iavf_update_enable_itr(struct iavf_vsi *vsi,
-					  struct iavf_q_vector *q_vector)
+static void iavf_update_enable_itr(struct iavf_vsi *vsi,
+				   struct iavf_q_vector *q_vector)
 {
 	struct iavf_hw *hw = &vsi->back->hw;
 	u32 intval;
@@ -2275,9 +2275,9 @@ int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size)
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

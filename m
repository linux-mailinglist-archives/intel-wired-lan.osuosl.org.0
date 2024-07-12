Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD4E92F834
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 11:45:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ED7541484;
	Fri, 12 Jul 2024 09:45:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MDwB-QaG20O5; Fri, 12 Jul 2024 09:45:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87CDF41438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720777505;
	bh=R1zXmiAoxdOFn+uxHkFD5+CZ9sYCO2seNZGEMFDlB1o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lP6wbCcU2dbUiO5xnszSMkf+jHH5j+qvbZ1XttPzjxSfPxN0WE874Gxtq7GiIUCIG
	 ylIn0iXARsxV2uXHAvhK/irN016ybjIIrQsLc59SBxQxh+6uxRWBmA5Bymw3M3/Wk3
	 //rAVVktf31neZJnIBV5L/ZQueNbwUVLCYxeOx+J2HYzxbqud55+hW7DZ0Bu+kaV1a
	 9U8b3FKIP5cyuzpXPFwQS8/dOCq0Wi4ZAH4oAIU7itKkEDu8L8dVgXAE7WpC6IkAvu
	 481GesfE2N5khYtaXnj5FEubcmAP4Y3yrXUi3WG61HMV60fciaTDvZlRiaLgJFfKGo
	 /XP3PcfVQX08Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87CDF41438;
	Fri, 12 Jul 2024 09:45:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D50141BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2E4C60654
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5rSnMKYKJrWh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 09:44:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 98A6760643
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98A6760643
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98A6760643
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:57 +0000 (UTC)
X-CSE-ConnectionGUID: pBmVcAQCScmKnl0kdgaIpw==
X-CSE-MsgGUID: QiNfaxY8RPKRIV6qPM7axQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18077000"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="18077000"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 02:44:57 -0700
X-CSE-ConnectionGUID: yf2VA5M8TxOUkSwkTLeh5g==
X-CSE-MsgGUID: hMFeL0atSW+qflhmHc0qTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="49524319"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 12 Jul 2024 02:44:53 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 378DF72;
 Fri, 12 Jul 2024 10:44:52 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jul 2024 05:32:51 -0400
Message-Id: <20240712093251.18683-7-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720777498; x=1752313498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tX/q0fTw9m6ieC+UmmbGKmEl0FvW8c1JEqZGZzmtFOA=;
 b=XUOA7dNjQ2j5uv83cGqNUu9bW519DdCOf83VXNH5rICWNTSBUU0QbJw/
 Ak9UpVaEfCT1NiuWcZi6c0I81BHbhpYPadMDTlkUcnp9K2qagH59L1kjS
 pQH3GZtPJy8kyLpjEd8j/0tEjM0EHXAak0UaxrAW4B4lRKRPBLbUH4QDg
 EqE6luAPNvQbwWaPH325e+RgotEV0z9aydyjiY/KgcCvGZmuATlfWAhL+
 UA9G/CBo1q1GRBEyTT3MH2NoCFQsRGpVUivfRxdI2O5h8fJMPJskwudO+
 p3sCwQEzCJHGeUpCwX2aJyL6Q1h6NuLEqKPzkfN4z25Pds/Hf0Q1VRfse
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XUOA7dNj
Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: devlink health: dump
 also skb on Tx hang
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, joe@perches.com, edumazet@google.com,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Extend Tx hang devlink health reporter dump by skb content.

This commit includes much code copy-pasted from:
- net/core/skbuff.c (function skb_dump() - modified to dump into buffer)
- lib/hexdump.c (function print_hex_dump())

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../intel/ice/devlink/devlink_health.c        | 197 ++++++++++++++++++
 1 file changed, 197 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_health.c b/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
index f9edfabc9be8..1a9b19a7e7e1 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2024, Intel Corporation. */
 
+#include <net/genetlink.h>
 #include "devlink_health.h"
 #include "ice.h"
 #include "ice_ethtool_common.h"
@@ -136,6 +137,188 @@ static void ice_dump_ethtool_stats_to_fmsg(struct devlink_fmsg *fmsg,
 	kfree(stats);
 }
 
+/**
+ * ice_emit_to_buf - print to @size sized buffer
+ *
+ * @buf: buffer to print into
+ * @at: current pos to write in @buf
+ * @size: total space in @buf (incl. prior to @at)
+ * @fmt: format of the message to print
+ *
+ * Return: position in the @buf for next write, @size at most, to ease out
+ * error handling.
+ */
+static __printf(4, 5)
+int ice_emit_to_buf(char *buf, int size, int at, const char *fmt, ...)
+{
+	va_list args;
+	int len;
+
+	va_start(args, fmt);
+	len = vscnprintf(buf + at, size - at, fmt, args);
+	va_end(args);
+
+	return min(at + len, size);
+}
+
+/**
+ * ice_emit_hex_to_buf - copy of print_hex_dump() from lib/hexdump.c modified to
+ * dump into buffer
+ *
+ * @out: buffer to print to
+ * @out_size: total size of @out
+ * @out_pos: position in @out to write at
+ * @prefix: string to prefix each line with;
+ *  caller supplies trailing spaces for alignment if desired
+ * @buf: data blob to dump
+ * @buf_len: number of bytes in the @buf
+ *
+ * Return: position in the buf for next write, buf_len at most, to ease out
+ * error handling.
+ */
+static int ice_emit_hex_to_buf(char *out, int out_size, int out_pos,
+			       const char *prefix, const void *buf,
+			       size_t buf_len)
+{
+	unsigned char linebuf[32 * 3 + 2 + 32 + 1];
+	const int rowsize = 16, groupsize = 1;
+	int i, linelen, remaining = buf_len;
+	const u8 *ptr = buf;
+
+	for (i = 0; i < buf_len; i += rowsize) {
+		linelen = min(remaining, rowsize);
+		remaining -= rowsize;
+
+		hex_dump_to_buffer(ptr + i, linelen, rowsize, groupsize,
+				   linebuf, sizeof(linebuf), false);
+		out_pos = ice_emit_to_buf(out, out_size, out_pos,
+					  "%s%.8x: %s\n", prefix, i, linebuf);
+
+		if (out_pos == out_size)
+			break;
+	}
+
+	return out_pos;
+}
+
+/**
+ * ice_skb_dump_buf - Dump skb information and contents.
+ *
+ * copy of skb_dump() from net/core/skbuff.c, modified to dump into buffer
+ *
+ * @skb: skb to dump
+ * @buf: buffer to dump into
+ * @buf_size: size of @buf
+ * @buf_pos: current position to write in @buf
+ *
+ * Return: position in the buf for next write.
+ */
+static int ice_skb_dump_buf(char *buf, int buf_size, int buf_pos,
+			    const struct sk_buff *skb)
+{
+	struct skb_shared_info *sh = skb_shinfo(skb);
+	struct net_device *dev = skb->dev;
+	const bool toplvl = !buf_pos;
+	struct sock *sk = skb->sk;
+	struct sk_buff *list_skb;
+	bool has_mac, has_trans;
+	int headroom, tailroom;
+	int i, len, seg_len;
+
+	len = skb->len;
+
+	headroom = skb_headroom(skb);
+	tailroom = skb_tailroom(skb);
+
+	has_mac = skb_mac_header_was_set(skb);
+	has_trans = skb_transport_header_was_set(skb);
+
+	buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
+		"skb len=%u headroom=%u headlen=%u tailroom=%u\n"
+		"mac=(%d,%d) net=(%d,%d) trans=%d\n"
+		"shinfo(txflags=%u nr_frags=%u gso(size=%hu type=%u segs=%hu))\n"
+		"csum(0x%x ip_summed=%u complete_sw=%u valid=%u level=%u)\n"
+		"hash(0x%x sw=%u l4=%u) proto=0x%04x pkttype=%u iif=%d\n",
+		skb->len, headroom, skb_headlen(skb), tailroom,
+		has_mac ? skb->mac_header : -1,
+		has_mac ? skb_mac_header_len(skb) : -1,
+		skb->network_header,
+		has_trans ? skb_network_header_len(skb) : -1,
+		has_trans ? skb->transport_header : -1,
+		sh->tx_flags, sh->nr_frags,
+		sh->gso_size, sh->gso_type, sh->gso_segs,
+		skb->csum, skb->ip_summed, skb->csum_complete_sw,
+		skb->csum_valid, skb->csum_level,
+		skb->hash, skb->sw_hash, skb->l4_hash,
+		ntohs(skb->protocol), skb->pkt_type, skb->skb_iif);
+
+	if (dev)
+		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
+					  "dev name=%s feat=%pNF\n", dev->name,
+					  &dev->features);
+	if (sk)
+		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
+					  "sk family=%hu type=%u proto=%u\n",
+					  sk->sk_family, sk->sk_type,
+					  sk->sk_protocol);
+
+	if (headroom)
+		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
+					      "skb headroom: ", skb->head,
+					      headroom);
+
+	seg_len = min_t(int, skb_headlen(skb), len);
+	if (seg_len)
+		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
+					      "skb linear:   ", skb->data,
+					      seg_len);
+	len -= seg_len;
+
+	if (tailroom)
+		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
+					      "skb tailroom: ",
+					      skb_tail_pointer(skb), tailroom);
+
+	for (i = 0; len && i < skb_shinfo(skb)->nr_frags; i++) {
+		skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
+		u32 p_off, p_len, copied;
+		struct page *p;
+		u8 *vaddr;
+
+		skb_frag_foreach_page(frag, skb_frag_off(frag),
+				      skb_frag_size(frag), p, p_off, p_len,
+				      copied) {
+			seg_len = min_t(int, p_len, len);
+			vaddr = kmap_local_page(p);
+			buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
+						      "skb frag:     ",
+						      vaddr + p_off, seg_len);
+			kunmap_local(vaddr);
+			len -= seg_len;
+
+			if (!len || buf_pos == buf_size)
+				break;
+		}
+	}
+
+	if (skb_has_frag_list(skb)) {
+		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
+					  "skb fraglist:\n");
+		skb_walk_frags(skb, list_skb) {
+			buf_pos = ice_skb_dump_buf(buf, buf_size, buf_pos,
+						   list_skb);
+
+			if (buf_pos == buf_size)
+				break;
+		}
+	}
+
+	if (toplvl)
+		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos, ".");
+
+	return buf_pos;
+}
+
 /**
  * ice_fmsg_put_ptr - put hex value of pointer into fmsg
  *
@@ -167,6 +350,10 @@ static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
 				     struct netlink_ext_ack *extack)
 {
 	struct ice_tx_hang_event *event = priv_ctx;
+	char *skb_txt = NULL;
+	struct sk_buff *skb;
+
+	skb = event->tx_ring->tx_buf->skb;
 
 	devlink_fmsg_obj_nest_start(fmsg);
 	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, head);
@@ -178,8 +365,18 @@ static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
 	devlink_fmsg_put(fmsg, "irq-mapping", event->tx_ring->q_vector->name);
 	ice_fmsg_put_ptr(fmsg, "desc-ptr", event->tx_ring->desc);
 	ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)(long)event->tx_ring->dma);
+	ice_fmsg_put_ptr(fmsg, "skb-ptr", skb);
 	devlink_fmsg_binary_pair_put(fmsg, "desc", event->tx_ring->desc,
 				     (event->tx_ring->count * sizeof(struct ice_tx_desc)));
+	if (skb)
+		skb_txt = kvmalloc(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
+
+	if (skb_txt) {
+		ice_skb_dump_buf(skb_txt, GENLMSG_DEFAULT_SIZE, 0, skb);
+		devlink_fmsg_put(fmsg, "skb", skb_txt);
+		kvfree(skb_txt);
+	}
+
 	ice_dump_ethtool_stats_to_fmsg(fmsg, event->tx_ring->vsi->netdev);
 	devlink_fmsg_obj_nest_end(fmsg);
 
-- 
2.38.1


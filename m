Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC98304FAF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 04:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7272863F1;
	Wed, 27 Jan 2021 03:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PVfYpFwB7xWl; Wed, 27 Jan 2021 03:25:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2570A867FD;
	Wed, 27 Jan 2021 03:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF8F81BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB66F86FFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HUO7bp9hQG3c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 03:25:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A85E86F8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 03:25:47 +0000 (UTC)
IronPort-SDR: EUQsiPvLDLpf1E+vCQtGmet+AurxrNyXzrN/y2qbQgEHj4c3+D3fAlDbGuty2p0nJFaa7ht2lE
 PvIsUfBDW56Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180090333"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="180090333"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 19:25:47 -0800
IronPort-SDR: a5DQZrsHkadiY5lHVy6wIMkjr5dFKfpgpwydqP6coAP+7GLtt5nChQaYRIgam+jBvi5nvHOcV1
 FQRH5YKHfhqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="388128835"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.189])
 by orsmga008.jf.intel.com with ESMTP; 26 Jan 2021 19:25:46 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Jan 2021 11:09:03 +0800
Message-Id: <20210127030918.200919-6-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210127030918.200919-1-haiyue.wang@intel.com>
References: <20210127030918.200919-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v3 05/20] ice: Enhanced IPv4 and IPv6 flow
 filter
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, cunming.liang@intel.com,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

Separate IPv4 and IPv6 ptype bit mask table into 2 tables:
With or without L4 protocols.

When a flow filter without any l4 type is specified, the
ICE_FLOW_SEG_HDR_IPV_OTHER flag can be used to describe if user
want to create a IP rule target for all IP packet or just IP
packet without l4 header.

Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 54 ++++++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_flow.h |  4 ++
 2 files changed, 53 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 0892022a16ef..6260650ba809 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -156,7 +156,9 @@ static const u32 ice_ptypes_macvlan_il[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
-/* Packet types for packets with an Outer/First/Single IPv4 header */
+/* Packet types for packets with an Outer/First/Single IPv4 header, does NOT
+ * include IPV4 other PTYPEs
+ */
 static const u32 ice_ptypes_ipv4_ofos[] = {
 	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
 	0x00000000, 0x00000155, 0x00000000, 0x00000000,
@@ -166,6 +168,18 @@ static const u32 ice_ptypes_ipv4_ofos[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Outer/First/Single IPv4 header, includes
+ * IPV4 other PTYPEs
+ */
+static const u32 ice_ptypes_ipv4_ofos_all[] = {
+	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
+	0x00000000, 0x00000155, 0x00000000, 0x00000000,
+	0x00000000, 0x000FC000, 0x83E0F800, 0x00000101,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
@@ -182,7 +196,9 @@ static const u32 ice_ptypes_ipv4_il[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
-/* Packet types for packets with an Outer/First/Single IPv6 header */
+/* Packet types for packets with an Outer/First/Single IPv6 header, does NOT
+ * include IVP6 other PTYPEs
+ */
 static const u32 ice_ptypes_ipv6_ofos[] = {
 	0x00000000, 0x00000000, 0x77000000, 0x10002000,
 	0x00000000, 0x000002AA, 0x00000000, 0x00000000,
@@ -192,6 +208,18 @@ static const u32 ice_ptypes_ipv6_ofos[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Outer/First/Single IPv6 header, includes
+ * IPV6 other PTYPEs
+ */
+static const u32 ice_ptypes_ipv6_ofos_all[] = {
+	0x00000000, 0x00000000, 0x77000000, 0x10002000,
+	0x00000000, 0x000002AA, 0x00000000, 0x00000000,
+	0x00080F00, 0x03F00000, 0x7C1F0000, 0x00000206,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
@@ -577,6 +605,9 @@ u16 entry_length; /* # of bytes formatted entry will require */
 #define ICE_FLOW_SEG_HDRS_L4_MASK	\
 	(ICE_FLOW_SEG_HDR_ICMP | ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | \
 	 ICE_FLOW_SEG_HDR_SCTP)
+/* mask for L4 protocols that are NOT part of IPV4/6 OTHER PTYPE groups */
+#define ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER	\
+	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_SCTP)
 
 /**
  * ice_flow_val_hdrs - validates packet segments for valid protocol headers
@@ -692,8 +723,21 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 				   (const unsigned long *)ice_ptypes_arp_of,
 				   ICE_FLOW_PTYPE_MAX);
 		}
+
 		if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
-		    !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)) {
+		    (hdrs & ICE_FLOW_SEG_HDR_IPV_OTHER)) {
+			src = i ? (const unsigned long *)ice_ptypes_ipv4_il :
+				(const unsigned long *)ice_ptypes_ipv4_ofos_all;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV6) &&
+			   (hdrs & ICE_FLOW_SEG_HDR_IPV_OTHER)) {
+			src = i ? (const unsigned long *)ice_ptypes_ipv6_il :
+				(const unsigned long *)ice_ptypes_ipv6_ofos_all;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
+			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER)) {
 			src = !i ? (const unsigned long *)ice_ipv4_ofos_no_l4 :
 				(const unsigned long *)ice_ipv4_il_no_l4;
 			bitmap_and(params->ptypes, params->ptypes, src,
@@ -704,7 +748,7 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
 		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV6) &&
-			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)) {
+			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER)) {
 			src = !i ? (const unsigned long *)ice_ipv6_ofos_no_l4 :
 				(const unsigned long *)ice_ipv6_il_no_l4;
 			bitmap_and(params->ptypes, params->ptypes, src,
@@ -1793,7 +1837,7 @@ ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs, u64 hash_fields,
 	ICE_FLOW_SET_HDRS(segs, flow_hdr);
 
 	if (segs->hdrs & ~ICE_FLOW_RSS_SEG_HDR_VAL_MASKS &
-	    ~ICE_FLOW_RSS_HDRS_INNER_MASK)
+	    ~ICE_FLOW_RSS_HDRS_INNER_MASK & ~ICE_FLOW_SEG_HDR_IPV_OTHER)
 		return ICE_ERR_PARAM;
 
 	val = (u64)(segs->hdrs & ICE_FLOW_RSS_SEG_HDR_L3_MASKS);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index ed8b8dcf8fee..a5434fcbce25 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -135,6 +135,10 @@ enum ice_flow_seg_hdr {
 	ICE_FLOW_SEG_HDR_ESP		= 0x00100000,
 	ICE_FLOW_SEG_HDR_AH		= 0x00200000,
 	ICE_FLOW_SEG_HDR_NAT_T_ESP	= 0x00400000,
+	/* The following is an additive bit for ICE_FLOW_SEG_HDR_IPV4 and
+	 * ICE_FLOW_SEG_HDR_IPV6 which include the IPV4 other PTYPEs
+	 */
+	ICE_FLOW_SEG_HDR_IPV_OTHER      = 0x20000000,
 };
 
 /* These segments all have the same PTYPES, but are otherwise distinguished by
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

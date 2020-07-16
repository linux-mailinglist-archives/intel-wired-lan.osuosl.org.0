Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B643A2223FB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 15:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6180288EFD;
	Thu, 16 Jul 2020 13:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DmGSwAlhTOuE; Thu, 16 Jul 2020 13:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BE7788EF5;
	Thu, 16 Jul 2020 13:35:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA67C1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CC5AC8A689
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 59QI3PXZce2Y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 13:35:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED3978A68C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:46 +0000 (UTC)
IronPort-SDR: aPvvOuHIvKhfQ5GBcU1VuZf3MvXCaqvHMnZieU9nh7vFkLH7CSqAIJJdULfZc/TjPb9jfRWs18
 +0qkkYoMQLiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="147366316"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="147366316"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 06:35:46 -0700
IronPort-SDR: ahWSusEAfxCpLhRqAfgiT3oQYD9reiwPxBqeuBEWGyP7jVxwNQ4GHOs3D2UQ9nelOg0HcYU04G
 CTW1eEqY5/2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460474356"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2020 06:35:45 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jul 2020 21:39:28 +0800
Message-Id: <20200716133938.46921-7-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20200716133938.46921-1-qi.z.zhang@intel.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
Subject: [Intel-wired-lan] [PATCH S48 v6 06/16] ice: Enhanced IPv4 and IPv6
 flow filter
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
Cc: qi.z.zhang@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Separate IPv4 and IPv6 ptype bit mask table into 2 tables:
With or without L4 protocols.

When a flow filter without any l4 type is specified, the
ICE_FLOW_SEG_HDR_IPV_OTHER flag can be used to describe if user
want to create a IP rule target for all IP packet or just IP
packet without l4 header.

Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 111 ++++++++++++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_flow.h |   4 ++
 2 files changed, 111 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 4571e2c2cb29..2d4c4732fda6 100644
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
@@ -208,6 +236,54 @@ static const u32 ice_ptypes_ipv6_il[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
+/* Packet types for packets with an Outer/First/Single IPv4 header - no L4 */
+static const u32 ice_ipv4_ofos_no_l4[] = {
+	0x10C00000, 0x04000800, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Innermost/Last IPv4 header - no L4 */
+static const u32 ice_ipv4_il_no_l4[] = {
+	0x60000000, 0x18043008, 0x80000002, 0x6010c021,
+	0x00000008, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Outer/First/Single IPv6 header - no L4 */
+static const u32 ice_ipv6_ofos_no_l4[] = {
+	0x00000000, 0x00000000, 0x43000000, 0x10002000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Innermost/Last IPv6 header - no L4 */
+static const u32 ice_ipv6_il_no_l4[] = {
+	0x00000000, 0x02180430, 0x0000010c, 0x086010c0,
+	0x00000430, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
 /* Packet types for packets with an Outermost/First ARP header */
 static const u32 ice_ptypes_arp_of[] = {
 	0x00000800, 0x00000000, 0x00000000, 0x00000000,
@@ -552,6 +628,9 @@ struct ice_flow_prof_params {
 #define ICE_FLOW_SEG_HDRS_L4_MASK	\
 	(ICE_FLOW_SEG_HDR_ICMP | ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | \
 	 ICE_FLOW_SEG_HDR_SCTP)
+/* mask for L4 protocols that are NOT part of IPV4/6 OTHER PTYPE groups */
+#define ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER	\
+	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_SCTP)
 
 /**
  * ice_flow_val_hdrs - validates packet segments for valid protocol headers
@@ -668,11 +747,35 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 				   ICE_FLOW_PTYPE_MAX);
 		}
 
-		if (hdrs & ICE_FLOW_SEG_HDR_IPV4) {
+		if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
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
+			src = !i ? (const unsigned long *)ice_ipv4_ofos_no_l4 :
+				(const unsigned long *)ice_ipv4_il_no_l4;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_IPV4) {
 			src = !i ? (const unsigned long *)ice_ptypes_ipv4_ofos :
 				(const unsigned long *)ice_ptypes_ipv4_il;
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
+		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV6) &&
+			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER)) {
+			src = !i ? (const unsigned long *)ice_ipv6_ofos_no_l4 :
+				(const unsigned long *)ice_ipv6_il_no_l4;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
 		} else if (hdrs & ICE_FLOW_SEG_HDR_IPV6) {
 			src = !i ? (const unsigned long *)ice_ptypes_ipv6_ofos :
 				(const unsigned long *)ice_ptypes_ipv6_il;
@@ -1758,7 +1861,7 @@ ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs, u64 hash_fields,
 	ICE_FLOW_SET_HDRS(segs, flow_hdr);
 
 	if (segs->hdrs & ~ICE_FLOW_RSS_SEG_HDR_VAL_MASKS &
-	    ~ICE_FLOW_RSS_HDRS_INNER_MASK)
+	    ~ICE_FLOW_RSS_HDRS_INNER_MASK & ~ICE_FLOW_SEG_HDR_IPV_OTHER)
 		return ICE_ERR_PARAM;
 
 	val = (u64)(segs->hdrs & ICE_FLOW_RSS_SEG_HDR_L3_MASKS);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index f91b96f163c4..30b493bc2f63 100644
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
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

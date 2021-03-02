Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2261832A935
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:22:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C70B44EBA6;
	Tue,  2 Mar 2021 18:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mxobbZx6s5EP; Tue,  2 Mar 2021 18:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEE744EB99;
	Tue,  2 Mar 2021 18:22:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DAB01BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6E38606BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kKdiI9gOL0aK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F2EF606CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
IronPort-SDR: EaN8GCu7JX34scWApTb6Fr/vejPnwlFrVPu3BLB6gQAIV2TJSjSTlLi2rXR7V6v02j3n4lO6v7
 Vsy654Q12d6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="166813978"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="166813978"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:21:48 -0800
IronPort-SDR: zmFgoinYkI9Mc6Qls87U+k6LKnq9nNyQsHjKkfhkIYNINHmrKJaX2unmCnHeZ6YkKjTK3dUKkz
 Mbz0Vh8B2tpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="369051176"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2021 10:21:45 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:12:11 -0800
Message-Id: <20210302181213.51718-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S55 12/14] ice: rename ptype bitmap
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

From: Qi Zhang <qi.z.zhang@intel.com>

Align all ptype bitmap to follow ice_ptypes_xxx prefix.

Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index ceb802ab76c0..2eec44ef2346 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -237,7 +237,7 @@ static const u32 ice_ptypes_ipv6_il[] = {
 };
 
 /* Packet types for packets with an Outer/First/Single IPv4 header - no L4 */
-static const u32 ice_ipv4_ofos_no_l4[] = {
+static const u32 ice_ptypes_ipv4_ofos_no_l4[] = {
 	0x10C00000, 0x04000800, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -261,7 +261,7 @@ static const u32 ice_ptypes_arp_of[] = {
 };
 
 /* Packet types for packets with an Innermost/Last IPv4 header - no L4 */
-static const u32 ice_ipv4_il_no_l4[] = {
+static const u32 ice_ptypes_ipv4_il_no_l4[] = {
 	0x60000000, 0x18043008, 0x80000002, 0x6010c021,
 	0x00000008, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -273,7 +273,7 @@ static const u32 ice_ipv4_il_no_l4[] = {
 };
 
 /* Packet types for packets with an Outer/First/Single IPv6 header - no L4 */
-static const u32 ice_ipv6_ofos_no_l4[] = {
+static const u32 ice_ptypes_ipv6_ofos_no_l4[] = {
 	0x00000000, 0x00000000, 0x43000000, 0x10002000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -285,7 +285,7 @@ static const u32 ice_ipv6_ofos_no_l4[] = {
 };
 
 /* Packet types for packets with an Innermost/Last IPv6 header - no L4 */
-static const u32 ice_ipv6_il_no_l4[] = {
+static const u32 ice_ptypes_ipv6_il_no_l4[] = {
 	0x00000000, 0x02180430, 0x0000010c, 0x086010c0,
 	0x00000430, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -749,8 +749,8 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 				   ICE_FLOW_PTYPE_MAX);
 		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
 			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER)) {
-			src = !i ? (const unsigned long *)ice_ipv4_ofos_no_l4 :
-				(const unsigned long *)ice_ipv4_il_no_l4;
+			src = !i ? (const unsigned long *)ice_ptypes_ipv4_ofos_no_l4 :
+				(const unsigned long *)ice_ptypes_ipv4_il_no_l4;
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
 		} else if (hdrs & ICE_FLOW_SEG_HDR_IPV4) {
@@ -760,8 +760,8 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 				   ICE_FLOW_PTYPE_MAX);
 		} else if ((hdrs & ICE_FLOW_SEG_HDR_IPV6) &&
 			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK_NO_OTHER)) {
-			src = !i ? (const unsigned long *)ice_ipv6_ofos_no_l4 :
-				(const unsigned long *)ice_ipv6_il_no_l4;
+			src = !i ? (const unsigned long *)ice_ptypes_ipv6_ofos_no_l4 :
+				(const unsigned long *)ice_ptypes_ipv6_il_no_l4;
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
 		} else if (hdrs & ICE_FLOW_SEG_HDR_IPV6) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5681525B072
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Sep 2020 17:59:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B64F869C1;
	Wed,  2 Sep 2020 15:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MLNztdasq4pB; Wed,  2 Sep 2020 15:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5372D869A3;
	Wed,  2 Sep 2020 15:59:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6DB41BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D061E2033D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OfBA4EpGAlmo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 15:58:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A4512286C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:56 +0000 (UTC)
IronPort-SDR: I6vuduOZG/e/vkdeli+/45m8x5ZAjzP2QRmHR0+cbCd3U1JLLq4HnTFgCvbzWAEIx0qByoZNHe
 sP27IpHp6MIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="158409179"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="158409179"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 08:58:54 -0700
IronPort-SDR: 9WzvfZN7ydPCcwBQxz0o9gqWtODauweJYPRHMEewwwngL2QeCb/TtUwIgutgLQGRm99/g/Q9u9
 2b8N/kNdYaPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="301882256"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2020 08:58:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 08:53:43 -0700
Message-Id: <20200902155347.16972-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
References: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 2/6] ice: fix adding IP4 IP6 Flow Director
 rules
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

From: Dan Nowlin <dan.nowlin@intel.com>

A subsequent addition of an IP4 or IP6 rule after other rules would
overwrite any existing TCAM entries of related L4 protocols(ex: tcp4 or
udp6). This was due to the mask including too many TCAM entries. Add new
packet type masks with bits properly excluded so rules are not overwritten.

Fixes: 31ad4e4ee1e4 ("ice: Allocate flow profile")
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 62 ++++++++++++++++++++++-
 1 file changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index fe677621dd51..26fa2c915ac6 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -99,6 +99,54 @@ static const u32 ice_ptypes_ipv6_il[] = {
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
 /* UDP Packet types for non-tunneled packets or tunneled
  * packets with inner UDP.
  */
@@ -250,11 +298,23 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 
 		hdrs = prof->segs[i].hdrs;
 
-		if (hdrs & ICE_FLOW_SEG_HDR_IPV4) {
+		if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
+		    !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)) {
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
+			   !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)) {
+			src = !i ? (const unsigned long *)ice_ipv6_ofos_no_l4 :
+				(const unsigned long *)ice_ipv6_il_no_l4;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
 		} else if (hdrs & ICE_FLOW_SEG_HDR_IPV6) {
 			src = !i ? (const unsigned long *)ice_ptypes_ipv6_ofos :
 				(const unsigned long *)ice_ptypes_ipv6_il;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

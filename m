Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DC11B805D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 530F287FCD;
	Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FFQLVPMBb+pI; Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4015987FD3;
	Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69DCA1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 66BBF86B59
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KkIF7bX243Bh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5F1486B89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:25 +0000 (UTC)
IronPort-SDR: zuNvlSoGGnvWeD7T7+l0N5CtYqWIMGuqW1RxCL8k4QShaPlLmW4bo1jCVgaIJqGQ04O8wRGUdf
 nZaPpOD0qsDw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:25 -0700
IronPort-SDR: CEuIPDecYFBHF1HtP0QSt6CtZlCn8jtLPwqun6Vhr6mGhdLPvqPV5ylBOeotMWOELfq890ca5L
 eIMmu79ztMKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474504"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:25 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:08 -0700
Message-Id: <20200424201623.10971-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 04/19] igc: Early return in
 igc_get_ethtool_nfc_entry()
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

This patch re-writes the second half of igc_ethtool_get_nfc_entry() to
follow the 'return early' pattern seen in other parts of the driver and
removes some duplicate comments.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 58 ++++++++++----------
 1 file changed, 28 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index c67c3ead323f..45481b1c9ee3 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -945,38 +945,36 @@ static int igc_get_ethtool_nfc_entry(struct igc_adapter *adapter,
 	if (!rule || fsp->location != rule->sw_idx)
 		return -EINVAL;
 
-	if (rule->filter.match_flags) {
-		fsp->flow_type = ETHER_FLOW;
-		fsp->ring_cookie = rule->action;
-		if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
-			fsp->h_u.ether_spec.h_proto = rule->filter.etype;
-			fsp->m_u.ether_spec.h_proto = ETHER_TYPE_FULL_MASK;
-		}
-		if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-			fsp->flow_type |= FLOW_EXT;
-			fsp->h_ext.vlan_tci = rule->filter.vlan_tci;
-			fsp->m_ext.vlan_tci = htons(VLAN_PRIO_MASK);
-		}
-		if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
-			ether_addr_copy(fsp->h_u.ether_spec.h_dest,
-					rule->filter.dst_addr);
-			/* As we only support matching by the full
-			 * mask, return the mask to userspace
-			 */
-			eth_broadcast_addr(fsp->m_u.ether_spec.h_dest);
-		}
-		if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
-			ether_addr_copy(fsp->h_u.ether_spec.h_source,
-					rule->filter.src_addr);
-			/* As we only support matching by the full
-			 * mask, return the mask to userspace
-			 */
-			eth_broadcast_addr(fsp->m_u.ether_spec.h_source);
-		}
+	if (!rule->filter.match_flags)
+		return -EINVAL;
 
-		return 0;
+	fsp->flow_type = ETHER_FLOW;
+	fsp->ring_cookie = rule->action;
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
+		fsp->h_u.ether_spec.h_proto = rule->filter.etype;
+		fsp->m_u.ether_spec.h_proto = ETHER_TYPE_FULL_MASK;
 	}
-	return -EINVAL;
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
+		fsp->flow_type |= FLOW_EXT;
+		fsp->h_ext.vlan_tci = rule->filter.vlan_tci;
+		fsp->m_ext.vlan_tci = htons(VLAN_PRIO_MASK);
+	}
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
+		ether_addr_copy(fsp->h_u.ether_spec.h_dest,
+				rule->filter.dst_addr);
+		eth_broadcast_addr(fsp->m_u.ether_spec.h_dest);
+	}
+
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
+		ether_addr_copy(fsp->h_u.ether_spec.h_source,
+				rule->filter.src_addr);
+		eth_broadcast_addr(fsp->m_u.ether_spec.h_source);
+	}
+
+	return 0;
 }
 
 static int igc_get_ethtool_nfc_all(struct igc_adapter *adapter,
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

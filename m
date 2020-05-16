Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C171D5D57
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:45:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46F1A88A7E;
	Sat, 16 May 2020 00:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSvoinHWUL07; Sat, 16 May 2020 00:45:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CAA7890B2;
	Sat, 16 May 2020 00:45:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3321D1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 29F75881F1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WgoCCx_5KJ2G for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:45:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 776FC87F93
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:01 +0000 (UTC)
IronPort-SDR: G9baYJiBJoX/IJzNBF0oPhAb1LWw4bC4XycODsxgDDTMhxiQN9Sf4JwcmVm4padsun/2QTxtDr
 1pmwzsooNufA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:45:00 -0700
IronPort-SDR: f3kPV/vYtDTkQUOP1GxThVqRPK7kGIHtZDCraA5zJS1LA1Z+FfJvogg1meVmp7qRHHXiJP0b2g
 kQWplJfMK8/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="287960350"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2020 17:45:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:42:19 -0700
Message-Id: <20200516004226.4795-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S44 07/14] ice: Refactor Rx checksum checks
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

We don't need both rx_status and rx_error parameters, as the latter is
a subset of the former. Remove rx_error completely and check the right bit
in rx_status.

Rename rx_status to rx_status0, and rx_status_err1 to
rx_status1. This naming more closely reflects the specification.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 27 ++++++++-----------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 1ba97172d8d0..ab2031b1c635 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -84,17 +84,12 @@ ice_rx_csum(struct ice_ring *ring, struct sk_buff *skb,
 	    union ice_32b_rx_flex_desc *rx_desc, u8 ptype)
 {
 	struct ice_rx_ptype_decoded decoded;
-	u16 rx_error, rx_status;
-	u16 rx_stat_err1;
+	u16 rx_status0, rx_status1;
 	bool ipv4, ipv6;
 
-	rx_status = le16_to_cpu(rx_desc->wb.status_error0);
-	rx_error = rx_status & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S) |
-				BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S) |
-				BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S) |
-				BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S));
+	rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
+	rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
 
-	rx_stat_err1 = le16_to_cpu(rx_desc->wb.status_error1);
 	decoded = ice_decode_rx_desc_ptype(ptype);
 
 	/* Start with CHECKSUM_NONE and by default csum_level = 0 */
@@ -106,7 +101,7 @@ ice_rx_csum(struct ice_ring *ring, struct sk_buff *skb,
 		return;
 
 	/* check if HW has decoded the packet and checksum */
-	if (!(rx_status & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
+	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
 		return;
 
 	if (!(decoded.known && decoded.outer_ip))
@@ -117,22 +112,22 @@ ice_rx_csum(struct ice_ring *ring, struct sk_buff *skb,
 	ipv6 = (decoded.outer_ip == ICE_RX_PTYPE_OUTER_IP) &&
 	       (decoded.outer_ip_ver == ICE_RX_PTYPE_OUTER_IPV6);
 
-	if (ipv4 && (rx_error & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S) |
-				 BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S))))
+	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S) |
+				   BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S))))
 		goto checksum_fail;
-	else if (ipv6 && (rx_status &
-		 (BIT(ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S))))
+
+	if (ipv6 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S))))
 		goto checksum_fail;
 
 	/* check for L4 errors and handle packets that were not able to be
 	 * checksummed due to arrival speed
 	 */
-	if (rx_error & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S))
+	if (rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S))
 		goto checksum_fail;
 
 	/* check for outer UDP checksum error in tunneled packets */
-	if ((rx_stat_err1 & BIT(ICE_RX_FLEX_DESC_STATUS1_NAT_S)) &&
-	    (rx_error & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S)))
+	if ((rx_status1 & BIT(ICE_RX_FLEX_DESC_STATUS1_NAT_S)) &&
+	    (rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S)))
 		goto checksum_fail;
 
 	/* If there is an outer header present that might contain a checksum
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

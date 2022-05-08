Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D5D51F553
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 May 2022 09:32:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D7EC60F32;
	Mon,  9 May 2022 07:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SNCHUXS2wnK7; Mon,  9 May 2022 07:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EEEF60AC4;
	Mon,  9 May 2022 07:32:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F5C91BF2A2
 for <intel-wired-lan@osuosl.org>; Mon,  9 May 2022 07:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91D6960AC4
 for <intel-wired-lan@osuosl.org>; Mon,  9 May 2022 07:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g7RiScHGi59C for <intel-wired-lan@osuosl.org>;
 Mon,  9 May 2022 07:32:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2228260A99
 for <intel-wired-lan@osuosl.org>; Mon,  9 May 2022 07:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652081530; x=1683617530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MG9bc1JrTE0HCXNptDsaoy5mOa4dTN9ls8h8mWAfmbc=;
 b=GFXxib17MPqs3ZHA4zfHcD32+PJEMLSdHKQVvOrnYoGGqCrvlgn0kERJ
 z9+mGgab6XqQPUKoRhmUHab/oy0Iv++zCquaEPcf3DScXdjdNVsu0Zw1Q
 OgSuE/eHzfHEpE0UBEpxxsg/1rjZOdotjgtUuc/ST0Atf2hJ130yjxpSb
 TO2U9B0HV+sUCkNewz2nBuZp6YINcswIzyYRCoGS1drWYC8kauB5ZGbcj
 HlsBJYDsoz0J1WY6eEAYK3dIhBhn2P8BJIx7Gky9JjFi+JxG4uey1qoHU
 +rDt69P7Y/g4SIe2Dy90v4ObnZHQ12dUCAe1BAVnlfSo6jS0TBTS+kXhG w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="268893602"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="268893602"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:32:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="564921257"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:32:06 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sun,  8 May 2022 19:33:48 -0400
Message-Id: <20220508233348.546388-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix interrupt moderation
 settings getting cleared
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adaptive-rx and Adaptive-tx are interrupt moderation settings
that can be enabled/disabled using ethtool:
ethtool -C ethX adaptive-rx on/off adaptive-tx on/off

Unfortunately those settings are getting cleared after
changing number of queues, or in ethtool world 'channels':
ethtool -L ethX rx 1 tx 1

Clearing was happening due to introduction of bit fields
in ice_ring_container struct. This way only itr_setting
bits were rebuilt during ice_vsi_rebuild_set_coalesce().

Introduce an anonymous struct of bitfields and create a
union to refer to them as a single variable.
This way variable can be easily saved and restored.

Fixes: 61dc79ced7aa ("ice: Restore interrupt throttle settings after VSI rebuild")
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
Internal-review:

v4:
-Moved Singed-off-by tag to the end of the commit

v3:
-Added proper Fixes tag

v2:
-Changed argument to ice_write_itr to rc->itr_setting,
 instead of settings in order not to pass unnecessary bits

 drivers/net/ethernet/intel/ice/ice_lib.c  | 16 ++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.h | 11 ++++++++---
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 6d19c58ccacd..454e01ae09b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3043,8 +3043,8 @@ ice_vsi_rebuild_get_coalesce(struct ice_vsi *vsi,
 	ice_for_each_q_vector(vsi, i) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[i];
 
-		coalesce[i].itr_tx = q_vector->tx.itr_setting;
-		coalesce[i].itr_rx = q_vector->rx.itr_setting;
+		coalesce[i].itr_tx = q_vector->tx.itr_settings;
+		coalesce[i].itr_rx = q_vector->rx.itr_settings;
 		coalesce[i].intrl = q_vector->intrl;
 
 		if (i < vsi->num_txq)
@@ -3100,21 +3100,21 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 		 */
 		if (i < vsi->alloc_rxq && coalesce[i].rx_valid) {
 			rc = &vsi->q_vectors[i]->rx;
-			rc->itr_setting = coalesce[i].itr_rx;
+			rc->itr_settings = coalesce[i].itr_rx;
 			ice_write_itr(rc, rc->itr_setting);
 		} else if (i < vsi->alloc_rxq) {
 			rc = &vsi->q_vectors[i]->rx;
-			rc->itr_setting = coalesce[0].itr_rx;
+			rc->itr_settings = coalesce[0].itr_rx;
 			ice_write_itr(rc, rc->itr_setting);
 		}
 
 		if (i < vsi->alloc_txq && coalesce[i].tx_valid) {
 			rc = &vsi->q_vectors[i]->tx;
-			rc->itr_setting = coalesce[i].itr_tx;
+			rc->itr_settings = coalesce[i].itr_tx;
 			ice_write_itr(rc, rc->itr_setting);
 		} else if (i < vsi->alloc_txq) {
 			rc = &vsi->q_vectors[i]->tx;
-			rc->itr_setting = coalesce[0].itr_tx;
+			rc->itr_settings = coalesce[0].itr_tx;
 			ice_write_itr(rc, rc->itr_setting);
 		}
 
@@ -3128,12 +3128,12 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 	for (; i < vsi->num_q_vectors; i++) {
 		/* transmit */
 		rc = &vsi->q_vectors[i]->tx;
-		rc->itr_setting = coalesce[0].itr_tx;
+		rc->itr_settings = coalesce[0].itr_tx;
 		ice_write_itr(rc, rc->itr_setting);
 
 		/* receive */
 		rc = &vsi->q_vectors[i]->rx;
-		rc->itr_setting = coalesce[0].itr_rx;
+		rc->itr_settings = coalesce[0].itr_rx;
 		ice_write_itr(rc, rc->itr_setting);
 
 		vsi->q_vectors[i]->intrl = coalesce[0].intrl;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index f5a906c03669..ca902af54bb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -385,9 +385,14 @@ struct ice_ring_container {
 	/* this matches the maximum number of ITR bits, but in usec
 	 * values, so it is shifted left one bit (bit zero is ignored)
 	 */
-	u16 itr_setting:13;
-	u16 itr_reserved:2;
-	u16 itr_mode:1;
+	union {
+		struct {
+			u16 itr_setting:13;
+			u16 itr_reserved:2;
+			u16 itr_mode:1;
+		};
+		u16 itr_settings;
+	};
 	enum ice_container_type type;
 };
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

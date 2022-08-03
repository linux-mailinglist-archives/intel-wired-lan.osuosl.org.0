Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0045888CF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Aug 2022 10:43:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06F7E40743;
	Wed,  3 Aug 2022 08:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06F7E40743
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659516226;
	bh=hDAhOqkg1u+tYgv13P1Hj98P8/V5Kr9kwC38HjGpNRo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=L9FzQvuq3zVDEhRp7qIkfktLvCLygLgU0r5RHsKkNW5nzhPxrucSMOeZBlQ8zzriW
	 3kG2z8vDrtnwLxoYKN/BBfX5vz0u5hZ1ow86YGfrUdcGsS2n4ERR8gsLvUyxa5VMm4
	 UjBoW3r+IdMTKHMW7TlatJE/YsJut6WN7IJYz6f7vmMLcp33Jjcu2eUZdrn5hah/1I
	 jHzXn4KWIBVcZux5fEpFEYjiYH2atbXkZlYiKGV9o/fkx0VfF6RpS4SaMTPJahMJpw
	 LqCVnDQN7oaRocGu2bl/LGcEjs00gXuo2AFTVZFwzxCKQi1xXEhP4EjTT+ldtLwf/j
	 x0T/yKDNICi5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iqys2rDNCkAQ; Wed,  3 Aug 2022 08:43:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79BEB4054E;
	Wed,  3 Aug 2022 08:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79BEB4054E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 524841BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 08:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2BE8780C64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 08:43:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BE8780C64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qtejA-2rLwWp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Aug 2022 08:43:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D17C880C1C
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D17C880C1C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 08:43:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="270000754"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="270000754"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:43:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="692169824"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Aug 2022 01:43:33 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Aug 2022 10:42:46 +0200
Message-Id: <20220803084246.213685-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659516216; x=1691052216;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6/y2BH7zaQkCN2gVJYrG5AW51qGXvG7kakEdan4sF9o=;
 b=PN090Ul780tH757IGe/Iun7QX/Oio7HM2zxaHDeusRREZzpqFq+P+uZ7
 9MHqb37Y7Ffbbq/TKG2gNwbD0TtXPJchgzLZyLroSeKf0zWVVRdb2ChGp
 WohMpc5g8bwuRM3C4chbNKBKWdeYQS2t4lTAwL+0GPRSu8NE+XxMhGZVh
 lzPkaO0smR2NKMNpxlmWPZHWPJDHAcyZWLmUjZ5pc5NcvuKGpuLT/R7oK
 QFXZow6Lp4xw2h2XnngXz81yeJi09Od8nhkxtcHUzXfivy/xTD5JPK82b
 8D5GqYDvmj69Wg7iQ7qqoBA1NBmqmyzjVG79HF517q6nM4catjzOXde0H
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PN090Ul7
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix VF not able to send
 tagged traffic with no VLAN filters
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

VF was not able to send tagged traffic when it didn't
have any VLAN interfaces and VLAN anti-spoofing was enabled.
Fix this by allowing VFs with no VLAN filters to send tagged
traffic. After VF adds a VLAN interface it will be able to
send tagged traffic matching VLAN filters only.

Testing hints:
1. Spawn VF
2. Send tagged packet from a VF
3. The packet should be sent out and not dropped
4. Add a VLAN interface on VF
5. Send tagged packet on that VLAN interface
6. Packet should be sent out and not dropped
7. Send tagged packet with id different than VLAN interface
8. Packet should be dropped

Fixes: daf4dd16438b ("ice: Refactor spoofcheck configuration functions")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Removed Unnecessary parentheses around 'vsi->type != ICE_VSI_VF'
     Unfortunetly some lines must be over 80 char to make the code more  readable
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 11 ++--
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 57 ++++++++++++++++---
 2 files changed, 57 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 2d6130af1d40..7775aaa8cc43 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -707,13 +707,16 @@ static int ice_cfg_mac_antispoof(struct ice_vsi *vsi, bool enable)
 static int ice_vsi_ena_spoofchk(struct ice_vsi *vsi)
 {
 	struct ice_vsi_vlan_ops *vlan_ops;
-	int err;
+	int err = 0;
 
 	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
 
-	err = vlan_ops->ena_tx_filtering(vsi);
-	if (err)
-		return err;
+	/* Allow VF with VLAN 0 only to send all tagged traffic */
+	if (vsi->type != ICE_VSI_VF || ice_vsi_has_non_zero_vlans(vsi)) {
+		err = vlan_ops->ena_tx_filtering(vsi);
+		if (err)
+			return err;
+	}
 
 	return ice_cfg_mac_antispoof(vsi, true);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 24188ec594d5..a241c0bdc150 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2264,6 +2264,15 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 
 			/* Enable VLAN filtering on first non-zero VLAN */
 			if (!vlan_promisc && vid && !ice_is_dvm_ena(&pf->hw)) {
+				if (vf->spoofchk) {
+					status = vsi->inner_vlan_ops.ena_tx_filtering(vsi);
+					if (status) {
+						v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+						dev_err(dev, "Enable VLAN anti-spoofing on VLAN ID: %d failed error-%d\n",
+							vid, status);
+						goto error_param;
+					}
+				}
 				if (vsi->inner_vlan_ops.ena_rx_filtering(vsi)) {
 					v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 					dev_err(dev, "Enable VLAN pruning on VLAN ID: %d failed error-%d\n",
@@ -2309,8 +2318,10 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 			}
 
 			/* Disable VLAN filtering when only VLAN 0 is left */
-			if (!ice_vsi_has_non_zero_vlans(vsi))
+			if (!ice_vsi_has_non_zero_vlans(vsi)) {
+				vsi->inner_vlan_ops.dis_tx_filtering(vsi);
 				vsi->inner_vlan_ops.dis_rx_filtering(vsi);
+			}
 
 			if (vlan_promisc)
 				ice_vf_dis_vlan_promisc(vsi, &vlan);
@@ -2814,6 +2825,13 @@ ice_vc_del_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
 
 			if (vlan_promisc)
 				ice_vf_dis_vlan_promisc(vsi, &vlan);
+
+			/* Disable VLAN filtering when only VLAN 0 is left */
+			if (!ice_vsi_has_non_zero_vlans(vsi) && ice_is_dvm_ena(&vsi->back->hw)) {
+				err = vsi->outer_vlan_ops.dis_tx_filtering(vsi);
+				if (err)
+					return err;
+			}
 		}
 
 		vc_vlan = &vlan_fltr->inner;
@@ -2829,8 +2847,17 @@ ice_vc_del_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
 			/* no support for VLAN promiscuous on inner VLAN unless
 			 * we are in Single VLAN Mode (SVM)
 			 */
-			if (!ice_is_dvm_ena(&vsi->back->hw) && vlan_promisc)
-				ice_vf_dis_vlan_promisc(vsi, &vlan);
+			if (!ice_is_dvm_ena(&vsi->back->hw)) {
+				if (vlan_promisc)
+					ice_vf_dis_vlan_promisc(vsi, &vlan);
+
+				/* Disable VLAN filtering when only VLAN 0 is left */
+				if (!ice_vsi_has_non_zero_vlans(vsi)) {
+					err = vsi->inner_vlan_ops.dis_tx_filtering(vsi);
+					if (err)
+						return err;
+				}
+			}
 		}
 	}
 
@@ -2907,6 +2934,13 @@ ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
 				if (err)
 					return err;
 			}
+
+			/* Enable VLAN filtering on first non-zero VLAN */
+			if (vf->spoofchk && vlan.vid && ice_is_dvm_ena(&vsi->back->hw)) {
+				err = vsi->outer_vlan_ops.ena_tx_filtering(vsi);
+				if (err)
+					return err;
+			}
 		}
 
 		vc_vlan = &vlan_fltr->inner;
@@ -2922,10 +2956,19 @@ ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
 			/* no support for VLAN promiscuous on inner VLAN unless
 			 * we are in Single VLAN Mode (SVM)
 			 */
-			if (!ice_is_dvm_ena(&vsi->back->hw) && vlan_promisc) {
-				err = ice_vf_ena_vlan_promisc(vsi, &vlan);
-				if (err)
-					return err;
+			if (!ice_is_dvm_ena(&vsi->back->hw)) {
+				if (vlan_promisc) {
+					err = ice_vf_ena_vlan_promisc(vsi, &vlan);
+					if (err)
+						return err;
+				}
+
+				/* Enable VLAN filtering on first non-zero VLAN */
+				if (vf->spoofchk && vlan.vid) {
+					err = vsi->inner_vlan_ops.ena_tx_filtering(vsi);
+					if (err)
+						return err;
+				}
 			}
 		}
 	}
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C13DA586C86
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Aug 2022 16:04:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EEFF82419;
	Mon,  1 Aug 2022 14:04:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EEFF82419
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659362676;
	bh=LWM/Ot8pBwak2lQAZqpvea6/qR+8rhOjCsFGiH6YGoY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=stdgQVX9c++1GzSimhhnCDupaAowEv/ToQ9fmWEGEc7JTxL/oLR3dIQbimrA4IIvW
	 S4dRYEbO1G8HfaggxvTRBwMNxToAhmnk+GzxgOry6Gxq2Rfe2aOquesP3lKV0oA/WU
	 qF+u0/fy7l3m6QV77hTa8Y4V7+2g/riHwvN9xIFxvQHySijpNepUtZMahVdC6DJwCn
	 ZMN5p0cBPE3L3TOymCWMe0jDFA5HwJfpHXX4Zcd48tfcX98TNXlC6eakmr+rZt0dKO
	 EsCh6C4hsGIEVKKcfmdrKLaF5fVHedXlPmTq/LM1OU38ptrT8SO0XcQUQX6X0r3VZa
	 Ndx/fJqgAhzXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkJMvJxSFgq9; Mon,  1 Aug 2022 14:04:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2692A8239A;
	Mon,  1 Aug 2022 14:04:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2692A8239A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08CC21BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 14:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1798410C6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 14:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1798410C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n6BhqNayCJfC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Aug 2022 14:04:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58526409F8
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58526409F8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 14:04:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="314978539"
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="314978539"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 07:02:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="602044384"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2022 07:02:49 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  1 Aug 2022 16:12:28 +0000
Message-Id: <20220801161228.874194-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659362668; x=1690898668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LKOkAFu8ir+O9q3iDVNahyRCCPRyaEUW2jynHA+b1uo=;
 b=Ci3ZHCgJkUa1taSoQIoz0aOKga9Y5NG+do9t6AzV7GxQxUbdLzvUTMkY
 k9bT+fcpnZ387I+Agm+OOzKB81ppGNaxROTlvFKe+raGWjdaMwvEt2DP+
 tksMox5tTenj5QXtlLlsOchXl2nX/mgaco8sCThzYu56fgBPPcWq6xM4r
 Nb8PX4NOaVdW0qpKP1c4U+9jvR7D4GeMhSBoVD/59O1fHsRgkfzc97Yu/
 PjjD4r9KFJHnxwSRRkdD8zWxl3tXqa3lUFBi5WjIJmPaV/CdFxahP3ztj
 20wSWzkmv6HheTpF4/6LbB1EZaQZJgvK9zK6+aFUtdwvdcWogE8hp6Cwi
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ci3ZHCgJ
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix VF not able to send
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
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  7 ++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 57 ++++++++++++++++---
 2 files changed, 55 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 2d6130af1d40..2e1bcd44f32b 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -707,11 +707,14 @@ static int ice_cfg_mac_antispoof(struct ice_vsi *vsi, bool enable)
 static int ice_vsi_ena_spoofchk(struct ice_vsi *vsi)
 {
 	struct ice_vsi_vlan_ops *vlan_ops;
-	int err;
+	int err = 0;
 
 	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
 
-	err = vlan_ops->ena_tx_filtering(vsi);
+	/* Allow VF with VLAN 0 only to send all tagged traffic */
+	if ((vsi->type != ICE_VSI_VF) || ice_vsi_has_non_zero_vlans(vsi))
+		err = vlan_ops->ena_tx_filtering(vsi);
+	
 	if (err)
 		return err;
 
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
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

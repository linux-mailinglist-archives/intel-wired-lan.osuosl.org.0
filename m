Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 420839A1B5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 09:08:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95FB2406F9;
	Thu, 17 Oct 2024 07:08:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BLs0l-jIgnPe; Thu, 17 Oct 2024 07:08:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7EF7406EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729148906;
	bh=0lTStNXXuNVMbPmlGCYwK05rykQ/QTuzTTVPV36fJLk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KdQeP+xH9YLScoxffmBMZwsZcl41u3524YwXs2FB7hiGAjC6fkN/XbKWvt5BMnrQI
	 H4Rx6K8krrg+c3cgCbFJhzVaR3lu/BNcMG3D409GqDWDGIQNRfxVa2GujZNRQsguqY
	 IVAlmjSXedkfubCFeU14XupdMpsJ5QzpZtduWHPzUDGpIiIjdq0SFFVlu4ov0pSFmm
	 Yy+QzJGUnNOmr6SUujo9czMzMaMT+R0WtRzEFUONC3mhfGrwKuOMTVIRkoQSIPp7ra
	 FIqjTjbKeL5OtIUnP8FF60flTjwwN6dd36nqECWYg+MohvImSLgtzZ+xF3fIEuRuwx
	 mJIadU/8smylw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7EF7406EF;
	Thu, 17 Oct 2024 07:08:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 360E8972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 07:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0DC404061F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 07:08:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LMhpN7h2uE_E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 07:08:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8AD2740286
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AD2740286
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8AD2740286
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 07:08:20 +0000 (UTC)
X-CSE-ConnectionGUID: ghnEiRjGRz6Vw2qyWyLlIA==
X-CSE-MsgGUID: cebpR8PZSUeQMBmn0cUERA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28410638"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28410638"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 00:08:19 -0700
X-CSE-ConnectionGUID: vuccogX9Q8GCY1dADEMQhQ==
X-CSE-MsgGUID: Qr4Gmy39QZqU6aPPdNQtSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78494121"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa008.fm.intel.com with ESMTP; 17 Oct 2024 00:08:17 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, brett.creeley@amd.com, mateusz.polchlopek@intel.com
Date: Thu, 17 Oct 2024 09:08:16 +0200
Message-ID: <20241017070816.189630-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729148901; x=1760684901;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C8il09Zid+NlX4kVgauTunq+ykY+xAP2npwH8kPEciM=;
 b=dziDsaZzsWjzIwb9LS0I0wkhXi7bff8A7D0F0HroPEBrub0ds2KaUjBy
 DWaWW3D4jB14PYXmxuG/GjfAVT2447NTI5u47tNzwlmwiHwyFcPpF/tBr
 a0TATmBZDEeaaJ73Nn/daytN7yD+SJ1nu8uGfCyZb1kHz7z3D4/moAFTF
 aJINxqBKUF+aRDG8Mtxr+u2u8LoS2xUz1SJ/O27gLF8KKgpoofrMwzdKZ
 6urTb5ZBdzl0fEt4VO+mFqavkNqwI4vhHx+Wq5GViqcK3ZlArfzbETFrC
 O5geYiXa+g21AorrggFMmQuIBFT7WuoWUZ7mfj7AHbuCFyHtW8PXqpz0Q
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dziDsaZz
Subject: [Intel-wired-lan] [iwl-next v1] ice: only allow Tx promiscuous for
 multicast
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Currently when any VF is trusted and true promiscuous mode is enabled on
the PF, the VF will receive all unicast traffic directed to the device's
internal switch. This includes traffic external to the NIC and also from
other VSI (i.e. VFs). This does not match the expected behavior as
unicast traffic should only be visible from external sources in this
case. Disable the Tx promiscuous mode bits for unicast promiscuous mode.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  6 ++---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 23 ++++++++++++++-----
 2 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d2235e8bfea4..cae5cac74389 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -182,11 +182,9 @@
 #define ice_for_each_chnl_tc(i)	\
 	for ((i) = ICE_CHNL_START_TC; (i) < ICE_CHNL_MAX_TC; (i)++)
 
-#define ICE_UCAST_PROMISC_BITS (ICE_PROMISC_UCAST_TX | ICE_PROMISC_UCAST_RX)
+#define ICE_UCAST_PROMISC_BITS ICE_PROMISC_UCAST_RX
 
-#define ICE_UCAST_VLAN_PROMISC_BITS (ICE_PROMISC_UCAST_TX | \
-				     ICE_PROMISC_UCAST_RX | \
-				     ICE_PROMISC_VLAN_TX  | \
+#define ICE_UCAST_VLAN_PROMISC_BITS (ICE_PROMISC_UCAST_RX | \
 				     ICE_PROMISC_VLAN_RX)
 
 #define ICE_MCAST_PROMISC_BITS (ICE_PROMISC_MCAST_TX | ICE_PROMISC_MCAST_RX)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 466e44a33c43..2fda7be60fb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2231,17 +2231,27 @@ static bool ice_is_vlan_promisc_allowed(struct ice_vf *vf)
 
 /**
  * ice_vf_ena_vlan_promisc - Enable Tx/Rx VLAN promiscuous for the VLAN
+ * @vf: VF to enable VLAN promisc on
  * @vsi: VF's VSI used to enable VLAN promiscuous mode
  * @vlan: VLAN used to enable VLAN promiscuous
  *
  * This function should only be called if VLAN promiscuous mode is allowed,
  * which can be determined via ice_is_vlan_promisc_allowed().
  */
-static int ice_vf_ena_vlan_promisc(struct ice_vsi *vsi, struct ice_vlan *vlan)
+static int ice_vf_ena_vlan_promisc(struct ice_vf *vf, struct ice_vsi *vsi,
+				   struct ice_vlan *vlan)
 {
-	u8 promisc_m = ICE_PROMISC_VLAN_TX | ICE_PROMISC_VLAN_RX;
+	u8 promisc_m = 0;
 	int status;
 
+	if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
+		promisc_m |= ICE_UCAST_VLAN_PROMISC_BITS;
+	if (test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
+		promisc_m |= ICE_MCAST_VLAN_PROMISC_BITS;
+
+	if (!promisc_m)
+		return 0;
+
 	status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m,
 					  vlan->vid);
 	if (status && status != -EEXIST)
@@ -2260,7 +2270,7 @@ static int ice_vf_ena_vlan_promisc(struct ice_vsi *vsi, struct ice_vlan *vlan)
  */
 static int ice_vf_dis_vlan_promisc(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
-	u8 promisc_m = ICE_PROMISC_VLAN_TX | ICE_PROMISC_VLAN_RX;
+	u8 promisc_m = ICE_UCAST_VLAN_PROMISC_BITS | ICE_MCAST_VLAN_PROMISC_BITS;
 	int status;
 
 	status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx, promisc_m,
@@ -2415,7 +2425,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 					goto error_param;
 				}
 			} else if (vlan_promisc) {
-				status = ice_vf_ena_vlan_promisc(vsi, &vlan);
+				status = ice_vf_ena_vlan_promisc(vf, vsi, &vlan);
 				if (status) {
 					v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 					dev_err(dev, "Enable Unicast/multicast promiscuous mode on VLAN ID:%d failed error-%d\n",
@@ -3224,7 +3234,7 @@ ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
 				return err;
 
 			if (vlan_promisc) {
-				err = ice_vf_ena_vlan_promisc(vsi, &vlan);
+				err = ice_vf_ena_vlan_promisc(vf, vsi, &vlan);
 				if (err)
 					return err;
 			}
@@ -3252,7 +3262,8 @@ ice_vc_add_vlans(struct ice_vf *vf, struct ice_vsi *vsi,
 			 */
 			if (!ice_is_dvm_ena(&vsi->back->hw)) {
 				if (vlan_promisc) {
-					err = ice_vf_ena_vlan_promisc(vsi, &vlan);
+					err = ice_vf_ena_vlan_promisc(vf, vsi,
+								      &vlan);
 					if (err)
 						return err;
 				}
-- 
2.42.0


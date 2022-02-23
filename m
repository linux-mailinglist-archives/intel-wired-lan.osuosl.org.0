Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 403FE4C0618
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEFFB401FF;
	Wed, 23 Feb 2022 00:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVxhxYLuRRoP; Wed, 23 Feb 2022 00:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8186401B1;
	Wed, 23 Feb 2022 00:28:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D06A1BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D95E40994
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wxADV28a9-rj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4181A408D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576045; x=1677112045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=msXeZj18Os57j3gKiiQoQGX+d/0tPgzfZwsenxEy3Is=;
 b=j+ie7jgCPjDS0W2z0Cq3G4vaWMtGBCgBrQPOS+YTTUuloaRwdyvhd1Nk
 AnmKYjoNhh0bsT1f5lzCcmhBZGO0MWjoRCyIJKgA7vSB3D8OfR3O1dEtT
 Qk+hgJOaeTCtTQrdAJYV+o35aeEz07Wi5+dFFMNKhPLBn2TLy7LoI0kg2
 eh5AsYpHjQIKjH7RYDms04Tc+/gg0hNl8eCqxK29tZmj6uPXjiyPSLtRj
 uzxoLEnz6waNnQTuqDYMRnJKWsVSZ03RqKlNZlR+Dx95R6NLo2PlmEyTi
 TQAQBl6iR8XB2QIOTLkWa3dmO/NigYP+vCSXkavPXL7xN0Q5UlfNsFsML A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239235842"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="239235842"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728061"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:09 -0800
Message-Id: <20220223002712.2771809-23-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 22/25] ice: introduce
 ICE_VF_RESET_LOCK flag
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

The ice_reset_vf function performs actions which must be taken only
while holding the VF configuration lock. Some flows already acquired the
lock, while other flows must acquire it just for the reset function. Add
the ICE_VF_RESET_LOCK flag to the function so that it can handle taking
and releasing the lock instead at the appropriate scope.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   |  4 +---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 12 +++---------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 18 ++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 +
 4 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9d5fa9840004..4f35eb039d9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1957,9 +1957,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 				 * reset, so print the event prior to reset.
 				 */
 				ice_print_vf_rx_mdd_event(vf);
-				mutex_lock(&vf->cfg_lock);
-				ice_reset_vf(vf, 0);
-				mutex_unlock(&vf->cfg_lock);
+				ice_reset_vf(vf, ICE_VF_RESET_LOCK);
 			}
 		}
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 46d656d385c4..f74474f8af99 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1366,12 +1366,9 @@ void ice_process_vflr_event(struct ice_pf *pf)
 		bit_idx = (hw->func_caps.vf_base_id + vf->vf_id) % 32;
 		/* read GLGEN_VFLRSTAT register to find out the flr VFs */
 		reg = rd32(hw, GLGEN_VFLRSTAT(reg_idx));
-		if (reg & BIT(bit_idx)) {
+		if (reg & BIT(bit_idx))
 			/* GLGEN_VFLRSTAT bit will be cleared in ice_reset_vf */
-			mutex_lock(&vf->cfg_lock);
-			ice_reset_vf(vf, ICE_VF_RESET_VFLR);
-			mutex_unlock(&vf->cfg_lock);
-		}
+			ice_reset_vf(vf, ICE_VF_RESET_VFLR | ICE_VF_RESET_LOCK);
 	}
 	mutex_unlock(&pf->vfs.table_lock);
 }
@@ -1453,10 +1450,7 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 	if (!vf)
 		return;
 
-	mutex_lock(&vf->cfg_lock);
-	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
-	mutex_unlock(&vf->cfg_lock);
-
+	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY | ICE_VF_RESET_LOCK);
 	ice_put_vf(vf);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index dce32bc194a0..c584f5123ba7 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -473,6 +473,7 @@ static void ice_notify_vf_reset(struct ice_vf *vf)
  * Flags:
  *   ICE_VF_RESET_VFLR - Indicates a reset is due to VFLR event
  *   ICE_VF_RESET_NOTIFY - Send VF a notification prior to reset
+ *   ICE_VF_RESET_LOCK - Acquire VF cfg_lock before resetting
  *
  * Returns 0 if the VF is currently in reset, if the resets are disabled, or
  * if the VF resets successfully. Returns an error code if the VF fails to
@@ -485,10 +486,9 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	struct device *dev;
 	struct ice_hw *hw;
 	u8 promisc_m;
+	int err = 0;
 	bool rsd;
 
-	lockdep_assert_held(&vf->cfg_lock);
-
 	dev = ice_pf_to_dev(pf);
 	hw = &pf->hw;
 
@@ -507,6 +507,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		return 0;
 	}
 
+	if (flags & ICE_VF_RESET_LOCK)
+		mutex_lock(&vf->cfg_lock);
+	else
+		lockdep_assert_held(&vf->cfg_lock);
+
 	/* Set VF disable bit state here, before triggering reset */
 	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
 	ice_trigger_vf_reset(vf, flags & ICE_VF_RESET_VFLR, false);
@@ -564,7 +569,8 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	if (vf->vf_ops->vsi_rebuild(vf)) {
 		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
 			vf->vf_id);
-		return -EFAULT;
+		err = -EFAULT;
+		goto out_unlock;
 	}
 
 	vf->vf_ops->post_vsi_rebuild(vf);
@@ -578,7 +584,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
 			vf->vf_id);
 
-	return 0;
+out_unlock:
+	if (flags & ICE_VF_RESET_LOCK)
+		mutex_unlock(&vf->cfg_lock);
+
+	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 9155c0d2f998..758e37295942 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -137,6 +137,7 @@ struct ice_vf {
 enum ice_vf_reset_flags {
 	ICE_VF_RESET_VFLR = BIT(0), /* Indicate a VFLR reset */
 	ICE_VF_RESET_NOTIFY = BIT(1), /* Notify VF prior to reset */
+	ICE_VF_RESET_LOCK = BIT(2), /* Acquire the VF cfg_lock */
 };
 
 static inline u16 ice_vf_get_port_vlan_id(struct ice_vf *vf)
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

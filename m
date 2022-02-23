Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 355274C0601
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAD8B60BAD;
	Wed, 23 Feb 2022 00:28:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UIkV9RGiA6Su; Wed, 23 Feb 2022 00:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 879E460F13;
	Wed, 23 Feb 2022 00:28:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 131131BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBAEE40901
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3zHIl7DlCYAY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F33CF402BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576044; x=1677112044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hHjl6K3hC37ym8YEa0zJkEjZFec/uwHTcgB8mGcR9X0=;
 b=ZRGX6GJ8ay5fACYjCCPNTooJyYHDpt55x6ZKQNoa2SIY6056l/I4CO3n
 97j5jW3LXYfMzpC5GlOrcvr4auE8xezrwdclYqPJHh0PEQhHW6tWXhoYd
 LvTE1QJOrxSZD0CPtkX8GZ/nl9s6KB4XNEtgDwI9jxgLRk0Y75OVlzOrv
 Fkx7XKO3e0RsM65qJ2EcpboO3V4+eBMf1VdWrcWqKG9gb+cwOoCOurWYg
 H3LySrJ/qWW27FWUxARJY00hiOfOwEvCNkRqRSNVqGeba6pC5RXp1PQ7p
 euNMYiBKgUxV9mCnGvsFxrObbZr1OOKKo7zQ6Pj3ddjb1/52EbrA7ykU4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239235841"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="239235841"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728054"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:07 -0800
Message-Id: <20220223002712.2771809-21-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 20/25] ice: convert ice_reset_vf
 to take flags
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

The ice_reset_vf function takes a boolean parameter which indicates
whether or not the reset is due to a VFLR event.

This is somewhat confusing to read because readers must interpret what
"true" and "false" mean when seeing a line of code like
"ice_reset_vf(vf, false)".

We will want to add another toggle to the ice_reset_vf in a following
change. To avoid proliferating many arguments, convert this function to
take flags instead. ICE_VF_RESET_VFLR will indicate if this is a VFLR
reset. A value of 0 indicates no flags.

One could argue that "ice_reset_vf(vf, 0)" is no more readable than
"ice_reset_vf(vf, false)".. However, this type of flags interface is
somewhat common and using 0 to mean "no flags" makes sense in this
context. We could bother to add a define for "ICE_VF_RESET_PLAIN" or
something similar, but this can be confusing since its not an actual bit
flag.

This paves the way to add another flag to the function in a following
change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   | 2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 6 +++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 9 ++++++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h | 9 +++++++--
 4 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index af4befb22d0d..9d5fa9840004 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1958,7 +1958,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 				 */
 				ice_print_vf_rx_mdd_event(vf);
 				mutex_lock(&vf->cfg_lock);
-				ice_reset_vf(vf, false);
+				ice_reset_vf(vf, 0);
 				mutex_unlock(&vf->cfg_lock);
 			}
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 4a8cf8f646c8..c234e4edc7f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1393,7 +1393,7 @@ void ice_process_vflr_event(struct ice_pf *pf)
 		if (reg & BIT(bit_idx)) {
 			/* GLGEN_VFLRSTAT bit will be cleared in ice_reset_vf */
 			mutex_lock(&vf->cfg_lock);
-			ice_reset_vf(vf, true);
+			ice_reset_vf(vf, ICE_VF_RESET_VFLR);
 			mutex_unlock(&vf->cfg_lock);
 		}
 	}
@@ -1407,7 +1407,7 @@ void ice_process_vflr_event(struct ice_pf *pf)
 static void ice_vc_reset_vf(struct ice_vf *vf)
 {
 	ice_vc_notify_vf_reset(vf);
-	ice_reset_vf(vf, false);
+	ice_reset_vf(vf, 0);
 }
 
 /**
@@ -1724,7 +1724,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 static void ice_vc_reset_vf_msg(struct ice_vf *vf)
 {
 	if (test_bit(ICE_VF_STATE_INIT, vf->vf_states))
-		ice_reset_vf(vf, false);
+		ice_reset_vf(vf, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index d37232197bde..3b4e55c62786 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -444,13 +444,16 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 /**
  * ice_reset_vf - Reset a particular VF
  * @vf: pointer to the VF structure
- * @is_vflr: true if VFLR was issued, false if not
+ * @flags: flags controlling behavior of the reset
+ *
+ * Flags:
+ *   ICE_VF_RESET_VFLR - Indicates a reset is due to VFLR event
  *
  * Returns 0 if the VF is currently in reset, if the resets are disabled, or
  * if the VF resets successfully. Returns an error code if the VF fails to
  * rebuild.
  */
-int ice_reset_vf(struct ice_vf *vf, bool is_vflr)
+int ice_reset_vf(struct ice_vf *vf, u32 flags)
 {
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
@@ -478,7 +481,7 @@ int ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 
 	/* Set VF disable bit state here, before triggering reset */
 	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
-	ice_trigger_vf_reset(vf, is_vflr, false);
+	ice_trigger_vf_reset(vf, flags & ICE_VF_RESET_VFLR, false);
 
 	vsi = ice_get_vf_vsi(vf);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index b569186b248b..f33d55f8bcc3 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -133,6 +133,11 @@ struct ice_vf {
 	struct devlink_port devlink_port;
 };
 
+/* Flags for controlling behavior of ice_reset_vf */
+enum ice_vf_reset_flags {
+	ICE_VF_RESET_VFLR = BIT(0), /* Indicate a VFLR reset */
+};
+
 static inline u16 ice_vf_get_port_vlan_id(struct ice_vf *vf)
 {
 	return vf->port_vlan_info.vid;
@@ -212,7 +217,7 @@ int
 ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int
 ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
-int ice_reset_vf(struct ice_vf *vf, bool is_vflr);
+int ice_reset_vf(struct ice_vf *vf, u32 flags);
 void ice_reset_all_vfs(struct ice_pf *pf);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
@@ -270,7 +275,7 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 	return -EOPNOTSUPP;
 }
 
-static inline int ice_reset_vf(struct ice_vf *vf, bool is_vflr)
+static inline int ice_reset_vf(struct ice_vf *vf, u32 flags)
 {
 	return 0;
 }
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

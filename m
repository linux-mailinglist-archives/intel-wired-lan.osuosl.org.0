Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 899C76E5DE7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 11:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E50014032B;
	Tue, 18 Apr 2023 09:53:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E50014032B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681811592;
	bh=ryvL7LIdaIZ2SGS2KaGgcFdK06ng4oCmVZMmoVdZj3Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=w915Bx7/XVZGMCYRBDusJs8+1t6/cEf+xHzCCAzpY4Tk52zL0Kjjw6AvhMFB2kszj
	 Rp00ryBMMwDeGCPRR8yamLSRliptUrOnlkh7KkjzFY1oxsVbrg7A1JZarsR3Kx+aPv
	 sNswr+kDacQa+XWlfYQZN/JAOU4lQgQEu0pQEkaggQnlktXV1fOSqlCyw/4qeTbZf9
	 V24qG5lvD2klY9bYSGXKTzZ69GjrrFkPLAQgBZtvaMJsK5vil/IFXyLFv7oS2Qh/s9
	 HeFTX2RIDlA4+ZO7/gbx93WyJxOFr/9X7mByMEafy6WiEHKqx6S3xr/F/8hR3WuGmX
	 Pdffuox7x/+ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOQ5eDirnKZc; Tue, 18 Apr 2023 09:53:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 650EC40058;
	Tue, 18 Apr 2023 09:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 650EC40058
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 285B41C425C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0E1183BFD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:53:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0E1183BFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p24ZltRW2R8g for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 09:53:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFB3683BFA
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFB3683BFA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:53:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="346973779"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="346973779"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 02:53:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="755655213"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="755655213"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga008.fm.intel.com with ESMTP; 18 Apr 2023 02:53:00 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Apr 2023 11:52:55 +0200
Message-Id: <20230418095255.165004-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681811583; x=1713347583;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LuzcZE9DhagLTgOG/I+alFS0ecQ0LXRp8BOG5YcQKCo=;
 b=gx8R3HbKhNEnWV0u2NBGTbaAnLILXMGKAM8PpUWgya8AudzcxUmQCXcp
 iZNrONnQu5cnJ51SkNrKkqAIS9Qe9wfxHw8fgGOImdC+zN5fuGPor0/Hh
 +a5SScSY0skRdOIiF44suT/iZxeYN2F+7C0rdKLXujA/uJCVj8Z9hun62
 6HkV7ZUwOOlJR0H7OqR6+fJBAT4GVDMtHPUyikYGsNfgng8NUbFzeI8g+
 TZSUe8/gMo9Unp1PAantPhC4pm3A0G4LVxDav40EZvPUW5/EhLctiuFiL
 53BtPN9IBSNT6YaXpgD4s88UsM9tuy9yli2Y8/cd2urR87LWJqFGZSAG6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gx8R3HbK
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix ice VF reset during iavf
 initialization
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dawid Wesierski <dawidx.wesierski@intel.com>

Fix the current implementation that causes ice_trigger_vf_reset()
to start resetting the VF even when the VF is still resetting itself
and initializing adminq. This leads to a series of -53 errors
(failed to init adminq) from the IAVF.

Change the state of the vf_state field to be not active when the IAVF
asks for a reset. To avoid issues caused by the VF being reset too
early, make sure to wait until receiving the message on the message
box to know the exact state of the IAVF driver.

Fixes: c54d209c78b8 ("ice: Wait for VF to be reset/ready before configuration")
Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
Acked-by: Jacob Keller <Jacob.e.keller@intel.com>
---
v2: changed "reseted" to "reset", changed fixes tag, removed space
---
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 19 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  1 +
 4 files changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 0cc05e54a781..d4206db7d6d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1181,7 +1181,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	if (!vf)
 		return -EINVAL;
 
-	ret = ice_check_vf_ready_for_cfg(vf);
+	ret = ice_check_vf_ready_for_reset(vf);
 	if (ret)
 		goto out_put_vf;
 
@@ -1296,7 +1296,7 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		goto out_put_vf;
 	}
 
-	ret = ice_check_vf_ready_for_cfg(vf);
+	ret = ice_check_vf_ready_for_reset(vf);
 	if (ret)
 		goto out_put_vf;
 
@@ -1350,7 +1350,7 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 		return -EOPNOTSUPP;
 	}
 
-	ret = ice_check_vf_ready_for_cfg(vf);
+	ret = ice_check_vf_ready_for_reset(vf);
 	if (ret)
 		goto out_put_vf;
 
@@ -1663,7 +1663,7 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 	if (!vf)
 		return -EINVAL;
 
-	ret = ice_check_vf_ready_for_cfg(vf);
+	ret = ice_check_vf_ready_for_reset(vf);
 	if (ret)
 		goto out_put_vf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 0e57bd1b85fd..95878c95e953 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -185,6 +185,25 @@ int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
 	return 0;
 }
 
+/**
+ * ice_check_vf_ready_for_reset - check if VF is ready to be reset
+ * @vf: VF to check if it's ready to be reset
+ *
+ * The purpose of this function is to ensure that the VF is not in reset,
+ * disabled, and is both initialized and active, thus enabling us to safely
+ * initialize another reset.
+ */
+int ice_check_vf_ready_for_reset(struct ice_vf *vf)
+{
+	int ret;
+
+	ret = ice_check_vf_ready_for_cfg(vf);
+	if (!ret && !test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
+		ret = -EAGAIN;
+
+	return ret;
+}
+
 /**
  * ice_trigger_vf_reset - Reset a VF on HW
  * @vf: pointer to the VF structure
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index ef30f05b5d02..3fc6a0a8d955 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -215,6 +215,7 @@ u16 ice_get_num_vfs(struct ice_pf *pf);
 struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
 bool ice_is_vf_disabled(struct ice_vf *vf);
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
+int ice_check_vf_ready_for_reset(struct ice_vf *vf);
 void ice_set_vf_state_dis(struct ice_vf *vf);
 bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
 void
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index e24e3f5017ca..d8c66baf4eb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3908,6 +3908,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 		ice_vc_notify_vf_link_state(vf);
 		break;
 	case VIRTCHNL_OP_RESET_VF:
+		clear_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
 		ops->reset_vf(vf);
 		break;
 	case VIRTCHNL_OP_ADD_ETH_ADDR:
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

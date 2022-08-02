Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27815587AB0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 12:29:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4B8960AFD;
	Tue,  2 Aug 2022 10:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4B8960AFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659436145;
	bh=BZ96z9bqrzqCsXAxbDR4lLNRRel/ClLX/h/dGZzO6iA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nwBiaAvRjft3Xj3oh6MaHZ4SHhKknvizoKLfyUiU0KlutVP4TJZmm8cJgCwW2gSSH
	 gOrPpIiQwdNDnHhNr6sN+38xsnuKavq8tdYmOSo/rTK4csVjKk/31zKAxYbN7Xko8e
	 eeW6P7Ierrf/C/fvM3XY3mHIrv7Phog5lj84LmX0UezML6KCvDsk8HjnNINKgWzhF4
	 rOv+XS4jKmbIi7q96aCIvR/MZmUplOZm5sNlxrpquRP6upM1dDXF6DkB4+krRo9ESm
	 YHxMKGe/g6g1zz6CNSkKGzvgwv8s36dEItGHyHAenF3YoFP/CCt+QYTfisd76n+Pz9
	 nYRdO+g5cUiQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ye40y_PQ4H_1; Tue,  2 Aug 2022 10:29:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 860A460B74;
	Tue,  2 Aug 2022 10:29:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 860A460B74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB05F1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4FA740554
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4FA740554
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BEqFD1gdwhzl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 10:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6B9B402C5
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6B9B402C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 10:28:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="290589556"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="290589556"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 03:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="635244164"
Received: from propan.igk.intel.com ([10.211.8.82])
 by orsmga001.jf.intel.com with ESMTP; 02 Aug 2022 03:28:57 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Aug 2022 12:26:18 +0200
Message-Id: <20220802102618.31303-4-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220802102618.31303-1-anatolii.gerasymenko@intel.com>
References: <20220802102618.31303-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659436138; x=1690972138;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=An5rmkQubGMd7VmSVFTP8YfTnigXtT+BzfPJXHnC8sc=;
 b=Z7I/tS7WudaVlzw9GmcDrABgwJMERt7UxahnVyJKZTcrM0gRYc8YDI2Q
 4pQin3JYDxyTqi0mgrCJGvXEx4zKYcMetBgf0iqj56aCRhpl2WTudXPgQ
 IrTlNvaBhZUZ7PYKo2ZwaK5QX+I9kGKy3l4NWWds7CEDwLIVghUMnKTwy
 4An6CjNbWfoMHxtSTT98wC2tkYJWALmaFJeIJgHIz4dRecHs8HwCX+8N2
 GpE1F2+0Jyw9nwwp2LrnQrCFh6D2gpfN/FwFbVZPrOhstIFKhmvg+zb5n
 gGqJ+tQ8UIse0hBNSNi7/yz7b4QNiZm5YKnIUTibnRw5V+JcaqSfsc+xQ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z7I/tS7W
Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: Handle LLDP MIB
 Pending change
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the number of Traffic Classes (TC) is decreased, the FW will no
longer remove TC nodes, but will send a pending change notification. This
will allow RDMA to destroy corresponding Control QP markers. After RDMA
finishes outstanding operations, the ice driver will send an execute MIB
Pending change admin queue command to FW to finish DCB configuration
change.

The FW will buffer all incoming Pending changes, so there can be only
one active Pending change.

RDMA driver guarantees to remove Control QP markers within 5000 ms.
Hence, LLDP response timeout txTTL (default 30 sec) will be met.

Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
v2: Remove inline hint for ice_dcb_is_mib_change_pending()
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 25 ++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 1c54eb643b6f..2fcfb31bb4ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -933,6 +933,16 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 	}
 }
 
+/**
+ * ice_dcb_is_mib_change_pending - Check if MIB change is pending
+ * @state: MIB change state
+ */
+static bool ice_dcb_is_mib_change_pending(u8 state)
+{
+	return ICE_AQ_LLDP_MIB_CHANGE_PENDING ==
+		FIELD_GET(ICE_AQ_LLDP_MIB_CHANGE_STATE_M, state);
+}
+
 /**
  * ice_dcb_process_lldp_set_mib_change - Process MIB change
  * @pf: ptr to ice_pf
@@ -946,6 +956,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_aqc_lldp_get_mib *mib;
 	struct ice_dcbx_cfg tmp_dcbx_cfg;
+	bool pending_handled = false;
 	bool need_reconfig = false;
 	struct ice_port_info *pi;
 	u8 mib_type;
@@ -966,7 +977,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	mib_type = FIELD_GET(ICE_AQ_LLDP_BRID_TYPE_M, mib->type);
 	dev_dbg(dev, "LLDP event MIB bridge type 0x%x\n", mib_type);
 	if (mib_type != ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID)
-		return;
+		goto handle_pending;
 
 	/* Check MIB Type and return if event for Remote MIB update */
 	mib_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M, mib->type);
@@ -974,7 +985,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	if (mib_type == ICE_AQ_LLDP_MIB_REMOTE) {
 		/* Update the remote cached instance and return */
 		ice_get_dcb_cfg_from_mib_change(pi, event);
-		return;
+		goto handle_pending;
 	}
 
 	mutex_lock(&pf->tc_mutex);
@@ -1009,6 +1020,12 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
 	}
 
+	/* Send Execute Pending MIB Change event if it is a Pending event */
+	if (ice_dcb_is_mib_change_pending(mib->state)) {
+		ice_lldp_execute_pending_mib(&pf->hw);
+		pending_handled = true;
+	}
+
 	rtnl_lock();
 	/* disable VSIs affected by DCB changes */
 	ice_dcb_ena_dis_vsi(pf, false, true);
@@ -1028,4 +1045,8 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	rtnl_unlock();
 out:
 	mutex_unlock(&pf->tc_mutex);
+handle_pending:
+	/* Send Execute Pending MIB Change event if it is a Pending event */
+	if (!pending_handled && ice_dcb_is_mib_change_pending(mib->state))
+		ice_lldp_execute_pending_mib(&pf->hw);
 }
-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

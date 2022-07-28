Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7178358408F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 16:07:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEE9A41A01;
	Thu, 28 Jul 2022 14:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEE9A41A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659017260;
	bh=+AJnuqn2M0fPdfB8TMGbPsoUFpJQXubHKU+bR5AmuRk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IOAK6VyzDC0x3nO5KCwg63nWH602JR0NvET6Zqn+BvYAiOyNVpU056gnuR7zLQZOA
	 FVMD/Po/DnqjXLGL4hwJlXDzOSDA96+6DhcS+exHofNX3WckFLEMgCVpECD2RD/Ce5
	 JKN9+a3SPf/wQDHK4g7gXhlaTjrBW96TnfNWmvaMpAvdofWIeYPScss7W2zPkhZwfO
	 wD0kgqqMuR7R5Fx1YyEb9uQQkf5QZjqCONuRYlhBfih3XHF0SxOoQZJvBZ8iotZGV/
	 NwhXuaUk1fqNRba6GUtwDSA39/waNjxvEPED876G48JvTtf/JltzvngvjCNKZTM4la
	 BB9Vaf5Sc/GJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ni7DOuXDygP; Thu, 28 Jul 2022 14:07:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7879C418AA;
	Thu, 28 Jul 2022 14:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7879C418AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 974AF1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 71339409EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71339409EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6PD06AuMc91 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 14:07:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6708408C8
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6708408C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="289289250"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="289289250"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 07:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="690328113"
Received: from propan.igk.intel.com ([10.211.8.82])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2022 07:07:28 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Jul 2022 16:04:26 +0200
Message-Id: <20220728140426.664140-4-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
References: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659017249; x=1690553249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+IpoxV1y3li3/3vOL7fPn4wbP/mtvRHkp2Q1Yv+nklk=;
 b=OFPrMbbdHamedTSagYhS/zvfFoj1jn89QLfFMJKvi4jIs0qB9D055c53
 mdCNaZ6WUJpVaeKeH/SQ+0Aenrd+Ni0wkpBCYcvcdmgoEdozzqJZE4onP
 /MB9cFO2rVbot+/6CC+QNmKM9D268GJYwuaoAfGJ4O7TlRa1L0HAJgC+c
 ZF/npuWMiVEm1oDwgcDdNbwpjJTLufZ+VcmgshKL5xXdfamkSXHj8XZz/
 /wlpuZLOFkSSOCda/8vOGdxdimYBapp9lTFj1zTLFrnbbkzFCRD8xubpJ
 X4181NF0AnzE1YtXCd2GfSNmwIkaNp/s3JuMxrzPowlrmTra4fhesuj5E
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OFPrMbbd
Subject: [Intel-wired-lan] [PATCH net-next 3/3] ice: Handle LLDP MIB Pending
 change
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
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 25 ++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 1c54eb643b6f..f16e4c54409f 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -933,6 +933,16 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 	}
 }
 
+/**
+ * ice_dcb_is_mib_change_pending - Check if MIB change is pending
+ * @state: MIB change state
+ */
+static inline bool ice_dcb_is_mib_change_pending(u8 state)
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
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

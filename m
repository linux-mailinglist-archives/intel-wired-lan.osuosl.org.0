Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EFB45AB67
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Nov 2021 19:41:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A98F8818BE;
	Tue, 23 Nov 2021 18:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mp7v7GPOuf0i; Tue, 23 Nov 2021 18:41:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBC1E8186A;
	Tue, 23 Nov 2021 18:41:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71CB11BF39C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 18:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D9C160A66
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 18:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hZ6v-bTHsVll for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Nov 2021 18:41:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B62B60A61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 18:41:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="258972919"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="258972919"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 10:28:26 -0800
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="456786053"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 10:28:25 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Nov 2021 10:25:36 -0800
Message-Id: <20211123182536.315714-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: add support for DSCP QoS
 for IDC
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

The ice driver provides QoS information to auxiliary drivers
through the exported function ice_get_qos_params.  This function
doesn't currently support L3 DSCP QoS.

Add the necessary defines, structure elements and code to support
DSCP QoS through the IDC functions.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_idc.c | 5 +++++
 include/linux/net/intel/iidc.h           | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index fc3580167e7b..263a2e7577a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -227,6 +227,11 @@ void ice_get_qos_params(struct ice_pf *pf, struct iidc_qos_params *qos)
 
 	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
 		qos->tc_info[i].rel_bw = dcbx_cfg->etscfg.tcbwtable[i];
+
+	qos->pfc_mode = dcbx_cfg->pfc_mode;
+	if (qos->pfc_mode == IIDC_DSCP_PFC_MODE)
+		for (i = 0; i < IIDC_MAX_DSCP_MAPPING; i++)
+			qos->dscp_map[i] = dcbx_cfg->dscp_map[i];
 }
 EXPORT_SYMBOL_GPL(ice_get_qos_params);
 
diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
index 1289593411d3..0a90f301679d 100644
--- a/include/linux/net/intel/iidc.h
+++ b/include/linux/net/intel/iidc.h
@@ -32,6 +32,9 @@ enum iidc_rdma_protocol {
 };
 
 #define IIDC_MAX_USER_PRIORITY		8
+#define IIDC_MAX_DSCP_MAPPING		64
+#define IIDC_VLAN_PFC_MODE		0x0
+#define IIDC_DSCP_PFC_MODE		0x1
 
 /* Struct to hold per RDMA Qset info */
 struct iidc_rdma_qset_params {
@@ -60,6 +63,8 @@ struct iidc_qos_params {
 	u8 vport_relative_bw;
 	u8 vport_priority_type;
 	u8 num_tc;
+	u8 pfc_mode;
+	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
 };
 
 struct iidc_event {
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

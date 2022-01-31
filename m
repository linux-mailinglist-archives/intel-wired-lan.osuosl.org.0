Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361664A4CA9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 18:00:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0F14408F8;
	Mon, 31 Jan 2022 17:00:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HWxANv1RTxON; Mon, 31 Jan 2022 17:00:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61C8F405A0;
	Mon, 31 Jan 2022 17:00:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15E0E1BF375
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FB5D410D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zeqgm96gxQCu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 17:00:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 195B2410D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643648431; x=1675184431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lIfuScmQRdp4Vy1DrmAX9n1+NnTgGLHmrg1t8COM19E=;
 b=ZWB/HOKXO/yEuI275dURiJe4vLp9eGUWph7ytpqmr/89qaHTGZvOUc+8
 ABUJ4Xu8SFxKcwn5WfYq8jttBvGMOxNl0DqMIlkO5t+ghuPy7w7PFoZK/
 8l3koJLjz3CpfQ+07V1Aif4CbFraIdyPqIF6pDmYLFGqguc1i7WpASGZ9
 UcWrBpoBsVTfClHvfDAS3EX+NT6RLywPNeu6qbCcS2RP4qIJR8uCA/mFV
 aln2Ylc47tbd9MtDsaqY9/4fUgHHRLxVR8vsSRIdHGkhhQmK2G2PUhG3Y
 BztX0I7VtlAjj3f9eP434UELHRYrklZtiLXBp/B6xmZYzlOU8qxoEEno4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="234897923"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="234897923"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:00:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="537278690"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.255.33.15])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:00:27 -0800
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: epg.nat.hpm.dev@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Jan 2022 10:59:19 -0600
Message-Id: <20220131165921.1392-2-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20220131165921.1392-1-shiraz.saleem@intel.com>
References: <20220131165921.1392-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH for-next 1/3] net/ice: add support for
 DSCP QoS for IIDC
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dave Ertman <david.m.ertman@intel.com>

The ice driver provides QoS information to auxiliary drivers through
the exported function ice_get_qos_params. This function doesn't
currently support L3 DSCP QoS.

Add the necessary defines, structure elements and code to support DSCP
QoS through the IIDC functions.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_idc.c | 5 +++++
 include/linux/net/intel/iidc.h           | 6 ++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index fc35801..263a2e7 100644
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
index 1289593..842ba0d 100644
--- a/include/linux/net/intel/iidc.h
+++ b/include/linux/net/intel/iidc.h
@@ -32,6 +32,9 @@ enum iidc_rdma_protocol {
 };
 
 #define IIDC_MAX_USER_PRIORITY		8
+#define IIDC_MAX_DSCP_MAPPING          64
+#define IIDC_VLAN_PFC_MODE             0x0
+#define IIDC_DSCP_PFC_MODE             0x1
 
 /* Struct to hold per RDMA Qset info */
 struct iidc_rdma_qset_params {
@@ -60,6 +63,9 @@ struct iidc_qos_params {
 	u8 vport_relative_bw;
 	u8 vport_priority_type;
 	u8 num_tc;
+	u8 pfc_mode;
+	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
+
 };
 
 struct iidc_event {
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

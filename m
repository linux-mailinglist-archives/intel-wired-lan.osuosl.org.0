Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1FAA8AE01
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 04:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 727B483EF4;
	Wed, 16 Apr 2025 02:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AhBfyrfM3cRu; Wed, 16 Apr 2025 02:16:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B033183EC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744769778;
	bh=HgB8CTq2QVKO0DX86lf2q6ab2OkAIq72uq1Hpnzlydc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EVdJJjhNPW1zreNi86NtizfOVnaZfOebIdjv52E6LCage1V3J79cFGByI44g+L0U2
	 qqqLg8N2ckPF7QpBn8JpIPN/tEcIaleqtB3y7k1MkT9Uo0+HE2uDES+wXgQsNWNsid
	 OHIKekJuw0q+CDRtoSlIn+canXvi26WBllYxvAoL0oA+Kcgtyqp0jXBMx83KvTy/Ml
	 o97818OzP7bjerYWrj7SZV+t1idL9QOOs0GIBkzgJ/92DGLhMq9IKPguYzJVzRizjo
	 eWVSi92u3y0TPeZoJdLwLFXHBrsZXOuqzWaY2LlhT1vtqX0pe/VzJtM3fvQ9mLoq8I
	 79zYSaSPOHZ5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B033183EC8;
	Wed, 16 Apr 2025 02:16:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EF2BE83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A60F83BB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMNPkdVnu9uh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 02:16:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B4D0683EC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4D0683EC9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4D0683EC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 02:16:13 +0000 (UTC)
X-CSE-ConnectionGUID: jtGzzmiUQvmN/MmR/W3nZA==
X-CSE-MsgGUID: U2Dg9NAfQTGPWc7Ky5fuHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="50125568"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="50125568"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 19:16:13 -0700
X-CSE-ConnectionGUID: iv0vCAbwQn6kCUT7sZ91vQ==
X-CSE-MsgGUID: 3tgeltZvQFKKS0i/9YhNxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="130605800"
Received: from bnkannan-mobl1.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.114.218])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 19:16:13 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org,
	netdev@vger.kernel.org
Date: Tue, 15 Apr 2025 21:15:48 -0500
Message-ID: <20250416021549.606-5-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
References: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744769773; x=1776305773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=38QObsG1g5kTMVujaR6jCjNzuQOn53n3e/9p1HGrddA=;
 b=XS+bny2ssndt+uewa9AtRJ4nf+9uO3U4hQfmWHj4Qigf+g0DOdI8xWaC
 tgPjxY+IBC/gxUJni9ARi+znWE4D+VKdNYQLB/V95VUpOGTEJ/E86QfVh
 IceElkMqx/bM1LIiC0KfIIWgRhTOALO0j0AXi6skK7El9MK0auV2WwZip
 +LHMENTW7iXbsVS9/5TAw+0+hKiNgmrxLzjjjebgWh0X63Zi4CPZZpHtK
 QKYhG0HRST74q1d/CvExO5tgi3qHHcJ3rfcPUkUEhpvE7JeOoPVOeoYkP
 8zFMdj8EvMdsSjr/YQrUEI2KaeLxcd2C08E7YRIEl/yuwdpC/QdaQO+gk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XS+bny2s
Subject: [Intel-wired-lan] [iwl-next v5 4/5] ice: Replace ice specific DSCP
 mapping num with a kernel define
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

Replace ice driver specific DSCP mapping number defines
ICE_DSCP_NUM_VAL and IIDC_MAX_DSCP_MAPPING with
an equivalent kernel define DSCP_MAX.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c    | 2 +-
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_idc.c    | 2 +-
 drivers/net/ethernet/intel/ice/ice_type.h   | 6 +++---
 include/linux/net/intel/iidc_rdma.h         | 4 ++--
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 74418c445cc4..64737fc62306 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -1288,7 +1288,7 @@ ice_add_dscp_up_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 	tlv->ouisubtype = htonl(ouisubtype);
 
 	/* bytes 0 - 63 - IPv4 DSCP2UP LUT */
-	for (i = 0; i < ICE_DSCP_NUM_VAL; i++) {
+	for (i = 0; i < DSCP_MAX; i++) {
 		/* IPv4 mapping */
 		buf[i] = dcbcfg->dscp_map[i];
 		/* IPv6 mapping */
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 6d50b90a7359..a10c1c8d8697 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -754,7 +754,7 @@ static int ice_dcbnl_setapp(struct net_device *netdev, struct dcb_app *app)
 	if (!ice_is_feature_supported(pf, ICE_F_DSCP))
 		return -EOPNOTSUPP;
 
-	if (app->protocol >= ICE_DSCP_NUM_VAL) {
+	if (app->protocol >= DSCP_MAX) {
 		netdev_err(netdev, "DSCP value 0x%04X out of range\n",
 			   app->protocol);
 		return -EINVAL;
@@ -931,7 +931,7 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 	/* if the last DSCP mapping just got deleted, need to switch
 	 * to L2 VLAN QoS mode
 	 */
-	if (bitmap_empty(new_cfg->dscp_mapped, ICE_DSCP_NUM_VAL) &&
+	if (bitmap_empty(new_cfg->dscp_mapped, DSCP_MAX) &&
 	    new_cfg->pfc_mode == ICE_QOS_MODE_DSCP) {
 		ret = ice_aq_set_pfc_mode(&pf->hw,
 					  ICE_AQC_PFC_VLAN_BASED_PFC,
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 3f678426b7c9..0a19200000ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -224,7 +224,7 @@ void ice_get_qos_params(struct ice_pf *pf, struct iidc_rdma_qos_params *qos)
 
 	qos->pfc_mode = dcbx_cfg->pfc_mode;
 	if (qos->pfc_mode == IIDC_DSCP_PFC_MODE)
-		for (i = 0; i < IIDC_MAX_DSCP_MAPPING; i++)
+		for (i = 0; i < DSCP_MAX; i++)
 			qos->dscp_map[i] = dcbx_cfg->dscp_map[i];
 }
 EXPORT_SYMBOL_GPL(ice_get_qos_params);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 0aab21113cc4..529f978ea45a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -19,6 +19,7 @@
 #include "ice_vlan_mode.h"
 #include "ice_fwlog.h"
 #include <linux/wait.h>
+#include <net/dscp.h>
 
 static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
 {
@@ -695,7 +696,6 @@ struct ice_dcb_app_priority_table {
 
 #define ICE_MAX_USER_PRIORITY	8
 #define ICE_DCBX_MAX_APPS	64
-#define ICE_DSCP_NUM_VAL	64
 #define ICE_LLDPDU_SIZE		1500
 #define ICE_TLV_STATUS_OPER	0x1
 #define ICE_TLV_STATUS_SYNC	0x2
@@ -718,9 +718,9 @@ struct ice_dcbx_cfg {
 	u8 pfc_mode;
 	struct ice_dcb_app_priority_table app[ICE_DCBX_MAX_APPS];
 	/* when DSCP mapping defined by user set its bit to 1 */
-	DECLARE_BITMAP(dscp_mapped, ICE_DSCP_NUM_VAL);
+	DECLARE_BITMAP(dscp_mapped, DSCP_MAX);
 	/* array holding DSCP -> UP/TC values for DSCP L3 QoS mode */
-	u8 dscp_map[ICE_DSCP_NUM_VAL];
+	u8 dscp_map[DSCP_MAX];
 	u8 dcbx_mode;
 #define ICE_DCBX_MODE_CEE	0x1
 #define ICE_DCBX_MODE_IEEE	0x2
diff --git a/include/linux/net/intel/iidc_rdma.h b/include/linux/net/intel/iidc_rdma.h
index 1e8136395154..7f1910289534 100644
--- a/include/linux/net/intel/iidc_rdma.h
+++ b/include/linux/net/intel/iidc_rdma.h
@@ -10,6 +10,7 @@
 #include <linux/if_ether.h>
 #include <linux/kernel.h>
 #include <linux/netdevice.h>
+#include <net/dscp.h>
 
 enum iidc_rdma_event_type {
 	IIDC_RDMA_EVENT_BEFORE_MTU_CHANGE,
@@ -32,7 +33,6 @@ enum iidc_rdma_protocol {
 };
 
 #define IIDC_MAX_USER_PRIORITY		8
-#define IIDC_MAX_DSCP_MAPPING		64
 #define IIDC_DSCP_PFC_MODE		0x1
 
 /* Struct to hold per RDMA Qset info */
@@ -63,7 +63,7 @@ struct iidc_rdma_qos_params {
 	u8 vport_priority_type;
 	u8 num_tc;
 	u8 pfc_mode;
-	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
+	u8 dscp_map[DSCP_MAX];
 };
 
 struct iidc_rdma_event {
-- 
2.37.3


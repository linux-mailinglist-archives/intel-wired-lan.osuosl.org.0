Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D079032A942
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:24:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EA5C43199;
	Tue,  2 Mar 2021 18:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b_yJUUF3vqgx; Tue,  2 Mar 2021 18:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7379041507;
	Tue,  2 Mar 2021 18:24:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5B0E1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70E5C4EB76
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-wWLVAl7d7R for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5267B4EB91
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:23:58 +0000 (UTC)
IronPort-SDR: s5PkZdatWC+p4BVfdmFHGUngQEF8F31GxeuW2ejI6HHYsSSk/825uwgZd3nwUyVoP5Se6luMUp
 8mwlLBJ7Hlig==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="174062076"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="174062076"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:21:48 -0800
IronPort-SDR: RdY2VWHkQucU4hBdWGaE/5yee57MRk78C1UOcm1FDexFRGudd+Pfr+tWRL2GndRer3vkMgE5R/
 2y0wkWfoCdpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="369051171"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2021 10:21:45 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:12:06 -0800
Message-Id: <20210302181213.51718-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S55 07/14] ice: use kernel definitions for
 IANA protocol ports and ether-types
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

From: Bruce Allan <bruce.w.allan@intel.com>

The well-known IANA protocol port 3260 (iscsi-target 0x0cbc) and the
ether-types 0x8906 (ETH_P_FCOE) and 0x8914 (ETH_P_FIP) are already defined
in kernel header files.  Use those definitions instead of open-coding the
same.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 3 +++
 drivers/net/ethernet/intel/ice/ice_dcb.c     | 8 ++++----
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_type.h    | 3 ---
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ca94b01626d2..a0233962a672 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -44,6 +44,9 @@
 #include <net/gre.h>
 #include <net/udp_tunnel.h>
 #include <net/vxlan.h>
+#if IS_ENABLED(CONFIG_DCB)
+#include <scsi/iscsi_proto.h>
+#endif /* CONFIG_DCB */
 #include "ice_devids.h"
 #include "ice_type.h"
 #include "ice_txrx.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 211ac6f907ad..356fc0f025a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -804,7 +804,7 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
 			ice_aqc_cee_app_mask = ICE_AQC_CEE_APP_FCOE_M;
 			ice_aqc_cee_app_shift = ICE_AQC_CEE_APP_FCOE_S;
 			ice_app_sel_type = ICE_APP_SEL_ETHTYPE;
-			ice_app_prot_id_type = ICE_APP_PROT_ID_FCOE;
+			ice_app_prot_id_type = ETH_P_FCOE;
 		} else if (i == 1) {
 			/* iSCSI APP */
 			ice_aqc_cee_status_mask = ICE_AQC_CEE_ISCSI_STATUS_M;
@@ -812,14 +812,14 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
 			ice_aqc_cee_app_mask = ICE_AQC_CEE_APP_ISCSI_M;
 			ice_aqc_cee_app_shift = ICE_AQC_CEE_APP_ISCSI_S;
 			ice_app_sel_type = ICE_APP_SEL_TCPIP;
-			ice_app_prot_id_type = ICE_APP_PROT_ID_ISCSI;
+			ice_app_prot_id_type = ISCSI_LISTEN_PORT;
 
 			for (j = 0; j < cmp_dcbcfg->numapps; j++) {
 				u16 prot_id = cmp_dcbcfg->app[j].prot_id;
 				u8 sel = cmp_dcbcfg->app[j].selector;
 
 				if  (sel == ICE_APP_SEL_TCPIP &&
-				     (prot_id == ICE_APP_PROT_ID_ISCSI ||
+				     (prot_id == ISCSI_LISTEN_PORT ||
 				      prot_id == ICE_APP_PROT_ID_ISCSI_860)) {
 					ice_app_prot_id_type = prot_id;
 					break;
@@ -832,7 +832,7 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
 			ice_aqc_cee_app_mask = ICE_AQC_CEE_APP_FIP_M;
 			ice_aqc_cee_app_shift = ICE_AQC_CEE_APP_FIP_S;
 			ice_app_sel_type = ICE_APP_SEL_ETHTYPE;
-			ice_app_prot_id_type = ICE_APP_PROT_ID_FIP;
+			ice_app_prot_id_type = ETH_P_FIP;
 		}
 
 		status = (tlv_status & ice_aqc_cee_status_mask) >>
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 1e8f71ffc8ce..df02cffdf209 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -563,7 +563,7 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
 	dcbcfg->numapps = 1;
 	dcbcfg->app[0].selector = ICE_APP_SEL_ETHTYPE;
 	dcbcfg->app[0].priority = 3;
-	dcbcfg->app[0].prot_id = ICE_APP_PROT_ID_FCOE;
+	dcbcfg->app[0].prot_id = ETH_P_FCOE;
 
 	ret = ice_pf_dcb_cfg(pf, dcbcfg, locked);
 	kfree(dcbcfg);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 8545cba987b1..208989b5629d 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -561,10 +561,7 @@ struct ice_dcb_app_priority_table {
 #define ICE_TLV_STATUS_OPER	0x1
 #define ICE_TLV_STATUS_SYNC	0x2
 #define ICE_TLV_STATUS_ERR	0x4
-#define ICE_APP_PROT_ID_FCOE	0x8906
-#define ICE_APP_PROT_ID_ISCSI	0x0cbc
 #define ICE_APP_PROT_ID_ISCSI_860 0x035c
-#define ICE_APP_PROT_ID_FIP	0x8914
 #define ICE_APP_SEL_ETHTYPE	0x1
 #define ICE_APP_SEL_TCPIP	0x2
 #define ICE_CEE_APP_SEL_ETHTYPE	0x0
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44374A4CA8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 18:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66BBE40142;
	Mon, 31 Jan 2022 17:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VHNyy14UtSZW; Mon, 31 Jan 2022 17:00:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE063403E9;
	Mon, 31 Jan 2022 17:00:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06FCB1BF973
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0206C410D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PHdToB_HyvgB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 17:00:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AE7F410DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643648432; x=1675184432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xu2gapw8EGonEKPfGsLDqB5BWECojNkQnvRqX7oXxr8=;
 b=bnNbIeqS2AlkqejzxSz6/i/JlUzXEAEV/xkT4JpeugYOFEdty3ATSb8g
 htshwbiQHbV2UqWYqGwR9ylCf2YvWHXA6fLGKICpGyYfWka7U0AEhZRte
 Rj61S+d4y4jMXAbgPtXZAZ4OBwdi8DFhRJRlkyQtOVYNUub2L8ssdklMJ
 S3kI2hi4s1FZq/E3XLNUQw+zgaXpSOCNmkkKsTH0Un1PWIM4ZvRFIBzem
 u7ncaaVUpz2M4KZ4zi4SOGRupAmYm+sBayWFYvmYrZaKb6Cbk+BwB+w12
 j80ckt9/8P2WMvkxiiPPxhQfRmo+g5JftnaT4IJpdisdhnkCuDujkww2x w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="234897931"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="234897931"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:00:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="537278729"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.255.33.15])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:00:28 -0800
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: epg.nat.hpm.dev@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Jan 2022 10:59:21 -0600
Message-Id: <20220131165921.1392-4-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20220131165921.1392-1-shiraz.saleem@intel.com>
References: <20220131165921.1392-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH for-next 3/3] RDMA/irdma: Add support for
 DSCP
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
Cc: Mustafa Ismail <mustafa.ismail@intel.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mustafa Ismail <mustafa.ismail@intel.com>

Add DSCP support for the Intel Ethernet 800 Series devices.
Setup VSI DSCP info when PCI driver indicates DSCP mode during
driver probe or as notification event.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/infiniband/hw/irdma/cm.c    | 20 ++++++++++++++++----
 drivers/infiniband/hw/irdma/cm.h    |  7 +++++++
 drivers/infiniband/hw/irdma/ctrl.c  |  6 ++++++
 drivers/infiniband/hw/irdma/main.c  |  8 ++++++--
 drivers/infiniband/hw/irdma/osdep.h |  1 +
 drivers/infiniband/hw/irdma/type.h  |  4 ++++
 6 files changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/cm.c b/drivers/infiniband/hw/irdma/cm.c
index 6ff1800..abc101b 100644
--- a/drivers/infiniband/hw/irdma/cm.c
+++ b/drivers/infiniband/hw/irdma/cm.c
@@ -2209,8 +2209,12 @@ static void irdma_cm_free_ah(struct irdma_cm_node *cm_node)
 			ibdev_warn(&iwdev->ibdev,
 				   "application TOS[%d] and remote client TOS[%d] mismatch\n",
 				   listener->tos, cm_info->tos);
-		cm_node->tos = max(listener->tos, cm_info->tos);
-		cm_node->user_pri = rt_tos2priority(cm_node->tos);
+		if (iwdev->vsi.dscp_mode) {
+			cm_node->user_pri = listener->user_pri;
+		} else {
+			cm_node->tos = max(listener->tos, cm_info->tos);
+			cm_node->user_pri = rt_tos2priority(cm_node->tos);
+		}
 		ibdev_dbg(&iwdev->ibdev,
 			  "DCB: listener: TOS:[%d] UP:[%d]\n", cm_node->tos,
 			  cm_node->user_pri);
@@ -3835,7 +3839,11 @@ int irdma_connect(struct iw_cm_id *cm_id, struct iw_cm_conn_param *conn_param)
 	cm_info.cm_id = cm_id;
 	cm_info.qh_qpid = iwdev->vsi.ilq->qp_id;
 	cm_info.tos = cm_id->tos;
-	cm_info.user_pri = rt_tos2priority(cm_id->tos);
+	if (iwdev->vsi.dscp_mode)
+		cm_info.user_pri =
+			iwqp->sc_qp.vsi->dscp_map[irdma_tos2dscp(cm_info.tos)];
+	else
+		cm_info.user_pri = rt_tos2priority(cm_id->tos);
 
 	if (iwqp->sc_qp.dev->ws_add(iwqp->sc_qp.vsi, cm_info.user_pri))
 		return -ENOMEM;
@@ -3977,7 +3985,11 @@ int irdma_create_listen(struct iw_cm_id *cm_id, int backlog)
 	cm_id->provider_data = cm_listen_node;
 
 	cm_listen_node->tos = cm_id->tos;
-	cm_listen_node->user_pri = rt_tos2priority(cm_id->tos);
+	if (iwdev->vsi.dscp_mode)
+		cm_listen_node->user_pri =
+			iwdev->vsi.dscp_map[irdma_tos2dscp(cm_id->tos)];
+	else
+		cm_listen_node->user_pri = rt_tos2priority(cm_id->tos);
 	cm_info.user_pri = cm_listen_node->user_pri;
 	if (!cm_listen_node->reused_node) {
 		if (wildcard) {
diff --git a/drivers/infiniband/hw/irdma/cm.h b/drivers/infiniband/hw/irdma/cm.h
index 3bf4272..19c2849 100644
--- a/drivers/infiniband/hw/irdma/cm.h
+++ b/drivers/infiniband/hw/irdma/cm.h
@@ -384,6 +384,13 @@ int irdma_schedule_cm_timer(struct irdma_cm_node *cm_node,
 			    struct irdma_puda_buf *sqbuf,
 			    enum irdma_timer_type type, int send_retrans,
 			    int close_when_complete);
+
+static inline u8 irdma_tos2dscp(u8 tos)
+{
+#define IRDMA_DSCP_VAL GENMASK(7, 2)
+	return (u8)FIELD_GET(IRDMA_DSCP_VAL, tos);
+}
+
 int irdma_accept(struct iw_cm_id *cm_id, struct iw_cm_conn_param *conn_param);
 int irdma_reject(struct iw_cm_id *cm_id, const void *pdata, u8 pdata_len);
 int irdma_connect(struct iw_cm_id *cm_id, struct iw_cm_conn_param *conn_param);
diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index ef1d6ad..94a9c26 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -77,6 +77,12 @@ static void irdma_set_qos_info(struct irdma_sc_vsi  *vsi,
 
 	vsi->qos_rel_bw = l2p->vsi_rel_bw;
 	vsi->qos_prio_type = l2p->vsi_prio_type;
+	vsi->dscp_mode = l2p->dscp_mode;
+	if (l2p->dscp_mode) {
+		memcpy(vsi->dscp_map, l2p->dscp_map, sizeof(vsi->dscp_map));
+		for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++)
+			l2p->up2tc[i] = i;
+	}
 	for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++) {
 		if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
 			vsi->qos[i].qs_handle = l2p->qs_handle_list[i];
diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index 179667b..9762526 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -79,6 +79,10 @@ static void irdma_fill_qos_info(struct irdma_l2params *l2params,
 	}
 	for (i = 0; i < IIDC_MAX_USER_PRIORITY; i++)
 		l2params->up2tc[i] = qos_info->up2tc[i];
+	if (qos_info->pfc_mode == IIDC_DSCP_PFC_MODE) {
+		l2params->dscp_mode = true;
+		memcpy(l2params->dscp_map, qos_info->dscp_map, sizeof(l2params->dscp_map));
+	}
 }
 
 static void irdma_iidc_event_handler(struct ice_pf *pf, struct iidc_event *event)
@@ -110,7 +114,7 @@ static void irdma_iidc_event_handler(struct ice_pf *pf, struct iidc_event *event
 		ice_get_qos_params(pf, &qos_info);
 		irdma_fill_qos_info(&l2params, &qos_info);
 		if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
-			iwdev->dcb_vlan_mode = qos_info.num_tc > 1;
+			iwdev->dcb_vlan_mode = qos_info.num_tc > 1 && !l2params.dscp_mode;
 		irdma_change_l2params(&iwdev->vsi, &l2params);
 	} else if (*event->type & BIT(IIDC_EVENT_CRIT_ERR)) {
 		ibdev_warn(&iwdev->ibdev, "ICE OICR event notification: oicr = 0x%08x\n",
@@ -285,7 +289,7 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
 	ice_get_qos_params(pf, &qos_info);
 	irdma_fill_qos_info(&l2params, &qos_info);
 	if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
-		iwdev->dcb_vlan_mode = l2params.num_tc > 1;
+		iwdev->dcb_vlan_mode = l2params.num_tc > 1 && !l2params.dscp_mode;
 
 	if (irdma_rt_init_hw(iwdev, &l2params)) {
 		err = -EIO;
diff --git a/drivers/infiniband/hw/irdma/osdep.h b/drivers/infiniband/hw/irdma/osdep.h
index 63d8bb3..6e28e43 100644
--- a/drivers/infiniband/hw/irdma/osdep.h
+++ b/drivers/infiniband/hw/irdma/osdep.h
@@ -5,6 +5,7 @@
 
 #include <linux/pci.h>
 #include <linux/bitfield.h>
+#include <linux/net/intel/iidc.h>
 #include <crypto/hash.h>
 #include <rdma/ib_verbs.h>
 
diff --git a/drivers/infiniband/hw/irdma/type.h b/drivers/infiniband/hw/irdma/type.h
index 9483bb3..4290a2c 100644
--- a/drivers/infiniband/hw/irdma/type.h
+++ b/drivers/infiniband/hw/irdma/type.h
@@ -611,6 +611,8 @@ struct irdma_sc_vsi {
 				struct irdma_ws_node *tc_node);
 	u8 qos_rel_bw;
 	u8 qos_prio_type;
+	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
+	bool dscp_mode:1;
 };
 
 struct irdma_sc_dev {
@@ -735,11 +737,13 @@ struct irdma_l2params {
 	u16 qs_handle_list[IRDMA_MAX_USER_PRIORITY];
 	u16 mtu;
 	u8 up2tc[IRDMA_MAX_USER_PRIORITY];
+	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
 	u8 num_tc;
 	u8 vsi_rel_bw;
 	u8 vsi_prio_type;
 	bool mtu_changed:1;
 	bool tc_changed:1;
+	bool dscp_mode:1;
 };
 
 struct irdma_vsi_init_info {
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 382524A4CA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 18:00:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B010983F7B;
	Mon, 31 Jan 2022 17:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ozXeEqkuAHz; Mon, 31 Jan 2022 17:00:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB82D830B8;
	Mon, 31 Jan 2022 17:00:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00E1A1BF375
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3EB6830B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdC6gvvreSlQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 17:00:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B22C83022
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643648432; x=1675184432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8zj3z4ViCR7+aurmIgZ2hKrZ63yRgLcTztXaX4N2X10=;
 b=AcqiHKZGOj3mzaAjRhL3XyPXFOm0vldXZoXR6S8ZYp6+0J/KXg5mydcE
 O1F8UyjIDGJqbwiRh3Yf6ss9qlQm9X3e8JXzi1+6wF/8h9qr+9kDWKRO1
 KOIIljeDh4SRT25VG/IuxlNK0xTUv0CB1QEHnh/fPnmBhhNn+bT8Gfg9h
 0xTlbdmediL2hzWdiyFG/HDQhJqjFJ1VFgzsvGW0N7rs2lj0GA58SKnD5
 Wv0dai21u1nWT15rtuyC02WcF1GmhIELest0KCljzLQy5kGOxfGqc4Qpd
 /c5kDMHCUa6NQbNnHtqmV3GiNC3XgqMjdkQZFklpAXunVMc3VjOY3q8Tr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="234897925"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="234897925"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:00:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="537278707"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.255.33.15])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:00:28 -0800
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: epg.nat.hpm.dev@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Jan 2022 10:59:20 -0600
Message-Id: <20220131165921.1392-3-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20220131165921.1392-1-shiraz.saleem@intel.com>
References: <20220131165921.1392-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH for-next 2/3] RDMA/irdma: Refactor DCB
 bits in prep for DSCP support
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

Rename dcb flag to dcb_vlan_mode in irdma_device struct.
Add a new helper function, irdma_set_qos_info, to set
the VSI QoS information passed by the PCI driver.

Signed-off-by: Mustafa Ismail <mustafa.ismail@intel.com>
Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/infiniband/hw/irdma/cm.c       |  4 ++--
 drivers/infiniband/hw/irdma/ctrl.c     | 33 +++++++++++++++++++++------------
 drivers/infiniband/hw/irdma/i40iw_if.c |  2 +-
 drivers/infiniband/hw/irdma/main.c     |  6 +++++-
 drivers/infiniband/hw/irdma/main.h     |  2 +-
 drivers/infiniband/hw/irdma/verbs.c    |  4 ++--
 6 files changed, 32 insertions(+), 19 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/cm.c b/drivers/infiniband/hw/irdma/cm.c
index 6dea0a4..6ff1800 100644
--- a/drivers/infiniband/hw/irdma/cm.c
+++ b/drivers/infiniband/hw/irdma/cm.c
@@ -2200,7 +2200,7 @@ static void irdma_cm_free_ah(struct irdma_cm_node *cm_node)
 	/* set our node specific transport info */
 	cm_node->ipv4 = cm_info->ipv4;
 	cm_node->vlan_id = cm_info->vlan_id;
-	if (cm_node->vlan_id >= VLAN_N_VID && iwdev->dcb)
+	if (cm_node->vlan_id >= VLAN_N_VID && iwdev->dcb_vlan_mode)
 		cm_node->vlan_id = 0;
 	cm_node->tos = cm_info->tos;
 	cm_node->user_pri = cm_info->user_pri;
@@ -3959,7 +3959,7 @@ int irdma_create_listen(struct iw_cm_id *cm_id, int backlog)
 		}
 	}
 
-	if (cm_info.vlan_id >= VLAN_N_VID && iwdev->dcb)
+	if (cm_info.vlan_id >= VLAN_N_VID && iwdev->dcb_vlan_mode)
 		cm_info.vlan_id = 0;
 	cm_info.backlog = backlog;
 	cm_info.cm_id = cm_id;
diff --git a/drivers/infiniband/hw/irdma/ctrl.c b/drivers/infiniband/hw/irdma/ctrl.c
index 3141a9c..ef1d6ad 100644
--- a/drivers/infiniband/hw/irdma/ctrl.c
+++ b/drivers/infiniband/hw/irdma/ctrl.c
@@ -70,6 +70,25 @@ void irdma_sc_suspend_resume_qps(struct irdma_sc_vsi *vsi, u8 op)
 	}
 }
 
+static void irdma_set_qos_info(struct irdma_sc_vsi  *vsi,
+			       struct irdma_l2params *l2p)
+{
+	u8 i;
+
+	vsi->qos_rel_bw = l2p->vsi_rel_bw;
+	vsi->qos_prio_type = l2p->vsi_prio_type;
+	for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++) {
+		if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
+			vsi->qos[i].qs_handle = l2p->qs_handle_list[i];
+		vsi->qos[i].traffic_class = l2p->up2tc[i];
+		vsi->qos[i].rel_bw =
+			l2p->tc_info[vsi->qos[i].traffic_class].rel_bw;
+		vsi->qos[i].prio_type =
+			l2p->tc_info[vsi->qos[i].traffic_class].prio_type;
+		vsi->qos[i].valid = false;
+	}
+}
+
 /**
  * irdma_change_l2params - given the new l2 parameters, change all qp
  * @vsi: RDMA VSI pointer
@@ -88,6 +107,7 @@ void irdma_change_l2params(struct irdma_sc_vsi *vsi,
 		return;
 
 	vsi->tc_change_pending = false;
+	irdma_set_qos_info(vsi, l2params);
 	irdma_sc_suspend_resume_qps(vsi, IRDMA_OP_RESUME);
 }
 
@@ -1845,7 +1865,6 @@ static void irdma_null_ws_reset(struct irdma_sc_vsi *vsi)
 void irdma_sc_vsi_init(struct irdma_sc_vsi  *vsi,
 		       struct irdma_vsi_init_info *info)
 {
-	struct irdma_l2params *l2p;
 	int i;
 
 	vsi->dev = info->dev;
@@ -1858,18 +1877,8 @@ void irdma_sc_vsi_init(struct irdma_sc_vsi  *vsi,
 	if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
 		vsi->fcn_id = info->dev->hmc_fn_id;
 
-	l2p = info->params;
-	vsi->qos_rel_bw = l2p->vsi_rel_bw;
-	vsi->qos_prio_type = l2p->vsi_prio_type;
+	irdma_set_qos_info(vsi, info->params);
 	for (i = 0; i < IRDMA_MAX_USER_PRIORITY; i++) {
-		if (vsi->dev->hw_attrs.uk_attrs.hw_rev == IRDMA_GEN_1)
-			vsi->qos[i].qs_handle = l2p->qs_handle_list[i];
-		vsi->qos[i].traffic_class = info->params->up2tc[i];
-		vsi->qos[i].rel_bw =
-			l2p->tc_info[vsi->qos[i].traffic_class].rel_bw;
-		vsi->qos[i].prio_type =
-			l2p->tc_info[vsi->qos[i].traffic_class].prio_type;
-		vsi->qos[i].valid = false;
 		mutex_init(&vsi->qos[i].qos_mutex);
 		INIT_LIST_HEAD(&vsi->qos[i].qplist);
 	}
diff --git a/drivers/infiniband/hw/irdma/i40iw_if.c b/drivers/infiniband/hw/irdma/i40iw_if.c
index 43e962b..8b5bd77 100644
--- a/drivers/infiniband/hw/irdma/i40iw_if.c
+++ b/drivers/infiniband/hw/irdma/i40iw_if.c
@@ -138,7 +138,7 @@ static int i40iw_open(struct i40e_info *cdev_info, struct i40e_client *client)
 		if (last_qset == IRDMA_NO_QSET)
 			last_qset = qset;
 		else if ((qset != last_qset) && (qset != IRDMA_NO_QSET))
-			iwdev->dcb = true;
+			iwdev->dcb_vlan_mode = true;
 	}
 
 	if (irdma_rt_init_hw(iwdev, &l2params)) {
diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index 9fab290..179667b 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -108,8 +108,9 @@ static void irdma_iidc_event_handler(struct ice_pf *pf, struct iidc_event *event
 		l2params.tc_changed = true;
 		ibdev_dbg(&iwdev->ibdev, "CLNT: TC Change\n");
 		ice_get_qos_params(pf, &qos_info);
-		iwdev->dcb = qos_info.num_tc > 1;
 		irdma_fill_qos_info(&l2params, &qos_info);
+		if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
+			iwdev->dcb_vlan_mode = qos_info.num_tc > 1;
 		irdma_change_l2params(&iwdev->vsi, &l2params);
 	} else if (*event->type & BIT(IIDC_EVENT_CRIT_ERR)) {
 		ibdev_warn(&iwdev->ibdev, "ICE OICR event notification: oicr = 0x%08x\n",
@@ -283,6 +284,9 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
 	l2params.mtu = iwdev->netdev->mtu;
 	ice_get_qos_params(pf, &qos_info);
 	irdma_fill_qos_info(&l2params, &qos_info);
+	if (iwdev->rf->protocol_used != IRDMA_IWARP_PROTOCOL_ONLY)
+		iwdev->dcb_vlan_mode = l2params.num_tc > 1;
+
 	if (irdma_rt_init_hw(iwdev, &l2params)) {
 		err = -EIO;
 		goto err_rt_init;
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index cb218ca..cf6732b 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -345,7 +345,7 @@ struct irdma_device {
 	u8 iw_status;
 	bool roce_mode:1;
 	bool roce_dcqcn_en:1;
-	bool dcb:1;
+	bool dcb_vlan_mode:1;
 	bool iw_ooo:1;
 	enum init_completion_state init_state;
 
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index 460e757..7b144e5 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -1189,7 +1189,7 @@ int irdma_modify_qp_roce(struct ib_qp *ibqp, struct ib_qp_attr *attr,
 		if (ret)
 			return ret;
 
-		if (vlan_id >= VLAN_N_VID && iwdev->dcb)
+		if (vlan_id >= VLAN_N_VID && iwdev->dcb_vlan_mode)
 			vlan_id = 0;
 		if (vlan_id < VLAN_N_VID) {
 			udp_info->insert_vlan_tag = true;
@@ -4229,7 +4229,7 @@ static int irdma_create_ah(struct ib_ah *ibah,
 		goto error;
 	}
 
-	if (ah_info->vlan_tag >= VLAN_N_VID && iwdev->dcb)
+	if (ah_info->vlan_tag >= VLAN_N_VID && iwdev->dcb_vlan_mode)
 		ah_info->vlan_tag = 0;
 
 	if (ah_info->vlan_tag < VLAN_N_VID) {
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5065235D4AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 03:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7AB283D61;
	Tue, 13 Apr 2021 01:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHPiQMLSnVRv; Tue, 13 Apr 2021 01:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 546FE83D6A;
	Tue, 13 Apr 2021 01:08:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FB011BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A41E68426E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0e6_f-MzbLDy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 01:08:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A941F83D74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:04 +0000 (UTC)
IronPort-SDR: cmF2+f+hO7HgxzbsL/ejPC0PLWChwZH/mOeBlCI5wSK+KgFAElUJrPw3CmaSIDJsgzMWXw5oo8
 89L1UyDAEr7A==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="192181664"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="192181664"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 18:08:04 -0700
IronPort-SDR: TdPHWAGXifaaY8PwT/cpwanNZJpPW0nzaAK/UkCt8TXMLKlAWJRju7dQxyFTRmtmrQf5wUAjq9
 0cV4fk4CO+Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="521400322"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga001.fm.intel.com with ESMTP; 12 Apr 2021 18:08:01 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Apr 2021 08:48:41 +0800
Message-Id: <20210413004844.32462-4-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210413004844.32462-1-haiyue.wang@intel.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 3/6] iavf: Add framework to
 enable ethtool RSS config
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add the virtchnl message interface to VF, so that VF can request RSS
input set(s) based on PF's capability.

This framework allows ethtool RSS config support on the VF driver.

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  10 ++
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  25 +++
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  27 ++++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 152 ++++++++++++++++++
 4 files changed, 214 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_adv_rss.h

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 09e5b9cf5719..1e996d9c1351 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -38,6 +38,7 @@
 #include <linux/avf/virtchnl.h>
 #include "iavf_txrx.h"
 #include "iavf_fdir.h"
+#include "iavf_adv_rss.h"
 
 #define DEFAULT_DEBUG_LEVEL_SHIFT 3
 #define PFX "iavf: "
@@ -304,6 +305,8 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DEL_CLOUD_FILTER		BIT(24)
 #define IAVF_FLAG_AQ_ADD_FDIR_FILTER		BIT(25)
 #define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
+#define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT(27)
+#define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
 
 	/* OS defined structs */
 	struct net_device *netdev;
@@ -346,6 +349,8 @@ struct iavf_adapter {
 			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
 #define FDIR_FLTR_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
 			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
+#define ADV_RSS_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
+			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
@@ -373,6 +378,9 @@ struct iavf_adapter {
 	u16 fdir_active_fltr;
 	struct list_head fdir_list_head;
 	spinlock_t fdir_fltr_lock;	/* protect the Flow Director filter list */
+
+	struct list_head adv_rss_list_head;
+	spinlock_t adv_rss_lock;	/* protect the RSS management list */
 };
 
 
@@ -445,6 +453,8 @@ void iavf_add_cloud_filter(struct iavf_adapter *adapter);
 void iavf_del_cloud_filter(struct iavf_adapter *adapter);
 void iavf_add_fdir_filter(struct iavf_adapter *adapter);
 void iavf_del_fdir_filter(struct iavf_adapter *adapter);
+void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
+void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
 struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 					const u8 *macaddr);
 #endif /* _IAVF_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
new file mode 100644
index 000000000000..66262090e697
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2021, Intel Corporation. */
+
+#ifndef _IAVF_ADV_RSS_H_
+#define _IAVF_ADV_RSS_H_
+
+struct iavf_adapter;
+
+/* State of advanced RSS configuration */
+enum iavf_adv_rss_state_t {
+	IAVF_ADV_RSS_ADD_REQUEST,	/* User requests to add RSS */
+	IAVF_ADV_RSS_ADD_PENDING,	/* RSS pending add by the PF */
+	IAVF_ADV_RSS_DEL_REQUEST,	/* Driver requests to delete RSS */
+	IAVF_ADV_RSS_DEL_PENDING,	/* RSS pending delete by the PF */
+	IAVF_ADV_RSS_ACTIVE,		/* RSS configuration is active */
+};
+
+/* bookkeeping of advanced RSS configuration */
+struct iavf_adv_rss {
+	enum iavf_adv_rss_state_t state;
+	struct list_head list;
+
+	struct virtchnl_rss_cfg cfg_msg;
+};
+#endif /* _IAVF_ADV_RSS_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 357e66e866b7..1323778f461d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -962,6 +962,7 @@ void iavf_down(struct iavf_adapter *adapter)
 	struct iavf_cloud_filter *cf;
 	struct iavf_fdir_fltr *fdir;
 	struct iavf_mac_filter *f;
+	struct iavf_adv_rss *rss;
 
 	if (adapter->state <= __IAVF_DOWN_PENDING)
 		return;
@@ -1004,6 +1005,12 @@ void iavf_down(struct iavf_adapter *adapter)
 	}
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
 
+	/* remove all advance RSS configuration */
+	spin_lock_bh(&adapter->adv_rss_lock);
+	list_for_each_entry(rss, &adapter->adv_rss_list_head, list)
+		rss->state = IAVF_ADV_RSS_DEL_REQUEST;
+	spin_unlock_bh(&adapter->adv_rss_lock);
+
 	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
 	    adapter->state != __IAVF_RESETTING) {
 		/* cancel any current operation */
@@ -1016,6 +1023,7 @@ void iavf_down(struct iavf_adapter *adapter)
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
+		adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
 		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
 	}
 
@@ -1646,6 +1654,14 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_del_fdir_filter(adapter);
 		return IAVF_SUCCESS;
 	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_ADV_RSS_CFG) {
+		iavf_add_adv_rss_cfg(adapter);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_ADV_RSS_CFG) {
+		iavf_del_adv_rss_cfg(adapter);
+		return 0;
+	}
 	return -EAGAIN;
 }
 
@@ -3776,11 +3792,13 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	spin_lock_init(&adapter->mac_vlan_list_lock);
 	spin_lock_init(&adapter->cloud_filter_list_lock);
 	spin_lock_init(&adapter->fdir_fltr_lock);
+	spin_lock_init(&adapter->adv_rss_lock);
 
 	INIT_LIST_HEAD(&adapter->mac_filter_list);
 	INIT_LIST_HEAD(&adapter->vlan_filter_list);
 	INIT_LIST_HEAD(&adapter->cloud_filter_list);
 	INIT_LIST_HEAD(&adapter->fdir_list_head);
+	INIT_LIST_HEAD(&adapter->adv_rss_list_head);
 
 	INIT_WORK(&adapter->reset_task, iavf_reset_task);
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
@@ -3886,6 +3904,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	struct iavf_fdir_fltr *fdir, *fdirtmp;
 	struct iavf_vlan_filter *vlf, *vlftmp;
+	struct iavf_adv_rss *rss, *rsstmp;
 	struct iavf_mac_filter *f, *ftmp;
 	struct iavf_cloud_filter *cf, *cftmp;
 	struct iavf_hw *hw = &adapter->hw;
@@ -3969,6 +3988,14 @@ static void iavf_remove(struct pci_dev *pdev)
 	}
 	spin_unlock_bh(&adapter->fdir_fltr_lock);
 
+	spin_lock_bh(&adapter->adv_rss_lock);
+	list_for_each_entry_safe(rss, rsstmp, &adapter->adv_rss_list_head,
+				 list) {
+		list_del(&rss->list);
+		kfree(rss);
+	}
+	spin_unlock_bh(&adapter->adv_rss_lock);
+
 	free_netdev(netdev);
 
 	pci_disable_pcie_error_reporting(pdev);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 9aaade0aae4c..54d2efe1732d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -142,6 +142,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_ADQ |
 	       VIRTCHNL_VF_OFFLOAD_USO |
 	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
+	       VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF |
 	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
 
 	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES;
@@ -1294,6 +1295,102 @@ void iavf_del_fdir_filter(struct iavf_adapter *adapter)
 	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_FDIR_FILTER, (u8 *)&f, len);
 }
 
+/**
+ * iavf_add_adv_rss_cfg
+ * @adapter: the VF adapter structure
+ *
+ * Request that the PF add RSS configuration as specified
+ * by the user via ethtool.
+ **/
+void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter)
+{
+	struct virtchnl_rss_cfg *rss_cfg;
+	struct iavf_adv_rss *rss;
+	bool process_rss = false;
+	int len;
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev, "Cannot add RSS configuration, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	len = sizeof(struct virtchnl_rss_cfg);
+	rss_cfg = kzalloc(len, GFP_KERNEL);
+	if (!rss_cfg)
+		return;
+
+	spin_lock_bh(&adapter->adv_rss_lock);
+	list_for_each_entry(rss, &adapter->adv_rss_list_head, list) {
+		if (rss->state == IAVF_ADV_RSS_ADD_REQUEST) {
+			process_rss = true;
+			rss->state = IAVF_ADV_RSS_ADD_PENDING;
+			memcpy(rss_cfg, &rss->cfg_msg, len);
+			break;
+		}
+	}
+	spin_unlock_bh(&adapter->adv_rss_lock);
+
+	if (process_rss) {
+		adapter->current_op = VIRTCHNL_OP_ADD_RSS_CFG;
+		iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_RSS_CFG,
+				 (u8 *)rss_cfg, len);
+	} else {
+		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
+	}
+
+	kfree(rss_cfg);
+}
+
+/**
+ * iavf_del_adv_rss_cfg
+ * @adapter: the VF adapter structure
+ *
+ * Request that the PF delete RSS configuration as specified
+ * by the user via ethtool.
+ **/
+void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter)
+{
+	struct virtchnl_rss_cfg *rss_cfg;
+	struct iavf_adv_rss *rss;
+	bool process_rss = false;
+	int len;
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev, "Cannot remove RSS configuration, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	len = sizeof(struct virtchnl_rss_cfg);
+	rss_cfg = kzalloc(len, GFP_KERNEL);
+	if (!rss_cfg)
+		return;
+
+	spin_lock_bh(&adapter->adv_rss_lock);
+	list_for_each_entry(rss, &adapter->adv_rss_list_head, list) {
+		if (rss->state == IAVF_ADV_RSS_DEL_REQUEST) {
+			process_rss = true;
+			rss->state = IAVF_ADV_RSS_DEL_PENDING;
+			memcpy(rss_cfg, &rss->cfg_msg, len);
+			break;
+		}
+	}
+	spin_unlock_bh(&adapter->adv_rss_lock);
+
+	if (process_rss) {
+		adapter->current_op = VIRTCHNL_OP_DEL_RSS_CFG;
+		iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_RSS_CFG,
+				 (u8 *)rss_cfg, len);
+	} else {
+		adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
+	}
+
+	kfree(rss_cfg);
+}
+
 /**
  * iavf_request_reset
  * @adapter: adapter structure
@@ -1494,6 +1591,37 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			spin_unlock_bh(&adapter->fdir_fltr_lock);
 			}
 			break;
+		case VIRTCHNL_OP_ADD_RSS_CFG: {
+			struct iavf_adv_rss *rss, *rss_tmp;
+
+			spin_lock_bh(&adapter->adv_rss_lock);
+			list_for_each_entry_safe(rss, rss_tmp,
+						 &adapter->adv_rss_list_head,
+						 list) {
+				if (rss->state == IAVF_ADV_RSS_ADD_PENDING) {
+					list_del(&rss->list);
+					kfree(rss);
+				}
+			}
+			spin_unlock_bh(&adapter->adv_rss_lock);
+			}
+			break;
+		case VIRTCHNL_OP_DEL_RSS_CFG: {
+			struct iavf_adv_rss *rss;
+
+			spin_lock_bh(&adapter->adv_rss_lock);
+			list_for_each_entry(rss, &adapter->adv_rss_list_head,
+					    list) {
+				if (rss->state == IAVF_ADV_RSS_DEL_PENDING) {
+					rss->state = IAVF_ADV_RSS_ACTIVE;
+					dev_err(&adapter->pdev->dev, "Failed to delete RSS configuration, error %s\n",
+						iavf_stat_str(&adapter->hw,
+							      v_retval));
+				}
+			}
+			spin_unlock_bh(&adapter->adv_rss_lock);
+			}
+			break;
 		case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
 		case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
 			dev_warn(&adapter->pdev->dev, "Changing VLAN Stripping is not allowed when Port VLAN is configured\n");
@@ -1683,6 +1811,30 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		spin_unlock_bh(&adapter->fdir_fltr_lock);
 		}
 		break;
+	case VIRTCHNL_OP_ADD_RSS_CFG: {
+		struct iavf_adv_rss *rss;
+
+		spin_lock_bh(&adapter->adv_rss_lock);
+		list_for_each_entry(rss, &adapter->adv_rss_list_head, list)
+			if (rss->state == IAVF_ADV_RSS_ADD_PENDING)
+				rss->state = IAVF_ADV_RSS_ACTIVE;
+		spin_unlock_bh(&adapter->adv_rss_lock);
+		}
+		break;
+	case VIRTCHNL_OP_DEL_RSS_CFG: {
+		struct iavf_adv_rss *rss, *rss_tmp;
+
+		spin_lock_bh(&adapter->adv_rss_lock);
+		list_for_each_entry_safe(rss, rss_tmp,
+					 &adapter->adv_rss_list_head, list) {
+			if (rss->state == IAVF_ADV_RSS_DEL_PENDING) {
+				list_del(&rss->list);
+				kfree(rss);
+			}
+		}
+		spin_unlock_bh(&adapter->adv_rss_lock);
+		}
+		break;
 	default:
 		if (adapter->current_op && (v_opcode != adapter->current_op))
 			dev_warn(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

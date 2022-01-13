Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A00D48D94C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jan 2022 14:48:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 636D384CC8;
	Thu, 13 Jan 2022 13:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Sn3cZHFfMZJ; Thu, 13 Jan 2022 13:48:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A31F84CC3;
	Thu, 13 Jan 2022 13:48:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76FCC1BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 13:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E23A6FC3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 13:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ik0Zn8HZ2tfA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jan 2022 13:48:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64EAD6FC2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 13:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642081716; x=1673617716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PrSnBd9WNdmChjxedpB4CvBPkq9gIpIepvAKNki+3us=;
 b=j/D6b9ea01a5F/uJ+0P+Y2VjxixTDSdUukHBALd4qpNSZFRV8UrxvIJP
 eBNraxyTSVmhl5Sk6+2GS7bNh1bzFrLpoVkaTExPqPvyG5AzfZaw0ulsw
 JSQbJFYP7tE1gUJnfKyeimcVNnjkc35EpWFkVBssk+tE4UWWw2Ojr63CH
 kzM8sowT/w0p5qt2fk7NtUp7X82gNDM/j0h0dw7z1eUokdC/OMcyo3A4u
 Fzw7/qU96bz9gddjD015tAnvX9BaTsi3YpL8B0uxAjD/4/RVrditMKmjo
 A2UmV+EeW520Pg/Fx3YxdWEYLx3opDhsj3AlrntR38ZiJ80YzLdXdT8CW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307353976"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307353976"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 05:48:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="613955542"
Received: from amlin-019-242.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.242])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2022 05:48:34 -0800
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Jan 2022 13:48:28 +0000
Message-Id: <20220113134828.25230-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan strip
 virtual channel messages
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
Cc: Brett Creeley <brett.creeley@intel.com>,
 Michal Maloszewski <michal.maloszewski@intel.com>,
 Norbert Ciosek <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Modify netdev->features for vlan stripping based on virtual
channel messages received from the PF. Change is needed
to synchronize vlan strip status between PF sysfs and iavf ethtool.

Fixes: 310a2ad92e3f ("virtchnl: rename i40e to generic virtchnl")
Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
v3: NETIF_F_HW_VLAN_RX changed into NETIF_F_HW_VLAN_CTAG_RX because there's
no such definition since Linux 3.10. The code is the same as the one from OOT.
Code successfully passed inner review. netdev_update_features() function is not added 
because it causes infinite loop.
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a40e29455f7d..1805c1ae3bf4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1490,6 +1490,24 @@ void iavf_request_reset(struct iavf_adapter *adapter)
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 }
 
+/**
+ * iavf_netdev_features_vlan_strip_set - update vlan strip status
+ * @netdev: ptr to netdev being adjusted
+ * @enable: enable or disable vlan strip
+ *
+ * Helper function to change vlan strip status in netdev->features.
+ */
+static void iavf_netdev_features_vlan_strip_set(struct net_device *netdev,
+						const bool enable)
+{
+	if (enable)
+		netdev->features |=
+			NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_RX;
+	else
+		netdev->features &=
+			~NETIF_F_HW_VLAN_CTAG_RX & ~NETIF_F_HW_VLAN_CTAG_RX;
+}
+
 /**
  * iavf_virtchnl_completion
  * @adapter: adapter structure
@@ -1713,8 +1731,18 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			}
 			break;
 		case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
+			dev_warn(&adapter->pdev->dev, "Changing VLAN Stripping is not allowed when Port VLAN is configured\n");
+			/* Vlan stripping could not be enabled by ethtool.
+			 * Disable it in netdev->features.
+			 */
+			iavf_netdev_features_vlan_strip_set(netdev, false);
+			break;
 		case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
 			dev_warn(&adapter->pdev->dev, "Changing VLAN Stripping is not allowed when Port VLAN is configured\n");
+			/* Vlan stripping could not be disabled by ethtool.
+			 * Enable it in netdev->features.
+			 */
+			iavf_netdev_features_vlan_strip_set(netdev, true);
 			break;
 		default:
 			dev_err(&adapter->pdev->dev, "PF returned error %d (%s) to our request %d\n",
@@ -1960,6 +1988,20 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		spin_unlock_bh(&adapter->adv_rss_lock);
 		}
 		break;
+	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
+		/* PF enabled vlan strip on this VF.
+		 * Update netdev->features if needed to be in sync with ethtool.
+		 */
+		if (!v_retval)
+			iavf_netdev_features_vlan_strip_set(netdev, true);
+		break;
+	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
+		/* PF disabled vlan strip on this VF.
+		 * Update netdev->features if needed to be in sync with ethtool.
+		 */
+		if (!v_retval)
+			iavf_netdev_features_vlan_strip_set(netdev, false);
+		break;
 	default:
 		if (adapter->current_op && (v_opcode != adapter->current_op))
 			dev_warn(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DE2425384
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Oct 2021 14:56:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0057240A27;
	Thu,  7 Oct 2021 12:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5WmQZW1Ufi58; Thu,  7 Oct 2021 12:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F360840A21;
	Thu,  7 Oct 2021 12:56:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D5D61BF861
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 12:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06662842D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 12:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmZH6ZHcYR4S for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 12:56:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23C5084213
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 12:56:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="287125113"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="287125113"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 05:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="478549583"
Received: from amlin-019-242.igk.intel.com ([10.102.19.242])
 by orsmga007.jf.intel.com with ESMTP; 07 Oct 2021 05:56:06 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 12:56:11 +0000
Message-Id: <20211007125611.50277-1-michal.maloszewski@intel.com>
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
Cc: Michal Maloszewski <michal.maloszewski@intel.com>,
 Norbert Ciosek <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Modify netdev->features for vlan stripping based on virtual
channel messages received from the PF. Change is needed
to synchronize vlan strip status between PF sysfs and iavf ethtool.

Fixes: iavf: 129cf89e58567 ("rename functions and structs to new name")
Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 48 ++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 9c128462e..8e18ae0b5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1456,6 +1456,22 @@ void iavf_request_reset(struct iavf_adapter *adapter)
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 }
 
+/**
+ * iavf_netdev_features_vlan_strip_set
+ * @netdev: ptr to netdev being adjusted
+ * @enable: enable or disable vlan strip
+ *
+ * Helper function to change vlan strip status in netdev->features.
+ **/
+static void iavf_netdev_features_vlan_strip_set(struct net_device *netdev,
+					       const bool enable)
+{
+	if (enable)
+	     netdev->features |= NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_RX;
+	else
+	     netdev->features &= ~NETIF_F_HW_VLAN_CTAG_RX & ~NETIF_F_HW_VLAN_RX;
+}
+
 /**
  * iavf_virtchnl_completion
  * @adapter: adapter structure
@@ -1679,8 +1695,22 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			}
 			break;
 		case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
+			dev_warn(&adapter->pdev->dev,
+				 "Changing VLAN Stripping is not allowed when Port VLAN is configured\n");
+			/*
+			 * Vlan stripping could not be enabled by ethtool.
+			 * Disable it in netdev->features.
+			 */
+			iavf_netdev_features_vlan_strip_set(netdev, false);
+			break;
 		case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
-			dev_warn(&adapter->pdev->dev, "Changing VLAN Stripping is not allowed when Port VLAN is configured\n");
+			dev_warn(&adapter->pdev->dev,
+				 "Changing VLAN Stripping is not allowed when Port VLAN is configured\n");
+			/*
+			 * Vlan stripping could not be disabled by ethtool.
+			 * Enable it in netdev->features.
+			 */
+			iavf_netdev_features_vlan_strip_set(netdev, true);
 			break;
 		default:
 			dev_err(&adapter->pdev->dev, "PF returned error %d (%s) to our request %d\n",
@@ -1897,6 +1927,22 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		spin_unlock_bh(&adapter->adv_rss_lock);
 		}
 		break;
+	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
+		/*
+		 * Got information that PF enabled vlan strip on this VF.
+		 * Update netdev->features if needed to be in sync with ethtool.
+		 */
+		if (!v_retval)
+			iavf_netdev_features_vlan_strip_set(netdev, true);
+		break;
+	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
+		/*
+		 * Got information that PF disabled vlan strip on this VF.
+		 * Update netdev->features if needed to be in sync with ethtool.
+		 */
+		if (!v_retval)
+			iavf_netdev_features_vlan_strip_set(netdev, false);
+		break;
 	default:
 		if (adapter->current_op && (v_opcode != adapter->current_op))
 			dev_dbg(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

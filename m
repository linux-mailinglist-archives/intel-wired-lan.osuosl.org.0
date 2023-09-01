Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EE3790130
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 19:09:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E27A4208D;
	Fri,  1 Sep 2023 17:09:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E27A4208D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693588174;
	bh=gVNV6vXFc4D29NmhOTHPoeWPzo0lgDOUWZWp6e5C8w0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3wZY4w2AM7ee10FFkoQy9Ujaq8OtMwkFLCjjieQjxIbdGVyk2lWKVxRIs8BPEBwV/
	 9vEZ5IEsuveI18fdo7ubBtuT9cOfWcTBUDhBuizOvHgGyNwN7Dn4HZ2xO/5tiWzTux
	 L4g+fGbKihEyj4ZYKaFswk5RQs243mej2ndhTW+EFX6pPqC+04aU9pIBGcrUbeYH9d
	 DOgi0cOytleqWAc2+f0EEDjG5u7DEbFPYHe8eoQdNpIMI7Hc5j6VnWi1c19DEwWSc9
	 /NmjwmCU+ONpzNMX5Fku7GEQKzvmUK6vwhlFuweuLxuobP42leKSpv7q229oSQoaro
	 lt12pXxbARQlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id es1gZbCZdZFR; Fri,  1 Sep 2023 17:09:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD67D41FAC;
	Fri,  1 Sep 2023 17:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD67D41FAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D5221BF576
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E59EA818C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E59EA818C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XImKpLrFTjgn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 17:09:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDA93818D4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDA93818D4
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="366495589"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="366495589"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 10:09:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="854787629"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="854787629"
Received: from kgdowskx-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.251.215.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 10:09:10 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Sep 2023 11:08:50 -0600
Message-Id: <20230901170850.3493782-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901170850.3493782-1-ahmed.zaki@intel.com>
References: <20230901170850.3493782-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693588156; x=1725124156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ml11XlYHehpmSnhaOox7Ud4jaxZv7sK4TEVUjA1JUR8=;
 b=LjQU8ZrQrid1J4BNrH5+Asz0BDjzhgDXtOyjAuQWet7OPO7LnwA7KiLW
 9AwvOvg8ErYvI+8vgHYALF+CyFWAHbMld0ROngeuoxtDxPRCzXDDXsCgq
 t8rjumtHhBYq240vHt8j7330GEjE6i61Jg5M9qrXayC1hSQTektMRG+CL
 OTmpgiyU5T0HZnkppmj0fgKDvis0QHhx34yvzeU+tQ0E8A+lSuWHiZVaW
 ZtD0ZO4AjBAoYWE/3HzJVUwrbT0a+G5HROFO0O9dx5lHm33u5DDD2NevD
 FR2+kVbwpV95W+eOXSbtrIkwSyxcvwh7zJv6bjEWCCCjw9BatjKNfvvMQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LjQU8ZrQ
Subject: [Intel-wired-lan] [PATCH iwl-next v4 4/4] iavf: Add ability to turn
 off CRC stripping for VF
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Norbert Zulinski <norbertx.zulinski@intel.com>

Previously CRC stripping was always enabled for VF.

Now it is possible to turn off CRC stripping via ethtool.
        ethtool -K <interface> rx-fcs off
To turn off CRC stripping, first vlan stripping must be disabled.

In iavf_configure_queues add check if CRC stripping is enabled for
VF, if it's enabled then set crc_disabled to false on every VF's
queue. In iavf_set_features add check if CRC stripping setting was
changed then schedule reset.

Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 59 ++++++++++++++++++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 ++
 3 files changed, 64 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 738e25657c6b..f32b0453584f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -406,6 +406,8 @@ struct iavf_adapter {
 			  VIRTCHNL_VF_OFFLOAD_VLAN)
 #define VLAN_V2_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
 			     VIRTCHNL_VF_OFFLOAD_VLAN_V2)
+#define CRC_OFFLOAD_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
+				 VIRTCHNL_VF_OFFLOAD_CRC)
 #define VLAN_V2_FILTERING_ALLOWED(_a) \
 	(VLAN_V2_ALLOWED((_a)) && \
 	 ((_a)->vlan_v2_caps.filtering.filtering_support.outer || \
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0302e46e7942..ed4666b59ad2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4402,6 +4402,9 @@ static int iavf_set_features(struct net_device *netdev,
 	    (features & NETIF_VLAN_OFFLOAD_FEATURES))
 		iavf_set_vlan_offload_features(adapter, netdev->features,
 					       features);
+	if (CRC_OFFLOAD_ALLOWED(adapter) &&
+	    ((netdev->features & NETIF_F_RXFCS) ^ (features & NETIF_F_RXFCS)))
+		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
 
 	return 0;
 }
@@ -4523,6 +4526,9 @@ iavf_get_netdev_vlan_hw_features(struct iavf_adapter *adapter)
 		}
 	}
 
+	if (CRC_OFFLOAD_ALLOWED(adapter))
+		hw_features |= NETIF_F_RXFCS;
+
 	return hw_features;
 }
 
@@ -4686,6 +4692,55 @@ iavf_fix_netdev_vlan_features(struct iavf_adapter *adapter,
 	return requested_features;
 }
 
+/**
+ * iavf_fix_strip_features - fix NETDEV strip features based on functionality
+ * @adapter: board private structure
+ * @requested_features: stack requested NETDEV features
+ *
+ * Returns fixed-up features bits
+ **/
+static netdev_features_t
+iavf_fix_strip_features(struct iavf_adapter *adapter,
+			netdev_features_t requested_features)
+{
+	struct net_device *netdev = adapter->netdev;
+	bool crc_offload_req, is_vlan_strip;
+	netdev_features_t vlan_strip;
+	int num_non_zero_vlan;
+
+	crc_offload_req = CRC_OFFLOAD_ALLOWED(adapter) &&
+			  (requested_features & NETIF_F_RXFCS);
+	num_non_zero_vlan = iavf_get_num_vlans_added(adapter);
+	vlan_strip = (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_STAG_RX);
+	is_vlan_strip = requested_features & vlan_strip;
+
+	if (!crc_offload_req)
+		return requested_features;
+
+	if (!num_non_zero_vlan && (netdev->features & vlan_strip) &&
+	    !(netdev->features & NETIF_F_RXFCS) && is_vlan_strip) {
+		requested_features &= ~vlan_strip;
+		netdev_info(netdev, "Disabling VLAN stripping as FCS/CRC stripping is also disabled and there is no VLAN configured\n");
+		return requested_features;
+	}
+
+	if ((netdev->features & NETIF_F_RXFCS) && is_vlan_strip) {
+		requested_features &= ~vlan_strip;
+		if (!(netdev->features & vlan_strip))
+			netdev_info(netdev, "To enable VLAN stripping, first need to enable FCS/CRC stripping");
+
+		return requested_features;
+	}
+
+	if (num_non_zero_vlan && is_vlan_strip &&
+	    !(netdev->features & NETIF_F_RXFCS)) {
+		requested_features &= ~NETIF_F_RXFCS;
+		netdev_info(netdev, "To disable FCS/CRC stripping, first need to disable VLAN stripping");
+	}
+
+	return requested_features;
+}
+
 /**
  * iavf_fix_features - fix up the netdev feature bits
  * @netdev: our net device
@@ -4698,7 +4753,9 @@ static netdev_features_t iavf_fix_features(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
-	return iavf_fix_netdev_vlan_features(adapter, features);
+	features = iavf_fix_netdev_vlan_features(adapter, features);
+
+	return iavf_fix_strip_features(adapter, features);
 }
 
 static const struct net_device_ops iavf_netdev_ops = {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 0b97b424e487..8ce6389b5815 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -142,6 +142,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP |
 	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
+	       VIRTCHNL_VF_OFFLOAD_CRC |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
 	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
 	       VIRTCHNL_VF_OFFLOAD_ADQ |
@@ -312,6 +313,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		vqpi->rxq.databuffer_size =
 			ALIGN(adapter->rx_rings[i].rx_buf_len,
 			      BIT_ULL(IAVF_RXQ_CTX_DBUFF_SHIFT));
+		if (CRC_OFFLOAD_ALLOWED(adapter))
+			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
+						   NETIF_F_RXFCS);
 		vqpi++;
 	}
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

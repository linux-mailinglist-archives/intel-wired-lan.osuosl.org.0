Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFC1792D1D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Sep 2023 20:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDF96418F7;
	Tue,  5 Sep 2023 18:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDF96418F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693937355;
	bh=kS/dLPfJH60UDTOtGcp7+g1rPck6FfzYFobwDfoQY1M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Atx6GfVDzU5n4mt+0wFDKhxS+eYAGvQCBURxuHzbKbb5MODUI6zr6CXBcada5vV91
	 F1VJN6GrchbwcYxifxKK9OcF0Jz5iCUUMBzy1WvE4Vuy6F2mZo3he/Cic0TaypYA4G
	 5M3vaTe/mv0nG01KeVB9IaFWVKirng7Szpadc9Q26Qlan/JN7+vjOyi+JoWAuS7gXN
	 SCovxQJ4G8Gh2FucnsYWsIyBqwumphPWcbHy3vcydaWThhzp2HbVPLVYPZ1g0A5S7F
	 QSFJ2pPQoTallV8/aeB4Jx5mLrIs7RLf/We8DnxdyoObwahTkvfs8+zNB8HJKE8iHE
	 ODOilzxd5X4og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LSiS9TvKxRT9; Tue,  5 Sep 2023 18:09:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3089240284;
	Tue,  5 Sep 2023 18:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3089240284
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1850D1BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E430B8128D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E430B8128D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OD2jOI7PeX2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 18:08:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CDE2681268
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDE2681268
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="375766555"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="375766555"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 11:08:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="806707356"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="806707356"
Received: from nsnaveen-mobl.gar.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.34.119])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 11:08:50 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Sep 2023 12:08:37 -0600
Message-Id: <20230905180837.3611383-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230905180837.3611383-1-ahmed.zaki@intel.com>
References: <20230905180837.3611383-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693937333; x=1725473333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dnk8Y72tpip5Z3GW+SEDum+LTHTZfBIwc8Bstxql1pM=;
 b=cj/bu0WeKDGAMJKgc7yzV0iDG2uuC7ms42nnWROZGqMZidPn7yi+YqwH
 fGT+o0CHo/qtQoNQkipwM/nrwxukng2TVts97AUt54/7rpJS2u7Bvx7gs
 B9bJ+U2R14gvAxXYtwnJuhEYUdXQqG7b4zA4NJ9r0aNFe3qDM60Ry+5ns
 +7MONBC7fhcon09QkqJ8TifGBPg6Dp0wQwP0Sgh2L2l3PIQ9Dl+l4tbsG
 Xs2HSE4KcJKrpivTw2VjLBQA/sPdk4dsW3XC1ofwQyqPD2rFbmEnLkTkW
 moDk1PdEIo5P9EZSYNmuQWpN39Qsl4paEwXNGFTFk6uug55XzQpBjujG1
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cj/bu0We
Subject: [Intel-wired-lan] [PATCH iwl-next v5 4/4] iavf: Add ability to turn
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
 include/uapi/linux/ethtool.h                  |  3 +-
 4 files changed, 66 insertions(+), 2 deletions(-)

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
 
diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index f7fba0dc87e5..adb252fc818a 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -1285,7 +1285,8 @@ struct ethtool_rxfh {
 	__u32   indir_size;
 	__u32   key_size;
 	__u8	hfunc;
-	__u8	rsvd8[3];
+	__u8	symm_opts;
+	__u8	rsvd8[2];
 	__u32	rsvd32;
 	__u32   rss_config[];
 };
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D418940F3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Apr 2024 18:36:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7AFA608B8;
	Mon,  1 Apr 2024 16:36:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9UYbiY_GxNbN; Mon,  1 Apr 2024 16:36:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B496608C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711989374;
	bh=EdLnO8Dbk0Uyqud4PtCrv0L18j7/T4l+Jx5tDG8cMi0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rGFIVvI80GkMz1oIlZfMZk1xmq6IegFZgjaomnBetxiR7T3gtErWifmL15gltuYoR
	 TYl6PWAZG169wcuNBThADcQVrzZ76g4UPlMhPsH31w/43bYO9MAyFmHHdq8LWHvP+C
	 nyxXG/f3zSwsPACeGzSsVZAGwr92tOnFuNAS+h6UIfpnnm4Ylz5BARxjjY01Tci+xf
	 i5JtZm5I1g5pw+ZkXZT7UdxhKe8Q4TItSAbQWmaXjvaB5b5GDQAm8xvYEnfPE3CUSb
	 BWccnHFR+jR3lRg6fAJ63UUNCBpeutdiAPGFpXy2sC9Z1JuBL6/mpFT7zyTSbHxPh7
	 yPgmcHmzZ/FKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B496608C5;
	Mon,  1 Apr 2024 16:36:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4EFA21BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 16:36:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3822B6082A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 16:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iF7V0MUTjrD6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Apr 2024 16:36:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sudheer.mogilappagari@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 18200606D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18200606D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18200606D6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 16:36:08 +0000 (UTC)
X-CSE-ConnectionGUID: rbj0U1ykSB6MON3pqjGG2A==
X-CSE-MsgGUID: oiK+2jFHRzKIpnPE3RjnQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7334320"
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; 
   d="scan'208";a="7334320"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 09:36:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; d="scan'208";a="17804466"
Received: from msu-dell.jf.intel.com ([10.166.224.119])
 by fmviesa006.fm.intel.com with ESMTP; 01 Apr 2024 09:36:08 -0700
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  1 Apr 2024 09:31:15 -0700
Message-Id: <20240401163115.3702392-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711989369; x=1743525369;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KqQo7FPeQF/Y1aJO1i5pX7hZB53X3oxMFopqDXJKA0Q=;
 b=Ipu6eijfzQIeDjcIdHqZ2TwttaEWzhNmNvsNevk4qFU3Bq8surp9bhS2
 4SfYRr1nJ+NpFEuOciKEFBwCNPSPWd5Rv8gQ7SeUzPnc3yNeHrtT2rClr
 Ptn8Ek6OVV6QT2luuXyFiLF6YznyTLS9VGhtQdhhRRE5rQ0jEQOMoAyP7
 keOwhWD+kmyLmY/b9MzNVTobOpyfIoVaZ5d72HvCYgFWqEnluD3MMFHfR
 5F7+pd/AWINw3ZqmWktOJycdru0mkBLjKrd8Hv9zigm8cbqyCj1eX7/HW
 pbyfuqr2UwxB1TntJ1IuBNApNwD5LY46mdg7Pf15fvBAR7Z8e+hOXMw27
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ipu6eijf
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: Fix TC config comparison
 with existing adapter TC config
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Same number of TCs doesn't imply that underlying TC configs are
same. The config could be different due to difference in number
of queues in each TC. Add utility function to determine if TC
configs are same.

Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 29 ++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ef2440f3abf8..6cf71a69cd3b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3502,6 +3502,33 @@ static void iavf_del_all_cloud_filters(struct iavf_adapter *adapter)
 	spin_unlock_bh(&adapter->cloud_filter_list_lock);
 }
 
+/**
+ * iavf_is_tc_config_same - Compare the mqprio TC config with the
+ * TC config already configured on this adapter.
+ * @adapter: board private structure
+ * @mqprio_qopt: TC config received from kernel.
+ *
+ * This function compares the TC config received from the kernel
+ * with the config already configured on the adapter. Returns
+ * true if configuration is same. False otherwise.
+ **/
+static bool iavf_is_tc_config_same(struct iavf_adapter *adapter,
+				   struct tc_mqprio_qopt *mqprio_qopt)
+{
+	struct virtchnl_channel_info *ch = &adapter->ch_config.ch_info[0];
+	int i;
+
+	if (adapter->num_tc != mqprio_qopt->num_tc)
+		return false;
+
+	for (i = 0; i < adapter->num_tc; i++) {
+		if (ch[i].count != mqprio_qopt->count[i] ||
+		    ch[i].offset != mqprio_qopt->offset[i])
+			return false;
+	}
+	return true;
+}
+
 /**
  * __iavf_setup_tc - configure multiple traffic classes
  * @netdev: network interface device structure
@@ -3559,7 +3586,7 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 		if (ret)
 			return ret;
 		/* Return if same TC config is requested */
-		if (adapter->num_tc == num_tc)
+		if (iavf_is_tc_config_same(adapter, &mqprio_qopt->qopt))
 			return 0;
 		adapter->num_tc = num_tc;
 
-- 
2.39.3


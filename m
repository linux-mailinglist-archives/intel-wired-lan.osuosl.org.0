Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D8385FB96
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 15:50:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AEFA41D8E;
	Thu, 22 Feb 2024 14:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BM0XwqkBlo3P; Thu, 22 Feb 2024 14:50:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F5CF4056F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708613442;
	bh=hBZVOOfyJ2BAtgH+8chyzJmGiJwa2BTqvxvhOuMTkq4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xz4bQxm5aX79vKRsH17uedQDUlFflzoLu3IiK00LISKu4mqkVh4qcV9hYwggVINjZ
	 P6wyilLvWPAUkavW9SpZkkjBXVG2vIUnL7DkToQb8O8AzVYtUeKS7b3H0qE7KwE9Fp
	 MgsNSKHNxGYtAAdAXRR1jmBaMAZxh8XcD0R+xJxXAmPcQMPCbsYgc7tMd6XWtazSfb
	 mJNpX4gYsma03T+m5VfVzarDo65iYEU+eRuLmDyls5cZ5I74SMJeTnBJUuN+B4pZwp
	 K7t/fVAT1Gur+b2wJlwWb5pRkPsUqJQZvPiXnyn2XpXIanAad6Ut4KhhqjkwSIcCpx
	 KurLi4NAtfRww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F5CF4056F;
	Thu, 22 Feb 2024 14:50:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71C751BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C22441D83
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWzgi67NS4Wg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 14:50:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F2FA5418FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2FA5418FF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2FA5418FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2949309"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2949309"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 06:50:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5670951"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa008.fm.intel.com with ESMTP; 22 Feb 2024 06:50:34 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 15:50:24 +0100
Message-Id: <20240222145025.722515-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
References: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708613437; x=1740149437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YqRFN4LOB4soEKDh9rNGojnxZFHVm6gh55pZZG+9xjs=;
 b=ZpHFLaekVuPNRxwF5hzP9pAW9G9uJA8jtK4gdyaXyQgLF86SNl7YU/O4
 m9rfqIuJKXfWvv8LyC8UrXFKvNKl8HrN3Jkp0EAycBRWY7H1c9DbB8GZg
 /oqvy1Xs2n2WfN+fEj3rKKpcL9MBbaEa1zVk6WJbBO6Xx0xphep4oM8Eh
 MgvTN7VgJy2Q7xC9mhjRTwOwn9YShMF/a7vz0qpfuIygzxGqWZTmrw90m
 GzrEqQFLLB1qz63SaEHBWMaaq0imSRnRiiWo8MkvgTLjD7GonFIpMdZsq
 S3vwOqxuD8wcj9LfzB30D1ci1tn9OK5EVhApmgP/zMYZqkMXTD+ocTru3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZpHFLaek
Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: avoid unnecessary devm_
 usage
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

1. pcaps are free'd right after AQ routines are done, no need for
   devm_'s
2. a test frame for loopback test in ethtool -t is destroyed at the end
   of the test so we don't need devm_ here either.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 23 +++++++++-----------
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  4 ++--
 2 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 10c32cd80fff..6de93e12ead3 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1045,7 +1045,7 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_sched;
 
-	pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps), GFP_KERNEL);
+	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps) {
 		status = -ENOMEM;
 		goto err_unroll_sched;
@@ -1055,7 +1055,7 @@ int ice_init_hw(struct ice_hw *hw)
 	status = ice_aq_get_phy_caps(hw->port_info, false,
 				     ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
 				     NULL);
-	devm_kfree(ice_hw_to_dev(hw), pcaps);
+	kfree(pcaps);
 	if (status)
 		dev_warn(ice_hw_to_dev(hw), "Get PHY capabilities failed status = %d, continuing anyway\n",
 			 status);
@@ -1082,18 +1082,16 @@ int ice_init_hw(struct ice_hw *hw)
 
 	/* Get MAC information */
 	/* A single port can report up to two (LAN and WoL) addresses */
-	mac_buf = devm_kcalloc(ice_hw_to_dev(hw), 2,
-			       sizeof(struct ice_aqc_manage_mac_read_resp),
-			       GFP_KERNEL);
-	mac_buf_len = 2 * sizeof(struct ice_aqc_manage_mac_read_resp);
-
+	mac_buf = kcalloc(2, sizeof(struct ice_aqc_manage_mac_read_resp),
+			  GFP_KERNEL);
 	if (!mac_buf) {
 		status = -ENOMEM;
 		goto err_unroll_fltr_mgmt_struct;
 	}
 
+	mac_buf_len = 2 * sizeof(struct ice_aqc_manage_mac_read_resp);
 	status = ice_aq_manage_mac_read(hw, mac_buf, mac_buf_len, NULL);
-	devm_kfree(ice_hw_to_dev(hw), mac_buf);
+	kfree(mac_buf);
 
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
@@ -3244,15 +3242,14 @@ int ice_update_link_info(struct ice_port_info *pi)
 		struct ice_hw *hw;
 
 		hw = pi->hw;
-		pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps),
-				     GFP_KERNEL);
+		pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 		if (!pcaps)
 			return -ENOMEM;
 
 		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 					     pcaps, NULL);
 
-		devm_kfree(ice_hw_to_dev(hw), pcaps);
+		kfree(pcaps);
 	}
 
 	return status;
@@ -3404,7 +3401,7 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 	*aq_failures = 0;
 	hw = pi->hw;
 
-	pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps), GFP_KERNEL);
+	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
 		return -ENOMEM;
 
@@ -3456,7 +3453,7 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 	}
 
 out:
-	devm_kfree(ice_hw_to_dev(hw), pcaps);
+	kfree(pcaps);
 	return status;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a19b06f18e40..cec3d796546e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -801,7 +801,7 @@ static int ice_lbtest_create_frame(struct ice_pf *pf, u8 **ret_data, u16 size)
 	if (!pf)
 		return -EINVAL;
 
-	data = devm_kzalloc(ice_pf_to_dev(pf), size, GFP_KERNEL);
+	data = kzalloc(size, GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
@@ -1004,7 +1004,7 @@ static u64 ice_loopback_test(struct net_device *netdev)
 		ret = 10;
 
 lbtest_free_frame:
-	devm_kfree(dev, tx_frame);
+	kfree(tx_frame);
 remove_mac_filters:
 	if (ice_fltr_remove_mac(test_vsi, broadcast, ICE_FWD_TO_VSI))
 		netdev_err(netdev, "Could not remove MAC filter for the test VSI\n");
-- 
2.34.1


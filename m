Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C13A123E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 13:41:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFF3D4151C;
	Wed, 15 Jan 2025 12:41:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 59ExGe1HzXlc; Wed, 15 Jan 2025 12:41:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D48B94151E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736944859;
	bh=PtBHFPmPWlD0lvsfP2qOrN6mmxSOk4p8CclPfuqUq3w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uJ/b8IrVmIe0XM5KoBlDWOvaIKzIHgtNeidt26lKMzd2x4DV5f2zFNdrkey8R4KOB
	 T3JR339tdhxjMXf2Vc54kstGLiyCnYGix+kqlCKDKvLT8bgyaeuc0Licc4LZFTtJ2K
	 +3NiH/Unm+qHQoRZeZ5pfVqZkdzZcdOq+KXtu5IuySU/3A5OqwO84HkbM1L7hdgWDj
	 ZAqGf/KWm8bg8zDj6GujQSFsv8E0/crXYIfeteHMTI7gygoqV1u77ZDFX1uO3b4+zN
	 KgyQJh7cam8qOD6MVBigmjamZwG3DBabGQurgVWLLy0QOpNGKQOld/3X+s8DNgyCU5
	 2+M6CfNelNFOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D48B94151E;
	Wed, 15 Jan 2025 12:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E8E4094B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 12:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6094400FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 12:40:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qk9OGhNLr3rH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 12:40:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D0A22400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0A22400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0A22400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 12:40:56 +0000 (UTC)
X-CSE-ConnectionGUID: LdG17PQrR8yc0mYNWlz1mw==
X-CSE-MsgGUID: WHnJq2M9Rsu2hb3nTuDIqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="47864507"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="47864507"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 04:40:56 -0800
X-CSE-ConnectionGUID: fb7Z3i7cRDCRgMwVHgEhgA==
X-CSE-MsgGUID: ydbmevfXTKuBkTkQteBPTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104982119"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa010.jf.intel.com with ESMTP; 15 Jan 2025 04:40:54 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 15 Jan 2025 13:27:20 +0100
Message-Id: <20250115122720.431223-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736944857; x=1768480857;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KP6bbmkVXA6DN61BQl4jtzHB/Yy6FMxyDtzEAEA0IpM=;
 b=Q6Yfq5vDeDfGyn2vk7TalArqtFHVOyRevicsqTcOBiZmwPeLTKyiHP9q
 rHIkN0wprVbDbmZLTJ3jRaI2DQ/zaFK+xc/IUHPqi7Dexih446/WH9+1q
 tQTSCXot5xI82iA2FGs9EuiEJU9qsscTziazoXWdp8vAjz1oVCgRTW6kf
 6QQqNkZ6u4G+ZnGQKcvCAb3iCcbGDVu8FIHZqDBOBjg9a4nBn5qp/LuKv
 7nkxI26i1YHyaHvHXtPyZ96VBSZwlM8Z2krK2GhvnCld1UQrPrs18Wh1j
 Oq9nZJPlFJ3J5meDBP6WIP2tWj45Imd8f9D8GlJYiTbS74u6vfwi9yujK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q6Yfq5vD
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: add support for
 thermal sensor event reception
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

E610 NICs unlike the previous devices utilising ixgbe driver
are notified in the case of overheat by the FW ACI event.

In event of overheat when treshhold is exceeded, FW suspends all
traffic and sends overtemp event to the driver. Then driver
loggs appropriate message and closes the adapter instance.
The card remains in that state until the platform is rebooted.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 5 +++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 3 +++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7236f20c9a30..5c804948dd1f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -3165,6 +3165,7 @@ static void ixgbe_aci_event_cleanup(struct ixgbe_aci_event *event)
 static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_aci_event event __cleanup(ixgbe_aci_event_cleanup);
+	struct net_device *netdev = adapter->netdev;
 	struct ixgbe_hw *hw = &adapter->hw;
 	bool pending = false;
 	int err;
@@ -3185,6 +3186,10 @@ static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
 		case ixgbe_aci_opc_get_link_status:
 			ixgbe_handle_link_status_event(adapter, &event);
 			break;
+		case ixgbe_aci_opc_temp_tca_event:
+			e_crit(drv, "%s\n", ixgbe_overheat_msg);
+			ixgbe_close(netdev);
+			break;
 		default:
 			e_warn(hw, "unknown FW async event captured\n");
 			break;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 8d06ade3c7cd..617e07878e4f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -171,6 +171,9 @@ enum ixgbe_aci_opc {
 	ixgbe_aci_opc_done_alt_write			= 0x0904,
 	ixgbe_aci_opc_clear_port_alt_write		= 0x0906,
 
+	/* TCA Events */
+	ixgbe_aci_opc_temp_tca_event                    = 0x0C94,
+
 	/* debug commands */
 	ixgbe_aci_opc_debug_dump_internals		= 0xFF08,
 

base-commit: 09a7ccb316bce8347fefad05809426526b6699f3
-- 
2.31.1


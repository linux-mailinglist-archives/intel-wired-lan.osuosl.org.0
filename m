Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E696BA33969
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 08:58:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5239B83B98;
	Thu, 13 Feb 2025 07:58:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3sbLtf6lvVvV; Thu, 13 Feb 2025 07:58:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A29F983B8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739433515;
	bh=mRsUdUvktFJ2wQsGA8Fv32o6+FvyUtXfzHOxM1PMEmM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iFBUFCxJKIAzFBQWc2db49cEjwsWErk16DNk0wlXiNbnYewfyDOemidzCh8hSdMD6
	 cLC1IUP6zK1aS6VaBg/16SV1z4F2Wi4tN1OFECpJWhd96c5R5hjgx1isSO07kNxG59
	 uZtbSfcsjHWXS8SCp38g4+ANxiSIJwBHPMOB2T2HrbobG+M+o7a8SxEIIXl1oKp3eh
	 cLu1IWSB+XgKkAzxQuNjZqa4xdcGMlecQ/Rcum31wC1E7C/wMw2Ex+PidWgBY41rxl
	 pWFOUatueouT8NQ6/Yh6G99wDtdToZVF1j0mlzlVTPYfPspAy9iKP/nflZ1G6B4Ct3
	 iDU8h0/UbTEFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A29F983B8E;
	Thu, 13 Feb 2025 07:58:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 933C0C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 07:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7753B83B90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 07:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5aD0FpWJeJO9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 07:58:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA5C583B86
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA5C583B86
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA5C583B86
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 07:58:33 +0000 (UTC)
X-CSE-ConnectionGUID: UEL1Ik6UQAWZkCQwOej+2g==
X-CSE-MsgGUID: 05b5IjNeTDeGgV+STPwuyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="39986403"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="39986403"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 23:58:34 -0800
X-CSE-ConnectionGUID: iBRmOTwyQCGy6LYpbhKGuQ==
X-CSE-MsgGUID: VcGsciHLQsmNiuOLlqf80w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="118068872"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa004.jf.intel.com with ESMTP; 12 Feb 2025 23:58:32 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, andrew@lunn.ch, pmenzel@molgen.mpg.de,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu, 13 Feb 2025 08:44:52 +0100
Message-Id: <20250213074452.95862-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739433514; x=1770969514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eO714YUOwB1fsBw+kHksu5IyTkPx0gHPMJKL78qm9/8=;
 b=I+jeldV0Cib+2Wu4m+X58hn2ZrO5HL8o5aZC9uFaqqi3t3tYan5Rev2/
 OpgjFLlYo8U5CxmL52JBvgnUg+np+G9BJAT3O4sz3jNwdsZJViv6Dk3h+
 WIVFD99Iz4UF+nuYNuu4jdq4XNMDHDpcwtAU8jOyB3lvYxVsm5qXwPhur
 GcqrtkR872hV3ixWM03h/8a35UjcLCOwZ/b6F1KROaIjocOzH/BZpFEP7
 kx8fNlkCwaTDlktadPYzMi4geXzpiG+zEmojyi33TJfVl/42j6M7zFOAP
 cJuX3QPUbBp461GoAHtTEJJUWRmNAjWaqS0RkLh4gKxsyht37T2cdSfSm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I+jeldV0
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: add support for
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

E610 NICs unlike the previous devices utilizing ixgbe driver
are notified in the case of overheating by the FW ACI event.

In event of overheat when threshold is exceeded, FW suspends all
traffic and sends overtemp event to the driver. Then driver
logs appropriate message and closes the adapter instance.
The card remains in that state until the platform is rebooted.

This approach is a solution to the fact current version of the
E610 FW doesn't support reading thermal sensor data by the
SW. So give to user at least any info that overtemp event
has occurred, without interface disappearing from the OS
without any note.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2,3,4 : commit msg tweaks
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
 
-- 
2.31.1


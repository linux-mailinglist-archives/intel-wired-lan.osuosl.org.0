Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9738A44360
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 15:47:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A92D40DCC;
	Tue, 25 Feb 2025 14:47:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TgXknWVJDn9W; Tue, 25 Feb 2025 14:47:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78CEE40DC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740494874;
	bh=WwiHsbk2hYwzNP3neuCyaDOiLdqO3t71bigBZs9cZb0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ynJTYQvYZGBEHcX6oDbV6pKeLPynUJ3nhytt5l1mf4VbhwW6LVvNfdkUv26YGG/NY
	 2/W4Maz7AWJucjpnhIhuih0mgCMTEFBXbCkeEhej2fXx1S7WlUytSGFbdgm2SyyKxA
	 AG7Ay9/EfN2LOlVLOeFdbs5jNd6ozcWy5690ULZavhF0Z93uH0u747ZI8fovXl40+9
	 SB5S7nC8SHGFi+ghXaIpnhXD8iSRRiq7rkZVvYiXjXRevZ3fcfT/G3W+YHtjb1IJOH
	 PNEJOIpJD2OdQJWvogjjE4mPUoP6pYs3zViimJFHpLGXGnYEU/EP5yM+trCeAKyJCJ
	 SDF3mDwZetGFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78CEE40DC4;
	Tue, 25 Feb 2025 14:47:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 56B782019
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5239360F00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:47:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sCnaFv1varf5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 14:47:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8563360EFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8563360EFD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8563360EFD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:47:51 +0000 (UTC)
X-CSE-ConnectionGUID: BSUJkaLNTuGpWHSzEsiMWw==
X-CSE-MsgGUID: +tm3u+QAT0ujEuQqpDeJzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52726743"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52726743"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:47:51 -0800
X-CSE-ConnectionGUID: PbCDNw04STqSU6KyEZRFHw==
X-CSE-MsgGUID: FOeA6XzKTl6CfEDKDeK1Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="139649337"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 25 Feb 2025 06:47:48 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, andrew@lunn.ch,
 pmenzel@molgen.mpg.de, horms@kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 25 Feb 2025 15:33:55 +0100
Message-Id: <20250225143355.190469-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740494872; x=1772030872;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GOlnuZsMCeEkaF9DW/p74sS+cbCTA2hqkjHbsiAlfNw=;
 b=mBVvFcIpHkOvwq1ogy9vC3W0MvTHvaQN+9XSpm5zOOQy01NY+K1eRL/1
 eSOPxiD5vAilMV8LBbtIz34yTJuR3FAwKpOJeMkzpuZwVBMxxS8/Jec0M
 /XUbZpOheMgOF4OhIVNKAJTm5EkYP2VaLln8qnME8U1ozvVZclhZOqde+
 OecPBvHGAjSp/sKlFgvP7KuEghkmEpeW4Zlazeb2oYhFCVFQ7FCelmvAN
 LVbdrjrBvnBdMhj5QXPkjPXorDUMA8fH52lPf4l+WhTj7FrSzoJcVLS43
 Pk5GX/toHdsrVFVTcWPoD+93hCSY1qnrN+t3TnSvZDg50qk3D7uxUKB8n
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mBVvFcIp
Subject: [Intel-wired-lan] [PATCH iwl-next v5] ixgbe: add support for
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
are notified in the case of overheating by the FW ACI event.

In event of overheat when threshold is exceeded, FW suspends all
traffic and sends overtemp event to the driver. Then driver
logs appropriate message and disables the adapter instance.
The card remains in that state until the platform is rebooted.

This approach is a solution to the fact current version of the
E610 FW doesn't support reading thermal sensor data by the
SW. So give to user at least any info that overtemp event
has occurred, without interface disappearing from the OS
without any note.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2,3,4 : commit msg tweaks
v5: use ixgbe_down()
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 4 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7236f20c9a30..41809dd02aff 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -3185,6 +3185,10 @@ static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
 		case ixgbe_aci_opc_get_link_status:
 			ixgbe_handle_link_status_event(adapter, &event);
 			break;
+		case ixgbe_aci_opc_temp_tca_event:
+			e_crit(drv, "%s\n", ixgbe_overheat_msg);
+			ixgbe_down(adapter);
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


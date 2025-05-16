Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF26AB95DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 08:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1652983C22;
	Fri, 16 May 2025 06:15:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cYFACjWySz4; Fri, 16 May 2025 06:15:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78DDA83C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747376129;
	bh=O8e9mPha3SHapmvL69EYtHTalPFRyDm0IqX4u/tPTK8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cQIM9d1jjfkZL3IVhKLGxIRXZpR6Yw+Q07LCfgCBePmih2iPg3ouW2ubcgpI9hPus
	 1gXppDv0g4OEorLLFf5A5fwgnroG6IZo+/TjB/U2cjy9cwAYJMEfd+d0vDET+ggMqE
	 8KwKM6KPvhvXCizExP6hhp1Yo1pxFpnfGbmDuVue4rGwElG8TjcBIsHGUI2D3uuzS5
	 +BhMsrwmSZEnyG1ClwQHSGhTBCbzYE/PeuVVo3mC1/+3XVWVFbGuyvDw6Up8pnCU6g
	 2iErfDTArhTOrcgeLiOP2RC91C2ktF6evzJCxtQcXQrWsn/fPG8vco5Ly5n+NL83qa
	 ctBEnVwxy4SpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78DDA83C20;
	Fri, 16 May 2025 06:15:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F8C613D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 06:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0007E40869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 06:15:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a9Ny_ZDWYaKx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 06:15:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D2544159C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D2544159C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D2544159C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 06:15:27 +0000 (UTC)
X-CSE-ConnectionGUID: xATccdYvT4WgoISYFWdVUw==
X-CSE-MsgGUID: UuWoCcjXQVyxcOyTLps0JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="59566839"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="59566839"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 23:15:26 -0700
X-CSE-ConnectionGUID: TfBu6B85QBahlJaMTvr0lA==
X-CSE-MsgGUID: /aKu2dEmSRa2TCm7/bwVFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="138643161"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 15 May 2025 23:15:25 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 16 May 2025 06:15:23 +0000
Message-ID: <20250516061523.369248-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747376128; x=1778912128;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8wwxeNfWPO7GulIi5/FvxZdUdXregi6tA5iZnPSN8hY=;
 b=kzR9/vAu99IdXTnj1zdzj5r+zJvUPJYo1I1b0oy8xDfM69OzMwcpywPh
 2DVAExDTNYSSV9YDWWhyijJT8Cvq8HSh+6gRPBpItVaGQkL3LFe+AcUXz
 Dytg3hJVm9py9DTT3le6lfaIS9w6IZLYaTCYg+4oH1VmznAJ2jvGf9Vc9
 JalR6eeYejdTvF/t8lc++L2kzY091FZyOPMPNESP6b+qikrLd6xY/4/+B
 cqyXzWed2I3qxPXgGTcvQbDSphIy/v3csF69UQs8lt7NtKR85u7Y+fIiw
 g0DzPdTLietzTwsxMN1uvByRIJ3WaDAVmrWtVGlZG+B5Oo1GRoIQh21Iq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kzR9/vAu
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: add 40G speed to Admin
 Command GET PORT OPTION
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

Introduce the ICE_AQC_PORT_OPT_MAX_LANE_40G constant and update the code
to process this new option in both the devlink and the Admin Queue Command
GET PORT OPTION (opcode 0x06EA) message, similar to existing constants like
ICE_AQC_PORT_OPT_MAX_LANE_50G, ICE_AQC_PORT_OPT_MAX_LANE_100G, and so on.

This feature allows the driver to correctly report configuration options
for 2x40G on ICX-D LCC and other cards in the future via devlink.

Example command:
 devlink port split pci/0000:01:00.0/0 count 2

Example dmesg:
 ice 0000:01:00.0: Available port split options and max port speeds (Gbps):
 ice 0000:01:00.0: Status  Split      Quad 0          Quad 1
 ice 0000:01:00.0:         count  L0  L1  L2  L3  L4  L5  L6  L7
 ice 0000:01:00.0:         2      40   -   -   -  40   -   -   -
 ice 0000:01:00.0:         2      50   -  50   -   -   -   -   -
 ice 0000:01:00.0:         4      25  25  25  25   -   -   -   -
 ice 0000:01:00.0:         4      25  25   -   -  25  25   -   -
 ice 0000:01:00.0: Active  8      10  10  10  10  10  10  10  10
 ice 0000:01:00.0:         1     100   -   -   -   -   -   -   -

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v1->v2 - fix typo in commit message
---
 drivers/net/ethernet/intel/ice/devlink/port.c   | 2 ++
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 1 +
 drivers/net/ethernet/intel/ice/ice_common.c     | 2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c    | 3 ++-
 4 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/port.c b/drivers/net/ethernet/intel/ice/devlink/port.c
index 767419a..63fb36f 100644
--- a/drivers/net/ethernet/intel/ice/devlink/port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/port.c
@@ -30,6 +30,8 @@ static const char *ice_devlink_port_opt_speed_str(u8 speed)
 		return "10";
 	case ICE_AQC_PORT_OPT_MAX_LANE_25G:
 		return "25";
+	case ICE_AQC_PORT_OPT_MAX_LANE_40G:
+		return "40";
 	case ICE_AQC_PORT_OPT_MAX_LANE_50G:
 		return "50";
 	case ICE_AQC_PORT_OPT_MAX_LANE_100G:
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index bdee499..2ff141a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1672,6 +1672,7 @@ struct ice_aqc_get_port_options_elem {
 #define ICE_AQC_PORT_OPT_MAX_LANE_50G	6
 #define ICE_AQC_PORT_OPT_MAX_LANE_100G	7
 #define ICE_AQC_PORT_OPT_MAX_LANE_200G	8
+#define ICE_AQC_PORT_OPT_MAX_LANE_40G	9
 
 	u8 global_scid[2];
 	u8 phy_scid[2];
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 4fedf01..2519ad6 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4080,7 +4080,7 @@ int ice_get_phy_lane_number(struct ice_hw *hw)
 
 		speed = options[active_idx].max_lane_speed;
 		/* If we don't get speed for this lane, it's unoccupied */
-		if (speed > ICE_AQC_PORT_OPT_MAX_LANE_200G)
+		if (speed > ICE_AQC_PORT_OPT_MAX_LANE_40G)
 			continue;
 
 		if (hw->pf_id == lport) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 6488151..f2c0b28 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -667,7 +667,8 @@ static int ice_get_port_topology(struct ice_hw *hw, u8 lport,
 
 		if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_100G)
 			port_topology->serdes_lane_count = 4;
-		else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G)
+		else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G ||
+					 max_speed == ICE_AQC_PORT_OPT_MAX_LANE_40G)
 			port_topology->serdes_lane_count = 2;
 		else
 			port_topology->serdes_lane_count = 1;
-- 
2.49.0


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E872C8D911
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 10:32:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDDBC83FF0;
	Thu, 27 Nov 2025 09:32:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_u4OB5cTFNe; Thu, 27 Nov 2025 09:32:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D76283FBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764235975;
	bh=XkxSjuLuOR5b8DKMDNyOXn1n9z3v+AMWdD0UdukV5gc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CX8QQ9WNAtijknNId6ugMNw7GDoE1jky2sZ5TcKAvLBJarXzmz8mrVO8RWIB7NYU4
	 55VrgCIytgwkZegYBEslmRp8CC5m3EVOgC2V01/gAc60QKSiy9nfi+npI3dw278zJK
	 hSU7HBNNggC6hsAL66p2u2gfMrqL5sBjBnKbXUQnk0P13lQ4bJwpbBF2Ofdvp2lr9m
	 uSytOJtSJ0CLZfAUrdQJzwDnWEk8ALQvEduYXt18BRpyThqgmkGLHLGYOY3Eueq9M7
	 ENpDgEYcDpRslvvfzEWBVsaR8et0Q+6EGU2+70SvKZIsmvCKXQInrhFrmZlqiVT/Ng
	 vRcIsPOP66HRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D76283FBA;
	Thu, 27 Nov 2025 09:32:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E72CEDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 09:32:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D67484087D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 09:32:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clyxOmSfaMoX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 09:32:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 484B540836
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 484B540836
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 484B540836
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 09:32:52 +0000 (UTC)
X-CSE-ConnectionGUID: WD6ae6eqQyueKSMXp8dsyw==
X-CSE-MsgGUID: rlb84wwoSX+tVI0R103EQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="91761058"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="91761058"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:32:51 -0800
X-CSE-ConnectionGUID: CrWZo14MTBqvOxJoaSnh8g==
X-CSE-MsgGUID: dmQlN1HuSM2+68I7x5daDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="193210142"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa007.jf.intel.com with ESMTP; 27 Nov 2025 01:32:50 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Nov 2025 10:25:58 +0100
Message-Id: <20251127092558.914981-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764235973; x=1795771973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lz5tiYqO9lVIx/L5agfQKSQCh9f11c5AqKOu4sPTUWY=;
 b=WQ4UPacjqKFGXAoNRTDb7hJ6ujh978boUNO+20vd6T1ttVkerH2Q0X5c
 eAHjQ81WYK4RgEYCL1OKoyOyQsFIg2C6ZbURCF4uHDCLUWZDNj06ERiot
 DETowQ/qYsjRZ7Gqids26oRoI2HiApiKPbFKesAvIrVi0kbmBdcDWgtAd
 OufNtPHOi4FvXC4L1mO8KeTmOgPMETBZ0jTBXRyU0VBkU5+2Q2wVhmHci
 toHbqvG6D3/2Hbfkkz4OV/pQrmrL564UVhL6kDpI2sEKN+EMVgh9iIps8
 Rcz9cgUOo461bTMPi5M9bTOXNpucICZ6m3TKAXaCr0XJcJgwkPdZfTMAl
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WQ4UPacj
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing TX timestamps
 interrupts on E825 devices
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Modify PTP (Precision Time Protocol) configuration on link down flow.
Previously, PHY_REG_TX_OFFSET_READY register was cleared in such case.
This register is used to determine if the timestamp is valid or not on
the hardware side.
However, there is a possibility that there is still the packet in the
HW queue which originally was supposed to be timestamped but the link
is already down and given register is cleared.
This potentially might lead to the situation in which that 'delayed'
packet's timestamp is treated as invalid one when the link is up
again.
This in turn leads to the situation in which the driver is not able to
effectively clean timestamp memory and interrupt configuration.
From the hardware perspective, that 'old' interrupt was not handled
properly and even if new timestamp packets are processed, no new
interrupts is generated. As a result, providing timestamps to the user
applications (like ptp4l) is not possible.
The solution for this problem is implemented at the driver level rather
than the firmware, and maintains the tx_ready bit high, even during
link down events. This avoids entering a potential inconsistent state
between the driver and the timestamp hardware.

Testing hints:
- run PTP traffic at higher rate (like 16 PTP messages per second)
- observe ptp4l behaviour at the client side in the following
  conditions:
	a) trigger link toggle events. It needs to be physiscal
           link down/up events
	b) link speed change
In all above cases, PTP processing at ptp4l application should resume
always. In failure case, the following permanent error message in ptp4l
log was observed:
controller-0 ptp4l: err [6175.116] ptp4l-legacy timed out while polling
	for tx timestamp

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 8ec0f7d0fceb..4aa88bac759f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1338,9 +1338,12 @@ void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
 		/* Do not reconfigure E810 or E830 PHY */
 		return;
 	case ICE_MAC_GENERIC:
-	case ICE_MAC_GENERIC_3K_E825:
 		ice_ptp_port_phy_restart(ptp_port);
 		return;
+	case ICE_MAC_GENERIC_3K_E825:
+		if (linkup)
+			ice_ptp_port_phy_restart(ptp_port);
+		return;
 	default:
 		dev_warn(ice_pf_to_dev(pf), "%s: Unknown PHY type\n", __func__);
 	}

base-commit: e2cedb8386f079af01cd659c22bb43f1acf4d1b1
-- 
2.39.3


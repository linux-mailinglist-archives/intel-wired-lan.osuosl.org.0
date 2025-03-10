Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52276A59468
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 13:28:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09C4160A7F;
	Mon, 10 Mar 2025 12:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mO88EXokbtpU; Mon, 10 Mar 2025 12:28:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0409C60A89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741609720;
	bh=UioUPKGnvwhW9CJjVkMLqhLHSt7uMXn6eJnkxvQLJUI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oetv4giKxfRIoiIJkpK54CLQtiYsUAwO8zklZXfAEV27xP8FX34CDeU+mnn1s4oVS
	 JqTgbIhXcfLRl9g0yETU820kxDX33bE7qjSBBUUIAJW0gHnGtyO5J/gGO6rIC/dWyI
	 DU8q8hNrcmgVmh05OuoaLJFRqTFQ0YLjpIS5hMAWCyzV3qWuUl/Rz9cx4lTfqv7xLM
	 TEqGnnJfK1+SjHmYNaBJZAwCLxLY6VJa4bp61qbiXBjidpX9WogDVNxArvOCkLztCi
	 XR2jFarbZjp61fxVUCWu1J0AkvZ296d/4MiywpiQVve9H+Ga+sj2wCVzfbOFDYk8ss
	 cRkOaDLll04Qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0409C60A89;
	Mon, 10 Mar 2025 12:28:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 17F8B1C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EFBD181FCD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xBWyNd66llP6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 12:28:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E9BB081776
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9BB081776
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9BB081776
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:36 +0000 (UTC)
X-CSE-ConnectionGUID: vui5QyaqRAKcMoRV5IGRbw==
X-CSE-MsgGUID: Q9rNPE1cTWqRQ4H3NtloXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="53981141"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="53981141"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:36 -0700
X-CSE-ConnectionGUID: XqccRF4TRt6Qu4qupIgxIA==
X-CSE-MsgGUID: FuAgZO44Qi6N165e3Gk5fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="119698254"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa009.jf.intel.com with ESMTP; 10 Mar 2025 05:28:35 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Mar 2025 13:24:38 +0100
Message-Id: <20250310122439.3327908-3-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250310122439.3327908-1-grzegorz.nitka@intel.com>
References: <20250310122439.3327908-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609717; x=1773145717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/CH9UU6hzZ0ulPSOFaDZUiPy2Hm90+BbN8HITQ7ASd4=;
 b=fSqW4TRPqbZHF6yp6/FUT4qvAUhbET/f5D27ZjEuMTX4gwcV0cDDGmG7
 V/DWTw7t4QUHWnY2my2vG//xW3pSgAuVTDo9h4MgPF/ZoDk4Z1OwLPwGP
 /b+Jgq2KjwLmeAQUX5mFURC8vlXaE7Kp3MUcNbMm/PD2cktr73nL516Jp
 J/kHxrwz5xKZuR8aJAg5QKFWFQtVbzqvWBijAMAbLtdKS4LL2+13kGgKK
 QvmZMuN15UAkOvXZ/tcoFqY//fSeeB29obExSN0XfHIhFZTLBsPZWauwT
 HwD4poUextZbSwPG/I3eS+tpKsEMTyBuO03HeZgt1AUgDAT9fN0XeUKpT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fSqW4TRP
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: refactor
 ice_sbq_msg_dev enum
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Rename ice_sbq_msg_dev to ice_sbq_dev_id to reflect the meaning of this
type more precisely. This enum type describes RDA (Remote Device Access)
client ids, accessible over SB (Side Band) interface.
Rename enum elements to make a driver namespace more cleaner and
consistent with other definitions within SB
Remove unused 'rmn_x' entries, specific to unsupported E824 device.
Adjust clients '2' and '13' names (phy_0 and phy_0_peer respectively) to
be compliant with EAS doc. According to the specification, regardless of
the complex entity (single or dual), when accessing its own ports,
they're accessed always as 'phy_0' client. And referred as 'phy_0_peer'
when handling ports conneced to the other complex.

Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 20 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h | 11 ++++-------
 3 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index edb1d0f7e187..8f0c72df2a44 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3434,7 +3434,7 @@ int ice_aq_get_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
 	msg.msg_addr_low = lower_16_bits(reg_offset);
 	msg.msg_addr_high = receiver_id;
 	msg.opcode = ice_sbq_msg_rd;
-	msg.dest_dev = rmn_0;
+	msg.dest_dev = ice_sbq_dev_phy_0;
 
 	err = ice_sbq_rw_reg(hw, &msg, flag);
 	if (err)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index a5df081ffc19..eb1893dd8979 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -240,7 +240,7 @@ static int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
 {
 	struct ice_sbq_msg_input cgu_msg = {
 		.opcode = ice_sbq_msg_rd,
-		.dest_dev = cgu,
+		.dest_dev = ice_sbq_dev_cgu,
 		.msg_addr_low = addr
 	};
 	int err;
@@ -272,7 +272,7 @@ static int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
 {
 	struct ice_sbq_msg_input cgu_msg = {
 		.opcode = ice_sbq_msg_wr,
-		.dest_dev = cgu,
+		.dest_dev = ice_sbq_dev_cgu,
 		.msg_addr_low = addr,
 		.data = val
 	};
@@ -919,16 +919,16 @@ static void ice_ptp_cfg_sync_delay(const struct ice_hw *hw, u32 delay)
  *
  * Return: destination sideband queue PHY device.
  */
-static enum ice_sbq_msg_dev ice_ptp_get_dest_dev_e825(struct ice_hw *hw,
-						      u8 port)
+static enum ice_sbq_dev_id ice_ptp_get_dest_dev_e825(struct ice_hw *hw,
+						     u8 port)
 {
 	/* On a single complex E825, PHY 0 is always destination device phy_0
 	 * and PHY 1 is phy_0_peer.
 	 */
 	if (port >= hw->ptp.ports_per_phy)
-		return eth56g_phy_1;
+		return ice_sbq_dev_phy_0_peer;
 	else
-		return eth56g_phy_0;
+		return ice_sbq_dev_phy_0;
 }
 
 /**
@@ -2758,7 +2758,7 @@ static void ice_fill_phy_msg_e82x(struct ice_hw *hw,
 		msg->msg_addr_high = P_Q1_H(P_4_BASE + offset, phy_port);
 	}
 
-	msg->dest_dev = rmn_0;
+	msg->dest_dev = ice_sbq_dev_phy_0;
 }
 
 /**
@@ -3081,7 +3081,7 @@ static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
 	if (quad >= ICE_GET_QUAD_NUM(hw->ptp.num_lports))
 		return -EINVAL;
 
-	msg->dest_dev = rmn_0;
+	msg->dest_dev = ice_sbq_dev_phy_0;
 
 	if (!(quad % ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy)))
 		addr = Q_0_BASE + offset;
@@ -4800,7 +4800,7 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
 	msg.msg_addr_low = lower_16_bits(addr);
 	msg.msg_addr_high = upper_16_bits(addr);
 	msg.opcode = ice_sbq_msg_rd;
-	msg.dest_dev = rmn_0;
+	msg.dest_dev = ice_sbq_dev_phy_0;
 
 	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err) {
@@ -4830,7 +4830,7 @@ static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 	msg.msg_addr_low = lower_16_bits(addr);
 	msg.msg_addr_high = upper_16_bits(addr);
 	msg.opcode = ice_sbq_msg_wr;
-	msg.dest_dev = rmn_0;
+	msg.dest_dev = ice_sbq_dev_phy_0;
 	msg.data = val;
 
 	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
diff --git a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
index 3b0054faf70c..183dd5457d6a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
@@ -46,13 +46,10 @@ struct ice_sbq_evt_desc {
 	u8 data[24];
 };
 
-enum ice_sbq_msg_dev {
-	eth56g_phy_0	= 0x02,
-	rmn_0		= 0x02,
-	rmn_1		= 0x03,
-	rmn_2		= 0x04,
-	cgu		= 0x06,
-	eth56g_phy_1	= 0x0D,
+enum ice_sbq_dev_id {
+	ice_sbq_dev_phy_0	= 0x02,
+	ice_sbq_dev_cgu		= 0x06,
+	ice_sbq_dev_phy_0_peer	= 0x0D,
 };
 
 enum ice_sbq_msg_opcode {
-- 
2.39.3


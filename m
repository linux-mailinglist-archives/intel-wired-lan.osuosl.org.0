Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2624A6A6FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Mar 2025 14:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F46141A19;
	Thu, 20 Mar 2025 13:19:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WlyU7_xGxNeb; Thu, 20 Mar 2025 13:19:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C7D941A1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742476781;
	bh=cLiOlt+i1bkzK+w1mMAgUBpGV8CF/IqmA3s6m5g0/H0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DnkA4QJ34dL49SQWT1KQug3bISQCs9UGa5yXFtRK5C/24gH48ha+G/WbA9tEdmjfD
	 vMTHgAeNpBHGNe9/pP6Dje31Gfa7wwefG/R2q9uxZ/snpzSraVxzqU9coD/t/cxDWf
	 xEgy+xG5/0DgYSb9Cj5kBRC/+20odwcgp79GDKaP+N1UARoZ62z8mw2tF8QUVUqplj
	 +axFYBEhYAdzOg4mdJio32xyZGE7DGUmspgIk22/X3BUUYsDLx/wTDyrke9AJZ9XOt
	 oxOc4UdPgEhzS3oBbAlHaCwxE/0yYuMsDw6qR/Aw9LvLeDCE7TLvYG142l3gY8uUoY
	 HAHojTIYbCKxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C7D941A1C;
	Thu, 20 Mar 2025 13:19:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A0AE12F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F2889606C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cy9CJpiW-jFn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Mar 2025 13:19:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0CEFD605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CEFD605D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CEFD605D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 13:19:37 +0000 (UTC)
X-CSE-ConnectionGUID: b55B4DdGQz+UTBdJT4dBLg==
X-CSE-MsgGUID: R2+CDivwQ7anLGKpEp/WIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="55083747"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="55083747"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 06:19:38 -0700
X-CSE-ConnectionGUID: 51gWHUipQ/iMat7BKEYXOw==
X-CSE-MsgGUID: uebIbU/fSSKfZYWiERYBNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="160311394"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa001.jf.intel.com with ESMTP; 20 Mar 2025 06:19:36 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Mar 2025 14:15:37 +0100
Message-Id: <20250320131538.712326-3-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250320131538.712326-1-grzegorz.nitka@intel.com>
References: <20250320131538.712326-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742476778; x=1774012778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SBbOZHp7+pwSg/QxxdI2AsG2ybDBozHZGbpYQyO09j4=;
 b=Npu3KMRxOoIbJ+I3Oi/zVTNb8FP0QFVcK0RkpeirKsHf+9qSpqOePvER
 OZAQzCr4GXjIjgb2xpGRM1pT4/mP9ZQ8IjH7fqTfDc12SYt26pZIzfXNY
 4XU2EznbyDvvae6xYiJJUYBxCNVr8kQTut1q/OoQF/lNDzzjC5JhZVoat
 vdCdDxiY+wB4LHlJMsCRxv5x0u1jrsURtEYh0ySgS7EmlWo3nb4eS/AHN
 ADfzFsF8wPe/GpPq4KK+wX1UjSKbto+dtjEWFKMYR3rbI7OCJlpMX3fze
 ZhNNhfSvDyELkWqkoZJtFyAK81i75X5z50XDZ/jXcHBtS0YAgaWqVfvM+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Npu3KMRx
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: refactor
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
 horms@kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
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
index c1b4569770ad..63e4a0824548 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3473,7 +3473,7 @@ int ice_aq_get_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
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


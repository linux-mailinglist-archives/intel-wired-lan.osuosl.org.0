Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D69F7B9695D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Sep 2025 17:30:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14A0340DD9;
	Tue, 23 Sep 2025 15:30:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SCwFB2R2q4lv; Tue, 23 Sep 2025 15:30:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AE6C40DDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758641453;
	bh=aEX6OrDvhwawyv9tdVoWz5yLKui8aQ94IytuOHdarMs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=j7nC+oVR7y7B1z50axh1BvQmnWv5D8UU6KUVdAv2dsOL07caTuyR2bzdqyiknSG6m
	 t7q+VGzptYyEZgJfEcRvkh3Y3fti/UkQptfOh4+mbYTQvZFIaJFRdIZWVEUUyRxouO
	 MfiDM7/MRAYkn1FeofpAcqB9muxVXcTe+3ue5bE7/opjNZmnVBA3wQzqRWizyPb28n
	 R047gQCU/hO15ynNlp6Qgy1Z9J+FO7n8BWd/Q7P39DNjysHhmPAnBed20pfiKp9WmZ
	 lyEvIveo3OWH2+iwHGY25qcdasJ2XzxLbALnj7iUk8cWhv3RcZPuphMinZA+MU/m0Y
	 bAauz3kXJNVYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AE6C40DDE;
	Tue, 23 Sep 2025 15:30:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 00D2D200D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 15:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1F2540D7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 15:30:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id twraGR52zcq1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Sep 2025 15:30:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EF1BE40DD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF1BE40DD5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF1BE40DD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 15:30:50 +0000 (UTC)
X-CSE-ConnectionGUID: Ia8cv/HuSZSCWEocX9ohNg==
X-CSE-MsgGUID: QCITGiuDR4+payWX/13Bvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="83527940"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="83527940"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 08:30:49 -0700
X-CSE-ConnectionGUID: DHJdUguSRFmsy3PkqPxcYg==
X-CSE-MsgGUID: I2vduRIeQmKTmHCMrFQusw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176875467"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa008.jf.intel.com with ESMTP; 23 Sep 2025 08:30:47 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Sep 2025 17:29:04 +0200
Message-Id: <20250923152904.1869397-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758641451; x=1790177451;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BoZ3n31XF4k/zwk0/9nzF0zAUkK+pEhRgqlJRlN9Bls=;
 b=HFEEdsVFrwv7wequs7e393An1BdS9FTosJ7lYAzVQSvHG0UeOeSb8CCy
 cBKdBd6D+NMhvarQcN1hY852RZm48QIwk+4TXgl+zVQ6Yp6iWL1UfVH9X
 z6PG95m2oMrgTkbguuo6KIIEM8upclSwuBkqx2L0rPcugKW5fjnez8tma
 7I0QcrRu8l9peIbBwFJtZyi4gNWZKWtxCrni3m+aXT6Uduu6ImOjmCG+B
 BUF3lNhbiU9zHOoL/6P1iC9bgdCUzfheAJDlDUFNLPGfz+i3iunjDJ3hX
 +DQAhtGK7R3cpaFlZqT0+scaHAJWKxfJREjEkJfd7obl7HuRtur1U4ObX
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HFEEdsVF
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix destination CGU for dual
 complex E825
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
 Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On dual complex E825, only complex 0 has functional CGU (Clock
Generation Unit), powering all the PHYs.
SBQ (Side Band Queue) destination device 'cgu' in current implementation
points to CGU on current complex and, in order to access primary CGU
from the secondary complex, the driver should use 'cgu_peer' as
a destination device in read/write CGU registers operations.

Define new 'cgu_peer' (15) as RDA (Remote Device Access) client over
SB-IOSF interface and use it as device target when accessing CGU from
secondary complex.

This problem has been identified when working on recovery clock
enablement [1]. In existing implementation for E825 devices, only PF0,
which is clock owner, is involved in CGU configuration, thus the
problem was not exposed to the user.

[1] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250905150947.871566-1-grzegorz.nitka@intel.com/

Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 devices")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 30 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |  1 +
 2 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index eb6abf452b05..5ea420c76f54 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -6382,6 +6382,32 @@ u32 ice_get_link_speed(u16 index)
 	return ice_aq_to_link_speed[index];
 }
 
+/**
+ * ice_get_dest_cgu - get destination CGU dev for given HW
+ * @hw: pointer to the HW struct
+ *
+ * Get CGU client id for CGU register read/write operations.
+ *
+ * Return:
+ * * ice_sbq_dev_cgu - default value
+ * * ice_sbq_dev_cgu_peer - when accessing CGU from 2nd complex (E825 only)
+ *
+ */
+static enum ice_sbq_dev_id ice_get_dest_cgu(struct ice_hw *hw)
+{
+	/* On dual complex E825 only complex 0 has functional CGU powering all
+	 * the PHYs.
+	 * SBQ destination device cgu points to CGU on a current complex and to
+	 * access primary CGU from the secondary complex, the driver should use
+	 * cgu_peer as a destination device.
+	 */
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825 && ice_is_dual(hw) &&
+	    !ice_is_primary(hw))
+		return ice_sbq_dev_cgu_peer;
+	else
+		return ice_sbq_dev_cgu;
+}
+
 /**
  * ice_read_cgu_reg - Read a CGU register
  * @hw: Pointer to the HW struct
@@ -6396,8 +6422,8 @@ u32 ice_get_link_speed(u16 index)
 int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val)
 {
 	struct ice_sbq_msg_input cgu_msg = {
+		.dest_dev = ice_get_dest_cgu(hw),
 		.opcode = ice_sbq_msg_rd,
-		.dest_dev = ice_sbq_dev_cgu,
 		.msg_addr_low = addr
 	};
 	int err;
@@ -6428,8 +6454,8 @@ int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val)
 int ice_write_cgu_reg(struct ice_hw *hw, u32 addr, u32 val)
 {
 	struct ice_sbq_msg_input cgu_msg = {
+		.dest_dev = ice_get_dest_cgu(hw),
 		.opcode = ice_sbq_msg_wr,
-		.dest_dev = ice_sbq_dev_cgu,
 		.msg_addr_low = addr,
 		.data = val
 	};
diff --git a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
index 183dd5457d6a..21bb861febbf 100644
--- a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
@@ -50,6 +50,7 @@ enum ice_sbq_dev_id {
 	ice_sbq_dev_phy_0	= 0x02,
 	ice_sbq_dev_cgu		= 0x06,
 	ice_sbq_dev_phy_0_peer	= 0x0D,
+	ice_sbq_dev_cgu_peer	= 0x0F,
 };
 
 enum ice_sbq_msg_opcode {

base-commit: 84cb3483445f9ac0a106eb846fa100393433d469
-- 
2.39.3


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D77BA9CE8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 17:31:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 091F780C78;
	Mon, 29 Sep 2025 15:31:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bBhmxXjOWYdH; Mon, 29 Sep 2025 15:31:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25B5580C76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759159862;
	bh=enVa4a8eTpqrtQwFUU49rdHAayhGwgDKlgKxxgANH7g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HIBTF0JLyjWlAeNP8juz8Na4vEeTRwqH5pW+Lz2bNs0kDaLNAqu/VwL72Q5hCde1m
	 cobYkyGdzQTVJBG0utmR2O3GL+CmuLXUR8pkvebDo0VB/eD6b+EIdvxwuNmvSVdvdV
	 CmvyjOnuIOikh0vH6dcVddN60lLyxB0BuhNapDhqdj/hXB0vxv7jz4924EzNRTn97O
	 r7/OyC2vBcfIlqAbU/SKr1f5+2+eK+Lm0qzDGARPB48tJ8QpxfiFJ41htjHiUupcDE
	 zgMb0sdf9ngu+jUO/RQfBXEaP52EUJfVQTszwpmof8zWfnxDHVyVi62YgrVRICiuOQ
	 zYSw4IQu1arSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25B5580C76;
	Mon, 29 Sep 2025 15:31:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C732C12D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 15:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ADC524068B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 15:31:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X27eAj-aJqDT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 15:30:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A2DDB4063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2DDB4063F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A2DDB4063F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 15:30:59 +0000 (UTC)
X-CSE-ConnectionGUID: vWaUNZ61R/eUGJXpWoa1SA==
X-CSE-MsgGUID: tmA6KNxdQfafED9dSsZ38w==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="71650110"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="71650110"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 08:30:59 -0700
X-CSE-ConnectionGUID: bYpCuTx4SXmxry8ZwD7tLA==
X-CSE-MsgGUID: ohGdYomQRiGnqPnwTNjFOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="178072611"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa007.jf.intel.com with ESMTP; 29 Sep 2025 08:30:57 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Sep 2025 17:29:05 +0200
Message-Id: <20250929152905.2947520-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759159860; x=1790695860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ABwM0eGVQ7WQM24CLNELoH9xGXewKt4+TlK7a0k4I7E=;
 b=EmR6hyBctephcZL33MRgpQ6jMP2Px5T2Bl2R1wSOLJ8f3SdnMIRwQze+
 DXlNukfJJigGx5DTPv01/f0RrHHpTj43vnO81mie7lodWhcMVnhIp2PPF
 w0PU0+zJPxHIEtMELeeHEdtdEVBw2+9ex5Lrvo4baxOvzB0t0/6YMQwFp
 gtTYrYFFUBCizBozszWUnmNbBqF0v12D4PmGJbRGxBdkFImHQQllPLPGP
 RyW6pAqw/QeiL2oj790yY3UtXIBd9f6LeZSk5w60P8r8Ce3huLoLrPVxd
 eBuCA17JwNHx30h2RXMT62gSvdIpN8mNVsx1Eq7et1oPOLaNatGyr+8nA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EmR6hyBc
Subject: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix destination CGU for
 dual complex E825
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
Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1->v2:
- rebased
- fixed code style coomments (skipped redundant 'else', improved
  'Return'
  description in function doc-string)
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 26 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |  1 +
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index eb6abf452b05..a2a8e4cfa01f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -6382,6 +6382,28 @@ u32 ice_get_link_speed(u16 index)
 	return ice_aq_to_link_speed[index];
 }
 
+/**
+ * ice_get_dest_cgu - get destination CGU dev for given HW
+ * @hw: pointer to the HW struct
+ *
+ * Get CGU client id for CGU register read/write operations.
+ *
+ * Return: CGU device id to use in SBQ transactions.
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
+	return ice_sbq_dev_cgu;
+}
+
 /**
  * ice_read_cgu_reg - Read a CGU register
  * @hw: Pointer to the HW struct
@@ -6396,8 +6418,8 @@ u32 ice_get_link_speed(u16 index)
 int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val)
 {
 	struct ice_sbq_msg_input cgu_msg = {
+		.dest_dev = ice_get_dest_cgu(hw),
 		.opcode = ice_sbq_msg_rd,
-		.dest_dev = ice_sbq_dev_cgu,
 		.msg_addr_low = addr
 	};
 	int err;
@@ -6428,8 +6450,8 @@ int ice_read_cgu_reg(struct ice_hw *hw, u32 addr, u32 *val)
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

base-commit: 32228c42b96884ecb91bd420d8a8fddaece24df5
-- 
2.39.3


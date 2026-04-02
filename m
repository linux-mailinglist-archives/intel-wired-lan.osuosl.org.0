Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yG91EYH3zmn7sAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 01:10:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2FE38F073
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 01:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4466D813A2;
	Thu,  2 Apr 2026 23:10:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YT1ZDpJpzDEd; Thu,  2 Apr 2026 23:10:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54FE481307
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775171454;
	bh=X6xDNyjn4HukUgv0b0hM8BsEYw+MaX2gtYWzeBZ/+ZA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2e5f7/YUf5vULH9hCSe4lmPe59ZcB88iDtN9+POxcj4X3HLxNa4ZUq+GhnwuKzEUD
	 v+hZ9Le4qvZ5D08mFlyEeXAKgJ/fRBgdI+j7ZemC8q0eN3KG2fXrnIUqg5LE9PYlJO
	 TSx5jHs0G1kbK/bE23uUfcNhh8CNm6URcHXIAb8fcy0NuITprVjbuA8Pkrdj3P+nuY
	 Du7o8nSm3b2WNTZtrelnlZhyl6t/+w8+1ovujas8TZnzcOLKcwStsyby/Ddk/Mx0Zy
	 RbSe4EQlKnAzLhfw2pAqbRCv+74N/AjtJjuTuhD4rTsF5kis+j77aZkFvChv6DNNBj
	 VK9QVUB10dG2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54FE481307;
	Thu,  2 Apr 2026 23:10:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B74C82CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A99D44034C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oK2wQdMvwwQj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 23:10:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A30B04050D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A30B04050D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A30B04050D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:51 +0000 (UTC)
X-CSE-ConnectionGUID: FxzSIWcaTlq3hiDqnjkBKQ==
X-CSE-MsgGUID: /gZP7eLGSUOzOFcX+Oclsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="76123131"
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="76123131"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 16:10:51 -0700
X-CSE-ConnectionGUID: NGOvUVkLRaCEiOPnlbo6tQ==
X-CSE-MsgGUID: OV1TsNCbRrmTMCwmd4+C6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="227044460"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa008.jf.intel.com with ESMTP; 02 Apr 2026 16:10:47 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  3 Apr 2026 01:06:24 +0200
Message-Id: <20260402230626.3826719-7-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775171452; x=1806707452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OxncUXAXkexzCLewPifmJfYRwZtDvm+RnLCpTY9wiJ4=;
 b=Dlh0sDCKob1b5sTtifOyJ/fKct10Xao7AJOaJuJmgK6VI//x9DZQEGru
 2K7Hx5SpJlvhSXaruDX4PXelt2GVJm/slqcov/vhjtvaAGek5qMDRrR2E
 z2InOE0h0TvjBoLLEqekVRAWxKT+NvbodoA8OWzuGQods6DdYfIs7eanS
 Q5817GhFZPUHWtyTkg0tzc8uY+4rnD7aYq5ky1Ajf33gKITPaI7+Z3+Nk
 d7eQ6UE4YGCh2Bgzv2PbSsv/vaHvDLTVAXynMZHnIiUeDKU8M8hrtNekL
 G4oXMg5RZp2Mn9MnDAKVsUAHcWasyWWL1EYwei/jzwZDU5pCRrwzVG0UO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dlh0sDCK
Subject: [Intel-wired-lan] [PATCH v5 net-next 6/8] ice: implement CPI
 support for E825C
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 andrew+netdev@lunn.ch, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,phy.data:url];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9D2FE38F073
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add full CPI (Converged PHY Interface) command handling required for
E825C devices. The CPI interface allows the driver to interact with
PHY-side control logic through the LM/PHY command registers, including
enabling/disabling/selection of PHY reference clock.

This patch introduces:
 - a new CPI subsystem (ice_cpi.c / ice_cpi.h) implementing the CPI
   request/acknowledge state machine, including REQ/ACK protocol,
   command execution, and response handling
 - helper functions for reading/writing PHY registers over Sideband
   Queue
 - CPI command execution API (ice_cpi_exec) and a helper for enabling or
   disabling Tx reference clocks (CPI 0xF1 opcode 'Config PHY clocking')
 - addition of the non-posted write opcode (wr_np) to SBQ
 - Makefile integration to build CPI support together with the PTP stack

This provides the infrastructure necessary to support PHY-side
configuration flows on E825C and is required for advanced link control
and Tx reference clock management.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile      |   2 +-
 drivers/net/ethernet/intel/ice/ice_cpi.c     | 337 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_cpi.h     |  61 ++++
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |   5 +-
 4 files changed, 402 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 5b2c666496e7..38db476ab2ec 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
-ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o ice_tspll.o
+ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o ice_tspll.o ice_cpi.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice_cpi.c b/drivers/net/ethernet/intel/ice/ice_cpi.c
new file mode 100644
index 000000000000..6be8d8497449
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_cpi.c
@@ -0,0 +1,337 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2026 Intel Corporation */
+
+#include "ice_type.h"
+#include "ice_common.h"
+#include "ice_ptp_hw.h"
+#include "ice_cpi.h"
+
+/**
+ * ice_cpi_get_dest_dev - get destination PHY for given phy index
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port the CPI action is taken on
+ *
+ * Return: sideband queue destination PHY device.
+ */
+static enum ice_sbq_dev_id ice_cpi_get_dest_dev(struct ice_hw *hw, u8 phy)
+{
+	u8 curr_phy = hw->lane_num / hw->ptp.ports_per_phy;
+
+	/* In the driver, lanes 4..7 are in fact 0..3 on a second PHY.
+	 * On a single complex E825C, PHY 0 is always destination device phy_0
+	 * and PHY 1 is phy_0_peer.
+	 * On dual complex E825C, device phy_0 points to PHY on a current
+	 * complex and phy_0_peer to PHY on a different complex.
+	 */
+	if ((!ice_is_dual(hw) && phy) ||
+	    (ice_is_dual(hw) && phy != curr_phy))
+		return ice_sbq_dev_phy_0_peer;
+	else
+		return ice_sbq_dev_phy_0;
+}
+
+/**
+ * ice_cpi_write_phy - Write a CPI port register
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port the CPI action is taken on
+ * @addr: PHY register address
+ * @val: Value to write
+ *
+ * Return:
+ * * 0 on success
+ * * other error codes when failed to write to PHY
+ */
+static int ice_cpi_write_phy(struct ice_hw *hw, u8 phy, u32 addr, u32 val)
+{
+	struct ice_sbq_msg_input msg = {
+		.dest_dev = ice_cpi_get_dest_dev(hw, phy),
+		.opcode = ice_sbq_msg_wr_np,
+		.msg_addr_low = lower_16_bits(addr),
+		.msg_addr_high = upper_16_bits(addr),
+		.data = val
+	};
+	int err;
+
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
+	if (err)
+		ice_debug(hw, ICE_DBG_PTP,
+			  "Failed to write CPI msg to phy %d, err: %d\n",
+			  phy, err);
+
+	return err;
+}
+
+/**
+ * ice_cpi_read_phy - Read a CPI port register
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port the CPI action is taken on
+ * @addr: PHY register address
+ * @val: storage for register value
+ *
+ * Return:
+ * * 0 on success
+ * * other error codes when failed to read from PHY
+ */
+static int ice_cpi_read_phy(struct ice_hw *hw, u8 phy, u32 addr, u32 *val)
+{
+	struct ice_sbq_msg_input msg = {
+		.dest_dev = ice_cpi_get_dest_dev(hw, phy),
+		.opcode = ice_sbq_msg_rd,
+		.msg_addr_low = lower_16_bits(addr),
+		.msg_addr_high = upper_16_bits(addr)
+	};
+	int err;
+
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP,
+			  "Failed to read CPI msg from phy %d, err: %d\n",
+			  phy, err);
+		return err;
+	}
+
+	*val = msg.data;
+
+	return 0;
+}
+
+/**
+ * ice_cpi_wait_req0_ack0 - waits for CPI interface to be available
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port the CPI action is taken on
+ *
+ * This function checks if CPI interface is ready to use by CPI client.
+ * It's done by assuring LM.CMD.REQ and PHY.CMD.ACK bit in CPI
+ * interface registers to be 0.
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_cpi_wait_req0_ack0(struct ice_hw *hw, int phy)
+{
+	u32 phy_val;
+	u32 lm_val;
+
+	for (int i = 0; i < CPI_RETRIES_COUNT; i++) {
+		int err;
+
+		/* check if another CPI Client is also accessing CPI */
+		err = ice_cpi_read_phy(hw, phy, CPI0_LM1_CMD_DATA, &lm_val);
+		if (err)
+			return err;
+		if (FIELD_GET(CPI_LM_CMD_REQ_M, lm_val))
+			return -EBUSY;
+
+		/* check if PHY.ACK is deasserted */
+		err = ice_cpi_read_phy(hw, phy, CPI0_PHY1_CMD_DATA, &phy_val);
+		if (err)
+			return err;
+		if (FIELD_GET(CPI_PHY_CMD_ERROR_M, phy_val))
+			return -EFAULT;
+		if (!FIELD_GET(CPI_PHY_CMD_ACK_M, phy_val))
+			/* req0 and ack0 at this point - ready to go */
+			return 0;
+
+		msleep(CPI_RETRIES_CADENCE_MS);
+	}
+
+	return -ETIMEDOUT;
+}
+
+/**
+ * ice_cpi_wait_ack - Waits for the PHY.ACK bit to be asserted/deasserted
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port the CPI action is taken on
+ * @asserted: desired state of PHY.ACK bit
+ * @data: pointer to the user data where PHY.data is stored
+ *
+ * This function checks if PHY.ACK bit is asserted or deasserted, depending
+ * on the phase of CPI handshake. If 'asserted' state is required, PHY command
+ * data is stored in the 'data' storage.
+ *
+ * Return: 0 on success, negative on error
+ */
+static int ice_cpi_wait_ack(struct ice_hw *hw, u8 phy, bool asserted,
+			    u32 *data)
+{
+	u32 phy_val;
+
+	for (int i = 0; i < CPI_RETRIES_COUNT; i++) {
+		int err;
+
+		err = ice_cpi_read_phy(hw, phy, CPI0_PHY1_CMD_DATA, &phy_val);
+		if (err)
+			return err;
+		if (FIELD_GET(CPI_PHY_CMD_ERROR_M, phy_val))
+			return -EFAULT;
+		if (asserted && FIELD_GET(CPI_PHY_CMD_ACK_M, phy_val)) {
+			if (data)
+				*data = phy_val;
+			return 0;
+		}
+		if (!asserted && !FIELD_GET(CPI_PHY_CMD_ACK_M, phy_val))
+			return 0;
+
+		msleep(CPI_RETRIES_CADENCE_MS);
+	}
+
+	return -ETIMEDOUT;
+}
+
+#define ice_cpi_wait_ack0(hw, port) \
+	ice_cpi_wait_ack(hw, port, false, NULL)
+
+#define ice_cpi_wait_ack1(hw, port, data) \
+	ice_cpi_wait_ack(hw, port, true, data)
+
+/**
+ * ice_cpi_req0 - deasserts LM.REQ bit
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port the CPI action is taken on
+ * @data: the command data
+ *
+ * Return: 0 on success, negative on CPI write error
+ */
+static int ice_cpi_req0(struct ice_hw *hw, u8 phy, u32 data)
+{
+	data &= ~CPI_LM_CMD_REQ_M;
+
+	return ice_cpi_write_phy(hw, phy, CPI0_LM1_CMD_DATA, data);
+}
+
+/**
+ * ice_cpi_exec_cmd - writes command data to CPI interface
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port the CPI action is taken on
+ * @data: the command data
+ *
+ * Return: 0 on success, otherwise negative on error
+ */
+static int ice_cpi_exec_cmd(struct ice_hw *hw, int phy, u32 data)
+{
+	return ice_cpi_write_phy(hw, phy, CPI0_LM1_CMD_DATA, data);
+}
+
+/**
+ * ice_cpi_exec - executes CPI command
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port the CPI action is taken on
+ * @cmd: pointer to the command struct to execute
+ * @resp: pointer to user allocated CPI response struct
+ *
+ * This function executes CPI request with respect to CPI handshake
+ * mechanism.
+ *
+ * Return: 0 on success, otherwise negative on error
+ */
+int ice_cpi_exec(struct ice_hw *hw, u8 phy,
+		 const struct ice_cpi_cmd *cmd,
+		 struct ice_cpi_resp *resp)
+{
+	u32 phy_cmd, lm_cmd = 0;
+	int err, err1 = 0;
+
+	if (!cmd || !resp)
+		return -EINVAL;
+
+	lm_cmd =
+		FIELD_PREP(CPI_LM_CMD_REQ_M, CPI_LM_CMD_REQ) |
+		FIELD_PREP(CPI_LM_CMD_GET_SET_M, cmd->set) |
+		FIELD_PREP(CPI_LM_CMD_OPCODE_M, cmd->opcode) |
+		FIELD_PREP(CPI_LM_CMD_PORTLANE_M, cmd->port) |
+		FIELD_PREP(CPI_LM_CMD_DATA_M, cmd->data);
+
+	/* 1. Try to acquire the bus, PHY ACK should be low before we begin */
+	err = ice_cpi_wait_req0_ack0(hw, phy);
+	if (err)
+		goto cpi_exec_exit;
+
+	/* 2. We start the CPI request */
+	err = ice_cpi_exec_cmd(hw, phy, lm_cmd);
+	if (err)
+		goto cpi_exec_exit;
+
+	/*
+	 * 3. Wait for CPI confirmation, PHY ACK should be asserted and opcode
+	 *    echoed in the response
+	 */
+	err = ice_cpi_wait_ack1(hw, phy, &phy_cmd);
+	if (err)
+		goto cpi_deassert;
+
+	if (FIELD_GET(CPI_PHY_CMD_ACK_M, phy_cmd) &&
+	    FIELD_GET(CPI_LM_CMD_OPCODE_M, lm_cmd) !=
+	    FIELD_GET(CPI_PHY_CMD_OPCODE_M, phy_cmd)) {
+		err = -EFAULT;
+		goto cpi_deassert;
+	}
+
+	resp->opcode = FIELD_GET(CPI_PHY_CMD_OPCODE_M, phy_cmd);
+	resp->data = FIELD_GET(CPI_PHY_CMD_DATA_M, phy_cmd);
+	resp->port = FIELD_GET(CPI_PHY_CMD_PORTLANE_M, phy_cmd);
+
+cpi_deassert:
+	/* 4. We deassert REQ */
+	err1 = ice_cpi_req0(hw, phy, lm_cmd);
+	if (err1)
+		goto cpi_exec_exit;
+
+	/* 5. PHY ACK should be deasserted in response */
+	err1 = ice_cpi_wait_ack0(hw, phy);
+
+cpi_exec_exit:
+	if (!err)
+		err = err1;
+
+	return err;
+}
+
+/**
+ * ice_cpi_set_cmd - execute CPI SET command
+ * @hw: pointer to the HW struct
+ * @opcode: CPI command opcode
+ * @phy: phy index CPI command is applied for
+ * @port_lane: ephy index CPI command is applied for
+ * @data: CPI opcode context specific data
+ *
+ * Return: 0 on success.
+ */
+static int ice_cpi_set_cmd(struct ice_hw *hw, u16 opcode, u8 phy, u8 port_lane,
+			   u16 data)
+{
+	struct ice_cpi_resp cpi_resp = {0};
+	struct ice_cpi_cmd cpi_cmd = {
+		.opcode = opcode,
+		.set = true,
+		.port = port_lane,
+		.data = data,
+	};
+
+	return ice_cpi_exec(hw, phy, &cpi_cmd, &cpi_resp);
+}
+
+/**
+ * ice_cpi_ena_dis_clk_ref - enables/disables Tx reference clock on port
+ * @hw: pointer to the HW struct
+ * @phy: phy index of port for which Tx reference clock is enabled/disabled
+ * @clk: Tx reference clock to enable or disable
+ * @enable: bool value to enable or disable Tx reference clock
+ *
+ * This function executes CPI request to enable or disable specific
+ * Tx reference clock on given PHY.
+ *
+ * Return: 0 on success.
+ */
+int ice_cpi_ena_dis_clk_ref(struct ice_hw *hw, u8 phy,
+			    enum ice_e825c_ref_clk clk, bool enable)
+{
+	u16 val;
+
+	val = FIELD_PREP(CPI_OPCODE_PHY_CLK_PHY_SEL_M, phy) |
+	      FIELD_PREP(CPI_OPCODE_PHY_CLK_REF_CTRL_M,
+			 enable ? CPI_OPCODE_PHY_CLK_ENABLE :
+			 CPI_OPCODE_PHY_CLK_DISABLE) |
+	      FIELD_PREP(CPI_OPCODE_PHY_CLK_REF_SEL_M, clk);
+
+	return ice_cpi_set_cmd(hw, CPI_OPCODE_PHY_CLK, phy, 0, val);
+}
+
diff --git a/drivers/net/ethernet/intel/ice/ice_cpi.h b/drivers/net/ethernet/intel/ice/ice_cpi.h
new file mode 100644
index 000000000000..932fe0c0824a
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_cpi.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2018-2025 Intel Corporation */
+
+#ifndef _ICE_CPI_H_
+#define _ICE_CPI_H_
+
+#define CPI0_PHY1_CMD_DATA	0x7FD028
+#define CPI0_LM1_CMD_DATA	0x7FD024
+#define CPI_RETRIES_COUNT	10
+#define CPI_RETRIES_CADENCE_MS	100
+
+/* CPI PHY CMD DATA register (CPI0_PHY1_CMD_DATA) */
+#define CPI_PHY_CMD_DATA_M	GENMASK(15, 0)
+#define CPI_PHY_CMD_OPCODE_M	GENMASK(23, 16)
+#define CPI_PHY_CMD_PORTLANE_M	GENMASK(26, 24)
+#define CPI_PHY_CMD_RSVD_M	GENMASK(29, 27)
+#define CPI_PHY_CMD_ERROR_M	BIT(30)
+#define CPI_PHY_CMD_ACK_M	BIT(31)
+
+/* CPI LM CMD DATA register (CPI0_LM1_CMD_DATA) */
+#define CPI_LM_CMD_DATA_M	GENMASK(15, 0)
+#define CPI_LM_CMD_OPCODE_M	GENMASK(23, 16)
+#define CPI_LM_CMD_PORTLANE_M	GENMASK(26, 24)
+#define CPI_LM_CMD_RSVD_M	GENMASK(28, 27)
+#define CPI_LM_CMD_GET_SET_M	BIT(29)
+#define CPI_LM_CMD_RESET_M	BIT(30)
+#define CPI_LM_CMD_REQ_M        BIT(31)
+
+#define CPI_OPCODE_PHY_CLK			0xF1
+#define CPI_OPCODE_PHY_CLK_PHY_SEL_M		GENMASK(9, 6)
+#define CPI_OPCODE_PHY_CLK_REF_CTRL_M		GENMASK(5, 4)
+#define CPI_OPCODE_PHY_CLK_PORT_SEL		0
+#define CPI_OPCODE_PHY_CLK_DISABLE		1
+#define CPI_OPCODE_PHY_CLK_ENABLE		2
+#define CPI_OPCODE_PHY_CLK_REF_SEL_M		GENMASK(3, 0)
+
+#define CPI_OPCODE_PHY_PCS_RESET		0xF0
+#define CPI_OPCODE_PHY_PCS_ONPI_RESET_VAL	0x3F
+
+#define CPI_LM_CMD_REQ		1
+#define CPI_LM_CMD_SET		1
+
+struct ice_cpi_cmd {
+	u8 port;
+	u8 opcode;
+	u16 data;
+	bool set;
+};
+
+struct ice_cpi_resp {
+	u8 port;
+	u8 opcode;
+	u16 data;
+};
+
+int ice_cpi_exec(struct ice_hw *hw, u8 phy,
+		 const struct ice_cpi_cmd *cmd,
+		 struct ice_cpi_resp *resp);
+int ice_cpi_ena_dis_clk_ref(struct ice_hw *hw, u8 port,
+			    enum ice_e825c_ref_clk clk, bool enable);
+#endif /* _ICE_CPI_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
index 21bb861febbf..226243d32968 100644
--- a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
@@ -54,8 +54,9 @@ enum ice_sbq_dev_id {
 };
 
 enum ice_sbq_msg_opcode {
-	ice_sbq_msg_rd	= 0x00,
-	ice_sbq_msg_wr	= 0x01
+	ice_sbq_msg_rd		= 0x00,
+	ice_sbq_msg_wr		= 0x01,
+	ice_sbq_msg_wr_np	= 0x02
 };
 
 #define ICE_SBQ_MSG_FLAGS	0x40
-- 
2.39.3


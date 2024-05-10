Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 593D78C2743
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:03:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 922FE845E6;
	Fri, 10 May 2024 15:03:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L5lEQXpIwp6n; Fri, 10 May 2024 15:03:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B0FE845CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715353382;
	bh=9zCXWnNgj+Ho1fw6LIt2R64mR3Jj2EPqIVCgHZHd+Mw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CffKRwou4VxeJFKcMSD0nW6zTYAKiaHL0ObiKbnFeZmR+VBU9w6yUQCPSa8hWOhXK
	 DAtc1RME8o24vgLFj4cqXlEIAjJjo2slnsYDlFJR3XxWI0SOXzfQi2Hf2/PNAdl2qC
	 xlOqdOo43YJNp6t6syE3TnJ0dCDy46aneQCc8wjcRl3HQYWwT1hbMnox8joaXvQEMy
	 hsfKPIJWuVnewhhcYAYox9x3pSeoEwQ5+15H9S9VdPwLI6R8tjutgLt7KuumIGWoec
	 u4OBqjXFg63tJaSP2o+6Hiz9sGXf996U78hCcJefBuO2tDD402QT+NF6r6mOz8vWWY
	 9Cu1SeC3Utnxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B0FE845CB;
	Fri, 10 May 2024 15:03:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0B71BF846
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 06:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DF6242377
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 06:52:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QY89bPCCUT-Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 06:52:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CAD9F42370
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAD9F42370
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAD9F42370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 06:52:55 +0000 (UTC)
X-CSE-ConnectionGUID: w2st9WFPR6uKvFqjOPvSGQ==
X-CSE-MsgGUID: SiZhnUxSQ3i2i5oztVdD2Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11138279"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11138279"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 23:52:52 -0700
X-CSE-ConnectionGUID: fHbpBoTiRqaTNtJinkdhAg==
X-CSE-MsgGUID: jdT+2zdcR9KUj7kK/VL4CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="33950259"
Received: from c3-1-server.sj.intel.com ([10.232.18.246])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 23:52:50 -0700
From: Anil Samal <anil.samal@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 May 2024 23:50:40 -0700
Message-ID: <20240510065243.906877-2-anil.samal@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240510065243.906877-1-anil.samal@intel.com>
References: <20240510065243.906877-1-anil.samal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 10 May 2024 15:02:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715323976; x=1746859976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XmtiBOlFChF0ay3Cyi8VtV0AufD3HI0EkTZQj2hHCYk=;
 b=lljJ9wspC5tN07vDZ85loE8llOIkx3udT+4ww5nUOMchEUuLvXt4GkWZ
 5vqoSaFk0aSzhY0I36/TQWBz0AzrMErZtIWdxZuPDnaXO3a3g2soGJJBy
 TQ/9XWORHjIatPZb7KcWIyqfQvrlN1xz5d/F/wDsdSZT7nuhyss0hlt7W
 08H5SVCf8GiWBVuVtO//YfsNjUYKHUl1D+GfYA5y1760dGiN7dheNQ1vb
 BN6XTbUgW8wC6TyqMW5bJm1wdELRXGUQ+UPnPedyZElOn7YhQCgrTTmKQ
 yfWwK5mjLL4Joq86wOX2nQGvd8te2bef9HuNXoDgm7yLHMhJBxZLcYFsF
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lljJ9wsp
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: Extend Sideband
 Queue command to support dynamic flag
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: --cc=anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 --cc=jesse.brandeburg@intel.com, --cc=leszek.pepiak@intel.com,
 Anil Samal <anil.samal@intel.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 --cc=przemyslaw.kitszel@intel.com, --cc=lukasz.czapnik@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Current driver implementation for Sideband Queue supports a
fixed flag (ICE_AQ_FLAG_RD). To retrieve FEC statistics from
firmware, Sideband Queue command is used with a different flag.

Extend API for Sideband Queue command to use 'flag' as input
argument.

Reviewed-by: Anthony L Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Anil Samal <anil.samal@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  5 +++--
 drivers/net/ethernet/intel/ice/ice_common.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 16 ++++++++--------
 3 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 5649b257e631..9a0a533613ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1473,8 +1473,9 @@ ice_sbq_send_cmd(struct ice_hw *hw, struct ice_sbq_cmd_desc *desc,
  * ice_sbq_rw_reg - Fill Sideband Queue command
  * @hw: pointer to the HW struct
  * @in: message info to be filled in descriptor
+ * @flag: flag to fill desc structure
  */
-int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in)
+int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flag)
 {
 	struct ice_sbq_cmd_desc desc = {0};
 	struct ice_sbq_msg_req msg = {0};
@@ -1498,7 +1499,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in)
 		 */
 		msg_len -= sizeof(msg.data);
 
-	desc.flags = cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags = cpu_to_le16(flag);
 	desc.opcode = cpu_to_le16(ice_sbq_opc_neigh_dev_req);
 	desc.param0.cmd_len = cpu_to_le16(msg_len);
 	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index ffb22c7ce28b..42cda1bbbaab 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -201,7 +201,7 @@ int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
 void ice_replay_post(struct ice_hw *hw);
 struct ice_q_ctx *
 ice_get_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 q_handle);
-int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in);
+int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flag);
 int
 ice_aq_get_cgu_abilities(struct ice_hw *hw,
 			 struct ice_aqc_get_cgu_abilities *abilities);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 2b9423a173bb..e97b73d1b0f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -433,7 +433,7 @@ ice_read_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 	ice_fill_phy_msg_e82x(&msg, port, offset);
 	msg.opcode = ice_sbq_msg_rd;
 
-	err = ice_sbq_rw_reg(hw, &msg);
+	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -511,7 +511,7 @@ ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 	msg.opcode = ice_sbq_msg_wr;
 	msg.data = val;
 
-	err = ice_sbq_rw_reg(hw, &msg);
+	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -667,7 +667,7 @@ ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 
 	msg.opcode = ice_sbq_msg_rd;
 
-	err = ice_sbq_rw_reg(hw, &msg);
+	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -702,7 +702,7 @@ ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 	msg.opcode = ice_sbq_msg_wr;
 	msg.data = val;
 
-	err = ice_sbq_rw_reg(hw, &msg);
+	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -840,7 +840,7 @@ ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
 	cgu_msg.msg_addr_low = addr;
 	cgu_msg.msg_addr_high = 0x0;
 
-	err = ice_sbq_rw_reg(hw, &cgu_msg);
+	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read CGU register 0x%04x, err %d\n",
 			  addr, err);
@@ -873,7 +873,7 @@ ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
 	cgu_msg.msg_addr_high = 0x0;
 	cgu_msg.data = val;
 
-	err = ice_sbq_rw_reg(hw, &cgu_msg);
+	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write CGU register 0x%04x, err %d\n",
 			  addr, err);
@@ -2660,7 +2660,7 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
 	msg.opcode = ice_sbq_msg_rd;
 	msg.dest_dev = rmn_0;
 
-	err = ice_sbq_rw_reg(hw, &msg);
+	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -2691,7 +2691,7 @@ static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 	msg.dest_dev = rmn_0;
 	msg.data = val;
 
-	err = ice_sbq_rw_reg(hw, &msg);
+	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
-- 
2.44.0


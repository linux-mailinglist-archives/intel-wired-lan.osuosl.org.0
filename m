Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B086EE12E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Apr 2023 13:44:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9367F403C7;
	Tue, 25 Apr 2023 11:44:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9367F403C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682423095;
	bh=+tm6XY6qkOq0aFtprCT2Z8oomFTDZE3PEEabyBTgpDY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uSWzRBwjQShijpOzuCtAq2ddK9ymiXYqFH4DsIQ825nAzJojDek38/VBEtF1IkBP6
	 AXc5ljm2HdrGqGk2dJuUnHMcwH7UueVwbpxmc/CRbB+qC3NWABkZ26d9z3EoD5i52T
	 14Qt4x42+AjtERvDtqV29mA369b2ip8ZDBzt1xCAcnfdcqcceIKmWsWJ3XskpyPyl/
	 QfAIm1044opLfSyI35sfea0CpPtlC/8J/R5na9IuZ4EZbZ1j3Wn5Hne7MI70N79K8w
	 ooi6Z3OoWBkSiEXLijuDK9vEkJCOFd31CUmWG3sLvsioijMQkQtQlwj3lSu2pdKfgT
	 c9W1h4AYwT7Pg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wjFxWfHmvq1U; Tue, 25 Apr 2023 11:44:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBD3E4035E;
	Tue, 25 Apr 2023 11:44:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBD3E4035E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C46061BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 11:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CCA060BE9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 11:44:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CCA060BE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5XkcSOzinL7V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Apr 2023 11:44:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7231F60B73
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7231F60B73
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 11:44:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412029981"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412029981"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 04:44:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="670860335"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="670860335"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.237.94.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 04:44:30 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Apr 2023 13:44:02 +0200
Message-Id: <20230425114402.3413096-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682423087; x=1713959087;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jos2I2C9nWdFy3u6C7zuW5P2lNrTDiGKVfYtrbkpf34=;
 b=Hbo9R4fggMupNoImC0r7yP+IwN+dwwBxojGWRDFW+ORn3k/ct+cnafJW
 2kVAEc0YpxlssirEfQsF8ho3fR5XOWaOiBznYqyHof5oSdnILn9dcRXV9
 Bxy8kWHcYRfM9AJpSPwPCUBS3GbsvrxvJ1TzFM6gLJj6l8kSGyUD3MWzj
 Ifd0wz7vmIteMiWo98lvUw2R1/zgZITm2G53iB9XXgUMr7cWdLPxQ3IMm
 sR3NYQWNc3/Tz1Lk0uoox/BbBetXRDOXQwjp0y+rlvWGPGDM9kLjxEDug
 GrNtHsbBbGf7r1MIs+iCZyrz0sWst653G/nLBC1hlW/Seqq//bkXnGe9R
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hbo9R4fg
Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: add PHY debug register
 dump
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement ethtool register dump for some PHY registers in order to
assist field debugging of link issues.

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
v1 to v2:
  - fix sparse warning
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  3 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 72 ++++++++++++++-----
 .../net/ethernet/intel/i40e/i40e_register.h   |  8 +++
 3 files changed, 65 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 6e310a539467..876d25cc5670 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -93,6 +93,9 @@
 #define I40E_OEM_SNAP_SHIFT		16
 #define I40E_OEM_RELEASE_MASK		0x0000ffff
 
+/* default value when register dump is fail */
+#define I40E_READ_REG_INVALID		0xaabbccdd
+
 #define I40E_RX_DESC(R, i)	\
 	(&(((union i40e_rx_desc *)((R)->desc))[i]))
 #define I40E_TX_DESC(R, i)	\
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index afc4fa8c66af..694de948cb14 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -426,6 +426,19 @@ static const char i40e_gstrings_test[][ETH_GSTRING_LEN] = {
 
 #define I40E_TEST_LEN (sizeof(i40e_gstrings_test) / ETH_GSTRING_LEN)
 
+static const struct i40e_diag_reg_test_info i40e_phy_regs_list[] = {
+	/* offset               mask         elements   stride */
+	{I40E_PRTMAC_PCS_LINK_CTRL,		0xFFFFFFFF, 1, 4},
+	{I40E_PRTMAC_PCS_LINK_STATUS1(0),	0xFFFFFFFF, 1, 4},
+	{I40E_PRTMAC_PCS_LINK_STATUS2,		0xFFFFFFFF, 1, 4},
+	{I40E_PRTMAC_PCS_XGMII_FIFO_STATUS,	0xFFFFFFFF, 1, 4},
+	{I40E_PRTMAC_PCS_AN_LP_STATUS,		0xFFFFFFFF, 1, 4},
+	{I40E_PRTMAC_PCS_KR_STATUS,		0xFFFFFFFF, 1, 4},
+	{I40E_PRTMAC_PCS_FEC_KR_STATUS1,	0xFFFFFFFF, 1, 4},
+	{I40E_PRTMAC_PCS_FEC_KR_STATUS2,	0xFFFFFFFF, 1, 4},
+	{ 0 }
+};
+
 struct i40e_priv_flags {
 	char flag_string[ETH_GSTRING_LEN];
 	u64 flag;
@@ -1814,38 +1827,61 @@ static int i40e_get_regs_len(struct net_device *netdev)
 	for (i = 0; i40e_reg_list[i].offset != 0; i++)
 		reg_count += i40e_reg_list[i].elements;
 
+	for (i = 0; i40e_phy_regs_list[i].offset != 0; i++)
+		reg_count += i40e_phy_regs_list[i].elements;
+
 	return reg_count * sizeof(u32);
 }
 
-static void i40e_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
-			  void *p)
+static void i40e_read_regs(struct net_device *netdev,
+			   const struct i40e_diag_reg_test_info *i40e_regs_list,
+			   void *p, u32 *ri)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_pf *pf = np->vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 	u32 *reg_buf = p;
-	unsigned int i, j, ri;
+	unsigned int i, j;
 	u32 reg;
+	u32 val;
+
+	/* loop through the regs table for what to print */
+	for (i = 0; i40e_regs_list[i].offset != 0; i++) {
+		for (j = 0; j < i40e_regs_list[i].elements; j++) {
+			reg = i40e_regs_list[i].offset
+				+ (j * i40e_regs_list[i].stride);
+
+			/* check the range on registers */
+			if (reg <= (pf->ioremap_len - sizeof(u32)))
+				val = rd32(hw, reg);
+			else
+				val = I40E_READ_REG_INVALID;
+
+			netdev_dbg(netdev, "reg[%02u] 0x%08X %08X\n",
+				   *ri, reg, val);
+			reg_buf[(*ri)++] = val;
+		}
+	}
+}
+
+static void i40e_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
+			  void *p)
+{
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_hw *hw = &np->vsi->back->hw;
+	u32 ri = 0;
 
 	/* Tell ethtool which driver-version-specific regs output we have.
 	 *
-	 * At some point, if we have ethtool doing special formatting of
-	 * this data, it will rely on this version number to know how to
-	 * interpret things.  Hence, this needs to be updated if/when the
-	 * diags register table is changed.
+	 * At some point, if we will have ethtool able to parse binary stream
+	 * output, it will rely on this version number, basing on encoded
+	 * MAC type, Revision ID and Device ID of tested PHY.
 	 */
-	regs->version = 1;
-
-	/* loop through the diags reg table for what to print */
-	ri = 0;
-	for (i = 0; i40e_reg_list[i].offset != 0; i++) {
-		for (j = 0; j < i40e_reg_list[i].elements; j++) {
-			reg = i40e_reg_list[i].offset
-				+ (j * i40e_reg_list[i].stride);
-			reg_buf[ri++] = rd32(hw, reg);
-		}
-	}
+	regs->version = hw->mac.type << 24 | hw->revision_id << 16 |
+			hw->device_id;
 
+	i40e_read_regs(netdev, i40e_reg_list, p, &ri);
+	i40e_read_regs(netdev, i40e_phy_regs_list, p, &ri);
 }
 
 static int i40e_get_eeprom(struct net_device *netdev,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 7339003aa17c..7bfed10d5ab4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -522,6 +522,14 @@
 #define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT 0
 #define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MASK I40E_MASK(0xFFFF, \
 	I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT)
+#define I40E_PRTMAC_PCS_LINK_STATUS1(_i) (0x0008C200 + ((_i) * 4))
+#define I40E_PRTMAC_PCS_LINK_STATUS2 0x0008C220
+#define I40E_PRTMAC_PCS_LINK_CTRL 0x0008C260
+#define I40E_PRTMAC_PCS_XGMII_FIFO_STATUS 0x0008C320
+#define I40E_PRTMAC_PCS_AN_LP_STATUS 0x0008C680
+#define I40E_PRTMAC_PCS_KR_STATUS 0x0008CA00
+#define I40E_PRTMAC_PCS_FEC_KR_STATUS1 0x0008CC20
+#define I40E_PRTMAC_PCS_FEC_KR_STATUS2 0x0008CC40
 #define I40E_GLNVM_FLA 0x000B6108 /* Reset: POR */
 #define I40E_GLNVM_FLA_LOCKED_SHIFT 6
 #define I40E_GLNVM_FLA_LOCKED_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_LOCKED_SHIFT)
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

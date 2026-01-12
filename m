Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68149D13109
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:18:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25DF984ED8;
	Mon, 12 Jan 2026 14:18:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E4J931l-5SbM; Mon, 12 Jan 2026 14:18:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BE5684ED9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227523;
	bh=1gm4lOcaZYJK3qcJQ0M1f91WhjwNjcZMynlIwA6C7DU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pBl5Hx7YCs3vWSgqrkDxlmN8EVFf0c2a0c2fApNwJ0WdI2bE2QVRio4wlrZKDkUez
	 wPq4Ak9bd8FV51HK7W/spcVl6/bUUXd83yq6Zb241MKPXqjJ1g5JVuOm8BNwhu2/Xf
	 Z5joD2EVSbsp6mYY4bwF7EI1c5k/i6jqVT09tSJIkPgxq4m4uDOccSbiIhb5X3uRRc
	 BEmQpWblt1JufhcFb7J4zG/Ym/pjmgIEUX6wO5lVGR/BKEDfMzKNYQ3P/JC2GkjjNb
	 7UnAMTb0HBJ/+xBwNzLgGnUigECJdSEoVlqXGgaAH4AkLk78o9EYpwHpdlbVft+j4k
	 /sV/32xUuCLLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BE5684ED9;
	Mon, 12 Jan 2026 14:18:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 452AE18D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3741A6F4E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TkJNPaKLk1GE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:18:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 46CA66F4F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46CA66F4F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46CA66F4F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:40 +0000 (UTC)
X-CSE-ConnectionGUID: MacZ1vcSSaqFMy/4WsRm6Q==
X-CSE-MsgGUID: ndHTVtMQTciPyPVAsoC/iQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73352284"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73352284"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:18:40 -0800
X-CSE-ConnectionGUID: wOZCr0P8QWyFatxfp3FLeA==
X-CSE-MsgGUID: H55u1D9+R1+RKmvOYlnQ1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="227355630"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2026 06:18:39 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 12 Jan 2026 15:01:03 +0100
Message-Id: <20260112140108.1173835-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768227520; x=1799763520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WiCA5KWXATI3ZzkvYpNlDieIhtSPhjJAOOUIJgDP6BU=;
 b=DlWJ706pCGMInkwnYYKxcDxrtl7GKa3gIHvYS+j8ajGBmpA4i2EbIU67
 x0iPr6EXDWHu7Xp+X32bUKT78EaKqfHsveiyObb2fYCU/Pcc0aMxGyMmY
 vbSO0A+wVzqRDAV+aj3YeDNbUVud8W7YVKjypMjSiIxeI60RswBHGmRjp
 vsBBOWA8tsWPcst7k1pvSMByvUCo9Aw09xfEq3t8aTxbAyUk2FZK1X2ZP
 lfNRAZe1BgBjaupIs3/HQksEGMNk1Oaczxagg9dQJx7joZtvFIS584l/x
 2g1vCvZzLREeSME32kPyqLgqZqeBaioXKjL6eGG1sED1UQKBxDWfDana8
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DlWJ706p
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/7] ixgbe: E610: use new
 version of 0x601 ACI command buffer
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

Since FW version 1.40, buffer size of the 0x601 cmd has been increased
by 2B - from 24 to 26B. Buffer has been extended with new field
which can be used to configure EEE entry delay.

Pre-1.40 FW versions still expect 24B buffer and throws error when
receipts 26B buffer. To keep compatibility, check whether EEE
device capability flag is set and basing on it use appropriate
size of the command buffer.

Additionally place Set PHY Config capabilities defines out of
structs definitions.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c   | 17 ++++++++++++++++-
 .../net/ethernet/intel/ixgbe/ixgbe_type_e610.h  | 15 +++++++++------
 2 files changed, 25 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 98982d3d87c7..71409a0ac2fe 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1096,11 +1096,16 @@ int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
 {
 	struct ixgbe_aci_cmd_set_phy_cfg *cmd;
 	struct libie_aq_desc desc;
+	bool use_buff_eee_field;
+	u16 buf_size;
 	int err;
 
 	if (!cfg)
 		return -EINVAL;
 
+	/* If FW supports EEE, we have to use buffer with EEE field. */
+	use_buff_eee_field = hw->dev_caps.common_cap.eee_support;
+
 	cmd = libie_aq_raw(&desc);
 	/* Ensure that only valid bits of cfg->caps can be turned on. */
 	cfg->caps &= IXGBE_ACI_PHY_ENA_VALID_MASK;
@@ -1109,7 +1114,17 @@ int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
 	cmd->lport_num = hw->bus.func;
 	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
-	err = ixgbe_aci_send_cmd(hw, &desc, cfg, sizeof(*cfg));
+	if (use_buff_eee_field)
+		buf_size = sizeof(*cfg);
+	else
+		/* Buffer w/o eee_entry_delay field is 2B smaller. */
+		buf_size = sizeof(*cfg) - sizeof(u16);
+
+	err = ixgbe_aci_send_cmd(hw, &desc, cfg, buf_size);
+
+	/* 1.40 config format is compatible with pre-1.40, just extends
+	 * it at the end.
+	 */
 	if (!err)
 		hw->phy.curr_user_phy_cfg = *cfg;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 767d04a3f106..e790974bc3d3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -382,6 +382,15 @@ struct ixgbe_aci_cmd_set_phy_cfg_data {
 	__le64 phy_type_low; /* Use values from IXGBE_PHY_TYPE_LOW_* */
 	__le64 phy_type_high; /* Use values from IXGBE_PHY_TYPE_HIGH_* */
 	u8 caps;
+	u8 low_power_ctrl_an;
+	__le16 eee_cap; /* Value from ixgbe_aci_get_phy_caps */
+	__le16 eeer_value; /* Use defines from ixgbe_aci_get_phy_caps */
+	u8 link_fec_opt; /* Use defines from ixgbe_aci_get_phy_caps */
+	u8 module_compliance_enforcement;
+	__le16  eee_entry_delay;
+} __packed;
+
+/* Set PHY config capabilities (@caps) defines */
 #define IXGBE_ACI_PHY_ENA_VALID_MASK		0xef
 #define IXGBE_ACI_PHY_ENA_TX_PAUSE_ABILITY	BIT(0)
 #define IXGBE_ACI_PHY_ENA_RX_PAUSE_ABILITY	BIT(1)
@@ -390,12 +399,6 @@ struct ixgbe_aci_cmd_set_phy_cfg_data {
 #define IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT	BIT(5)
 #define IXGBE_ACI_PHY_ENA_LESM			BIT(6)
 #define IXGBE_ACI_PHY_ENA_AUTO_FEC		BIT(7)
-	u8 low_power_ctrl_an;
-	__le16 eee_cap; /* Value from ixgbe_aci_get_phy_caps */
-	__le16 eeer_value; /* Use defines from ixgbe_aci_get_phy_caps */
-	u8 link_fec_opt; /* Use defines from ixgbe_aci_get_phy_caps */
-	u8 module_compliance_enforcement;
-};
 
 /* Restart AN command data structure (direct 0x0605)
  * Also used for response, with only the lport_num field present.
-- 
2.31.1


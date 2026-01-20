Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOxeGGGtb2nxEwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:29:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7864787A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:29:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26A9585BFC;
	Tue, 20 Jan 2026 14:02:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9VSNZZykX2bm; Tue, 20 Jan 2026 14:02:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C12585BFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768917752;
	bh=0Z6VrNnIqfgRzNwqf78eMp+vjzJGicROND2x04njY0w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=imd0cYMVvyaF2kw3TGub3ZopAFEJTiYA+9CbvPQRvAJkClfy0aTpQYPpWdmCdg3mH
	 h+LLWXJKhBGBd1XWRPHiSZ6kz9S/HtEgT1/az49DDZQvk8Wg0MMUuM1f/VQm0h38lo
	 nrLJrP7nbKxEtreL4DNEC+ltE8vUXpLq9fKhH95I9ToRgoMnNS5sK+mgNRJKqW8teR
	 U+z2bo2tDvOgQirlp1hTYXyQwo9S0e+6Fz2zW9/Yq6ocNtIYSKBvLSxUu9J651k3jo
	 6qBCJeKFuWJOgU/rO0MCbYOT6q9JVsRTmA/elCm0qGK2xoiDtCLxEpSX42hXMQ43UP
	 I8OQFmaC+rPgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C12585BFE;
	Tue, 20 Jan 2026 14:02:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 20394160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 115716FE3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VPD7VVt5LM7q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 14:02:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E23306FE33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E23306FE33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E23306FE33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:29 +0000 (UTC)
X-CSE-ConnectionGUID: ++XdgoXURxWwyc0j9qm4ew==
X-CSE-MsgGUID: VkBxwiK9T1KWSQzKae6xjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="72711758"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="72711758"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 06:02:29 -0800
X-CSE-ConnectionGUID: 0hmNlgYgSAyhvDQW1kbBtA==
X-CSE-MsgGUID: Oda85k0BS7S4WTnPxHeIkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210978904"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 06:02:27 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 20 Jan 2026 14:44:30 +0100
Message-Id: <20260120134434.1931602-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768917750; x=1800453750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u6BDPVmJnQcjyrbWwPYe11Nbl9F6UGAuH3XDGMTgEw8=;
 b=TJ4ZMwJG2Z4k7Zo3SX17HYYepOYbYiSDYtpFE4ByoKB1pmUBrchTPXCj
 SxjZ0Ey3jVjXrZhdbIoGmes3MzSFQwWAqXvNnmaWcCauKi3HzxaD3+tB9
 Ke/mbgcv2oZbGh5IKZ0rC+YqqY21dQ9erJtx3Ai7/uyhuitWlYy5zLVY6
 UPJBmbfQ7VDiZfrQCiv5x9Mw91CPlgUbC86XAHDNfevnAgtvs3c8Rs8W5
 83xHe77SwZLjPZ+q6pY9rK2ZXsq11GGUPYkTMG+VOKYvo+cVLn6SX7haq
 Ut4R4i1TFQYQi5EjOb/WuX4OyinYaDPISdOmnaUT3l094pafPovQkg97/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TJ4ZMwJG
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/6] ixgbe: E610: use new
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DA7864787A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 9ae1e3620ee1..431c932f036b 100644
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
index 11dc7fc71b71..db62281c9413 100644
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


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B91D98B9D7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 12:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CF97812DA;
	Tue,  1 Oct 2024 10:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mqoqMiejjDG4; Tue,  1 Oct 2024 10:40:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 563BE812E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727779248;
	bh=S4LMtWmxEg2FiNoWDgtcS+pCXp9o8LL07dF1LN50SX0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1e6kFdaYmonAb3pvrlRjpdaO/4RAcr/5lMixHEVR4x2ZkNRKDFsVTVqQGUmYVeF2g
	 3+6x2UxkWdjzW7Cjhr3wyzvI2XEVfQ2bOWokA5G8+5WGMEQtQkxjylCuf+1gkL6eYj
	 2+NA34n3eBUdU8E1jYpc6FGeVGl0CpMo0nIJcT16fRIECO3sUeya+X1LJWCpaGjPqF
	 Xyr4kustUNm/XaGSssep3e9UBnoZB7OcZ9pKFcuSiA8GgW2iaEh/hQLwmnKWCySZKB
	 dr+O6IMzhWQyJUXPEMWPAPmUlSq/iDDc8xy/ax4G3SHCC7rpCCUB4xc18mCMad4nw1
	 oVOlve/BRALUQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 563BE812E2;
	Tue,  1 Oct 2024 10:40:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B2C8A1BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B2CE812CD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:40:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v6Zu5eGdJ3Qc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 10:40:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A4B1D812C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4B1D812C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4B1D812C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:40:41 +0000 (UTC)
X-CSE-ConnectionGUID: PLQUbnuNQVKwdOhNzn8i6w==
X-CSE-MsgGUID: KTjJpJ19SwuPNp2akYnhug==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44433908"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="44433908"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 03:40:40 -0700
X-CSE-ConnectionGUID: llciu50lSn+hze5/faYmxg==
X-CSE-MsgGUID: 9zopoR2oSw61amogfslQtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="104447762"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 01 Oct 2024 03:40:38 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 314AE27BC5;
 Tue,  1 Oct 2024 11:40:36 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Oct 2024 06:26:04 -0400
Message-Id: <20241001102605.4526-2-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241001102605.4526-1-mateusz.polchlopek@intel.com>
References: <20241001102605.4526-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727779242; x=1759315242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=favQJ08S3GD3fpRIXfVi+f0h0K8D7FxMKB7j5mwzoWM=;
 b=PGITPnubhvd6on//rTZFF1It+0KmFU85zwH817MGPB2DbruoUQoSzcJw
 VbZ5pVXchFJkg17MITFNS+KfD2x8lyjKg87GvzGOFbkvlN3SL/AgoROx2
 DBANoTAwWZge+s8M37hIG0Iz8BDQgoCwGBeI+LnPsiH//z+VK2XTriHd3
 1MscjYUDylWWIZ1TpO2peS5ZCx3+IxkPlUMNMBmTg9khNnSdWjwM7OQYw
 D3NPMe0tE8TOVbOBIYO5A8hNVS6SerqJ9zsw4Vi/yleaFSeDAnFff5+ch
 MXZkylht4zOvvPe7DN+EwSyKl6BTvXeCc0GB5IzN/zDKSNVImdTXTEl/t
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PGITPnub
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: rework of dump serdes
 equalizer values feature
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor function ice_get_tx_rx_equa() to iterate over new table of
params instead of multiple calls to ice_aq_get_phy_equalization().

Subsequent commit will extend that function by add more serdes equalizer
values to dump.

Shorten the fields of struct ice_serdes_equalization_to_ethtool for
readability purposes.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 93 ++++++--------------
 drivers/net/ethernet/intel/ice/ice_ethtool.h | 22 ++---
 2 files changed, 38 insertions(+), 77 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2924ac61300d..19e7a9d93928 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -693,75 +693,36 @@ static int ice_get_port_topology(struct ice_hw *hw, u8 lport,
 static int ice_get_tx_rx_equa(struct ice_hw *hw, u8 serdes_num,
 			      struct ice_serdes_equalization_to_ethtool *ptr)
 {
+	static const int tx = ICE_AQC_OP_CODE_TX_EQU;
+	static const int rx = ICE_AQC_OP_CODE_RX_EQU;
+	struct {
+		int data_in;
+		int opcode;
+		int *out;
+	} aq_params[] = {
+		{ ICE_AQC_TX_EQU_PRE1, tx, &ptr->tx_equ_pre1 },
+		{ ICE_AQC_TX_EQU_PRE3, tx, &ptr->tx_equ_pre3 },
+		{ ICE_AQC_TX_EQU_ATTEN, tx, &ptr->tx_equ_atten },
+		{ ICE_AQC_TX_EQU_POST1, tx, &ptr->tx_equ_post1 },
+		{ ICE_AQC_TX_EQU_PRE2, tx, &ptr->tx_equ_pre2 },
+		{ ICE_AQC_RX_EQU_PRE2, rx, &ptr->rx_equ_pre2 },
+		{ ICE_AQC_RX_EQU_PRE1, rx, &ptr->rx_equ_pre1 },
+		{ ICE_AQC_RX_EQU_POST1, rx, &ptr->rx_equ_post1 },
+		{ ICE_AQC_RX_EQU_BFLF, rx, &ptr->rx_equ_bflf },
+		{ ICE_AQC_RX_EQU_BFHF, rx, &ptr->rx_equ_bfhf },
+		{ ICE_AQC_RX_EQU_DRATE, rx, &ptr->rx_equ_drate },
+	};
 	int err;
 
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_PRE1,
-					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
-					  &ptr->tx_equalization_pre1);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_PRE3,
-					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
-					  &ptr->tx_equalization_pre3);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_ATTEN,
-					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
-					  &ptr->tx_equalization_atten);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_POST1,
-					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
-					  &ptr->tx_equalization_post1);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_TX_EQU_PRE2,
-					  ICE_AQC_OP_CODE_TX_EQU, serdes_num,
-					  &ptr->tx_equalization_pre2);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_PRE2,
-					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
-					  &ptr->rx_equalization_pre2);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_PRE1,
-					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
-					  &ptr->rx_equalization_pre1);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_POST1,
-					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
-					  &ptr->rx_equalization_post1);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_BFLF,
-					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
-					  &ptr->rx_equalization_bflf);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_BFHF,
-					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
-					  &ptr->rx_equalization_bfhf);
-	if (err)
-		return err;
-
-	err = ice_aq_get_phy_equalization(hw, ICE_AQC_RX_EQU_DRATE,
-					  ICE_AQC_OP_CODE_RX_EQU, serdes_num,
-					  &ptr->rx_equalization_drate);
-	if (err)
-		return err;
+	for (int i = 0; i < ARRAY_SIZE(aq_params); i++) {
+		err = ice_aq_get_phy_equalization(hw, aq_params[i].data_in,
+						  aq_params[i].opcode,
+						  serdes_num, aq_params[i].out);
+		if (err)
+			break;
+	}
 
-	return 0;
+	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
index 9acccae38625..98eb9c51d687 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -10,17 +10,17 @@ struct ice_phy_type_to_ethtool {
 };
 
 struct ice_serdes_equalization_to_ethtool {
-	int rx_equalization_pre2;
-	int rx_equalization_pre1;
-	int rx_equalization_post1;
-	int rx_equalization_bflf;
-	int rx_equalization_bfhf;
-	int rx_equalization_drate;
-	int tx_equalization_pre1;
-	int tx_equalization_pre3;
-	int tx_equalization_atten;
-	int tx_equalization_post1;
-	int tx_equalization_pre2;
+	int rx_equ_pre2;
+	int rx_equ_pre1;
+	int rx_equ_post1;
+	int rx_equ_bflf;
+	int rx_equ_bfhf;
+	int rx_equ_drate;
+	int tx_equ_pre1;
+	int tx_equ_pre3;
+	int tx_equ_atten;
+	int tx_equ_post1;
+	int tx_equ_pre2;
 };
 
 struct ice_regdump_to_ethtool {
-- 
2.38.1


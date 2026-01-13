Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1286D1B145
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 20:39:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C38660C2D;
	Tue, 13 Jan 2026 19:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zaOOOAgwUg4w; Tue, 13 Jan 2026 19:39:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88A5D60C31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768333143;
	bh=8HY+/aUCdY5h2MmvPMMewf5KlTv59tJt1cHVbYr/JT8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vJs182dB1jnJZKQB2vqGGl0/ipcVmKeBWl6PZDL+mjW3x7KPa9JBtyOyknTCvDhTF
	 nm1O1UQtBvuOCznniVL/Q2bb72tzfHq0yEpPvtjO6HtdBEy7uqKEFA8SzhwJYhUQQz
	 WY8gZSBSghn7UUbr3w4dsg60pn3KBn6cRTYBi1YZ9VwwCqA69frVv7srZa4xQ7lgYe
	 iCo22GHsN7mEgIUl2WXGrVS+BFTzJe5Pe2H2YPMGMoY/Xchao8nofMkAjZXt44IyDi
	 ueu9FS7WSOT25ksyT73aLHc78Icvx92XFHDXS1sTlqN8CnQNtKF62aPbdoj2i52OWw
	 6nKa061iv39jw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88A5D60C31;
	Tue, 13 Jan 2026 19:39:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AAD891C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F8E282C84
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlQoASlOCVgR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 19:39:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 627BF82C7D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 627BF82C7D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 627BF82C7D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:39:00 +0000 (UTC)
X-CSE-ConnectionGUID: 1cagiHH5TSWtaYBYanHneQ==
X-CSE-MsgGUID: XTLBOuiXRqqxsvRGUFc4Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="80993530"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="80993530"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 11:39:00 -0800
X-CSE-ConnectionGUID: fuUb7S8FSd+1isAwjaWYGQ==
X-CSE-MsgGUID: XmFmkVOGTBSszu2DWXYeFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="208629085"
Received: from kasadzad-mobl.ger.corp.intel.com (HELO
 soc-5CG4396XFB.clients.intel.com) ([10.94.252.226])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 11:38:58 -0800
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Jakub Staniszewski <jakub.staniszewski@linux.intel.com>,
 stable@vger.kernel.org,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 13 Jan 2026 20:38:17 +0100
Message-ID: <20260113193817.582-3-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260113193817.582-1-dawid.osuchowski@linux.intel.com>
References: <20260113193817.582-1-dawid.osuchowski@linux.intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768333140; x=1799869140;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cQBJ2VxWuFTxQUDOTo6qtyEYlivydYoNMrH+/6fqZRo=;
 b=J0Vy1xbO0Mw7OSJ9f7VU+PF3C4aBt/66TSUh+UIyb5hOTWh75IltLM46
 Euk9SLzr3VnlA0OyN0CKpK4bQ+zsHgJcKIirHYs23sCxrBEtuAG0g8lpW
 2SmkAxn1dgBCkYI6uSBfzujRJ2BDjZ6lqbXB1jMKWVThHfxX7sgayc1v0
 NIAIepiIChLn4/GYHbNgLsZ6NrXM+4ac3m8RjTpAA5A13X+ZMHk7245aJ
 WHDO6qVmTquVFccBZ4UmLaTUxuYKW3pkxvGkcOQRRwe/TLMnFishlGVUs
 7t3JQHhofxKTVAgzYq0aDCgis0U2aA4nKfd1OHBPbIrJTUXwmEAHDROwN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J0Vy1xbO
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix retry for AQ command
 0x06EE
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

From: Jakub Staniszewski <jakub.staniszewski@linux.intel.com>

Executing ethtool -m can fail reporting a netlink I/O error while firmware
link management holds the i2c bus used to communicate with the module.

According to Intel(R) Ethernet Controller E810 Datasheet Rev 2.8 [1]
Section 3.3.10.4 Read/Write SFF EEPROM (0x06EE)
request should to be retried upon receiving EBUSY from firmware.

Commit e9c9692c8a81 ("ice: Reimplement module reads used by ethtool")
implemented it only for part of ice_get_module_eeprom(), leaving all other
calls to ice_aq_sff_eeprom() vulnerable to returning early on getting
EBUSY without retrying.

Remove the retry loop from ice_get_module_eeprom() and add Admin Queue
(AQ) command with opcode 0x06EE to the list of commands that should be
retried on receiving EBUSY from firmware.

Cc: stable@vger.kernel.org
Fixes: e9c9692c8a81 ("ice: Reimplement module reads used by ethtool")
Signed-off-by: Jakub Staniszewski <jakub.staniszewski@linux.intel.com>
Co-developed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Link: https://www.intel.com/content/www/us/en/content-details/613875/intel-ethernet-controller-e810-datasheet.html [1]
---
 drivers/net/ethernet/intel/ice/ice_common.c  |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 35 ++++++++------------
 2 files changed, 15 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index aab00c44e9b2..26eb8e05498b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1854,6 +1854,7 @@ static bool ice_should_retry_sq_send_cmd(u16 opcode)
 	case ice_aqc_opc_lldp_stop:
 	case ice_aqc_opc_lldp_start:
 	case ice_aqc_opc_lldp_filter_ctrl:
+	case ice_aqc_opc_sff_eeprom:
 		return true;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 3565a5d96c6d..478876908db1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4496,7 +4496,7 @@ ice_get_module_eeprom(struct net_device *netdev,
 	u8 addr = ICE_I2C_EEPROM_DEV_ADDR;
 	struct ice_hw *hw = &pf->hw;
 	bool is_sfp = false;
-	unsigned int i, j;
+	unsigned int i;
 	u16 offset = 0;
 	u8 page = 0;
 	int status;
@@ -4538,26 +4538,19 @@ ice_get_module_eeprom(struct net_device *netdev,
 		if (page == 0 || !(data[0x2] & 0x4)) {
 			u32 copy_len;
 
-			/* If i2c bus is busy due to slow page change or
-			 * link management access, call can fail. This is normal.
-			 * So we retry this a few times.
-			 */
-			for (j = 0; j < 4; j++) {
-				status = ice_aq_sff_eeprom(hw, 0, addr, offset, page,
-							   !is_sfp, value,
-							   SFF_READ_BLOCK_SIZE,
-							   0, NULL);
-				netdev_dbg(netdev, "SFF %02X %02X %02X %X = %02X%02X%02X%02X.%02X%02X%02X%02X (%X)\n",
-					   addr, offset, page, is_sfp,
-					   value[0], value[1], value[2], value[3],
-					   value[4], value[5], value[6], value[7],
-					   status);
-				if (status) {
-					usleep_range(1500, 2500);
-					memset(value, 0, SFF_READ_BLOCK_SIZE);
-					continue;
-				}
-				break;
+			status = ice_aq_sff_eeprom(hw, 0, addr, offset, page,
+						   !is_sfp, value,
+						   SFF_READ_BLOCK_SIZE,
+						   0, NULL);
+			netdev_dbg(netdev, "SFF %02X %02X %02X %X = %02X%02X%02X%02X.%02X%02X%02X%02X (%pe)\n",
+				   addr, offset, page, is_sfp,
+				   value[0], value[1], value[2], value[3],
+				   value[4], value[5], value[6], value[7],
+				   ERR_PTR(status));
+			if (status) {
+				netdev_err(netdev, "%s: error reading module EEPROM: status %pe\n",
+					   __func__, ERR_PTR(status));
+				return status;
 			}
 
 			/* Make sure we have enough room for the new block */
-- 
2.51.0


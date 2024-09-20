Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B18797D8A2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 18:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F0F542C28;
	Fri, 20 Sep 2024 16:56:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZblE7GWF81wb; Fri, 20 Sep 2024 16:56:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BF9242C1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726851399;
	bh=KbJx1mSAYMFSxznHleacT/3azKYZN4tbwJ1vxWwvkIg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sq0hSYJ1xpXvgxFdRJf1GvmxjgqqjkSU8obGrJV4hheTxcUPu3UGIrxdlHyj9fkvk
	 vPIQ775Bkass87/s2aQpyGCdszjuY0gVH7Iy4AfyMZV7Jnf4z2rd5WuBWXf2lW1Q2y
	 4dummmmmi0oJvTRWddF0E4dMmaUGkafUpwX/96UjYjSYt72aDnSyVf4OKUBwfF0uL8
	 s+2Vm4vHgSHyT6paBEaixaYG9oOlQHyVecT9ORneSoJsbiMkYjQAbagpOgcoResKCa
	 nvWti2GyDDWKPW94DM5l/K0Ifbswc//q13Xp3L6V00Kl3VOl5lgagHi7LRRfAsaAXS
	 qw2ekvn9VmRuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BF9242C1F;
	Fri, 20 Sep 2024 16:56:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 768BD1BF589
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 16:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63ED042C1C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 16:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o4Na9XxtPLAy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 16:56:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3EBC442C14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EBC442C14
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EBC442C14
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 16:56:36 +0000 (UTC)
X-CSE-ConnectionGUID: /jlU7Fg6SpqErWyLaKV4vw==
X-CSE-MsgGUID: CB7ieN5MTxu/iOHptAEkOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11201"; a="25813930"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25813930"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 09:56:35 -0700
X-CSE-ConnectionGUID: SinkSpCxTFibPAGvZs2uFA==
X-CSE-MsgGUID: rCWWVavxQhmflfXx0cBKsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="101100621"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 20 Sep 2024 09:56:34 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B28F32F1E;
 Fri, 20 Sep 2024 17:56:32 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2024 18:59:17 +0200
Message-ID: <20240920165916.9592-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726851396; x=1758387396;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OMRGaYWcJ8kuLjSDdQXJDwBIFRal6V100eD6nlGYOb4=;
 b=WcTsNHULz5KI59QopBtJhsG+SxbAmB3ySVyht1PxeBBuy3QzLfS6sw+a
 3k9mBh+y/iyohRBe6zd4XhhSxz+HjL95C1+3PA/JzLP4f3POroxKxSgU+
 D4j9xwdfbTHUYV/lQJ+ZlCRGbgvE9FA7cd0g7ETZeqie/PqJxR6PATwTO
 c59s5L3aCNKFshU9vUHDnKzFxHKUFTcdcXCov3iIQs1rYgj0NHoBicEEZ
 sJyvHs4a6SJmRqEaCjwlq71p4oBBfOKB/5g66QxIvmbdgOPidKQJckiUj
 tsQKYB7GnX9GrstD6kpQGPXNjC1+b0x/K7qNur+VzgVSV5cHPBhyHHt9E
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WcTsNHUL
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: Fix entering Safe Mode
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 maciej.fijalkowski@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 mateusz.polchlopek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If DDP package is missing or corrupted, the driver should enter Safe Mode.
Instead, an error is returned and probe fails.

Don't check return value of ice_init_ddp_config() to fix this.

Change ice_init_ddp_config() type to void, as now its return is never
checked.

Repro:
* Remove or rename DDP package (/lib/firmware/intel/ice/ddp/ice.pkg)
* Load ice

Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v2: Change ice_init_ddp_config() type to void
---
 drivers/net/ethernet/intel/ice/ice_main.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f5c9d347806..aeebf4ae25ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4548,34 +4548,27 @@ ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
  *
  * This function loads DDP file from the disk, then initializes Tx
  * topology. At the end DDP package is loaded on the card.
- *
- * Return: zero when init was successful, negative values otherwise.
  */
-static int ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
+static void ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	const struct firmware *firmware = NULL;
 	int err;
 
 	err = ice_request_fw(pf, &firmware);
-	if (err) {
+	if (err)
 		dev_err(dev, "Fail during requesting FW: %d\n", err);
-		return err;
-	}
 
 	err = ice_init_tx_topology(hw, firmware);
 	if (err) {
 		dev_err(dev, "Fail during initialization of Tx topology: %d\n",
 			err);
 		release_firmware(firmware);
-		return err;
 	}
 
 	/* Download firmware to device */
 	ice_load_pkg(firmware, pf);
 	release_firmware(firmware);
-
-	return 0;
 }
 
 /**
@@ -4748,9 +4741,7 @@ int ice_init_dev(struct ice_pf *pf)
 
 	ice_init_feature_support(pf);
 
-	err = ice_init_ddp_config(hw, pf);
-	if (err)
-		return err;
+	ice_init_ddp_config(hw, pf);
 
 	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
 	 * set in pf->state, which will cause ice_is_safe_mode to return
-- 
2.45.0


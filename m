Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D6497D4F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 13:52:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14BB16F4C6;
	Fri, 20 Sep 2024 11:52:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iCiDdlASgO3y; Fri, 20 Sep 2024 11:52:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 660B260684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726833144;
	bh=Ayg6AnaYDQIXVltmno+TNsMWh3+TCjXMgHZdX/9AqKM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=f3IaAi3bEt/M/KQbtu2u7h7oXvzuF43VRPo4QVTyn5o23PPrHi+O+H3vm/pCHs05t
	 PTje+yhkpn5MCKgPsdO0kuMBkQ4GR8gOAbXDhB00CZXOxejGbKLkRrhVuEldjO2foR
	 QFXw7KFlSvYADyQbKoKrhBxu76G1MBc+FkU2ZmNqyo1LKw6OnV/fJxg3Fz62tcoSpt
	 A/OUeR9/Fl+6HX4Kne8xpFFnGvapDNvPQsUPtrGBCnXYKnKVa3Stn+DUiKpHS50gf6
	 ROy02b51lcEK7GWZv32ojgSRCKCK/urA6yfx6wZYDg/Iz9/VvmHduUXNmE+oePpRr8
	 3oQkMhMl/F1Og==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 660B260684;
	Fri, 20 Sep 2024 11:52:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59A141BF414
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 11:52:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48A4181E57
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 11:52:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ucVbAMTVgb3j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 11:52:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 61D4D81422
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61D4D81422
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61D4D81422
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 11:52:21 +0000 (UTC)
X-CSE-ConnectionGUID: /lQrFnC5S9SS40f7oyZOTw==
X-CSE-MsgGUID: Hx54KpHWRGOq9MVfCJezVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25708347"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25708347"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:52:21 -0700
X-CSE-ConnectionGUID: PJIy/0DTTCOTr2fGBf7pzA==
X-CSE-MsgGUID: poA2NL46RGSmRtsboYKHBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="75046032"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 20 Sep 2024 04:52:19 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2345127BB0;
 Fri, 20 Sep 2024 12:52:18 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2024 13:55:09 +0200
Message-ID: <20240920115508.3168-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833142; x=1758369142;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RiozRk7VfjzRUIe3LI7qPJXH9LFjSxqMrA5xS4AOpsc=;
 b=QlJ9d9iz8SesvX/wIKP9i7aisW8+uuFaO1mVMxzVEeMGsT5k2hw9hi6n
 +fmBAhdmygWehhB0u0DoiF08mLV8k4BH6nVU4zrXmMD5DvgEWH5kizGKW
 W/V3M6lqI8yKbP/spDLpodMq35a3ZcRoqIADqyHWmJDnw32fOPW85KlSe
 GHFF+LQq+UaQ3I0dLAmYzLmitiCGECTA3pLScesThzKuDjW9L/nwmyQK5
 HQVCa5kmK1XL9ihnBWn+u+TwJGCfAvN1EkgfGyDwjSmF01uRZb6f1g9+t
 jDuXE8QGlhbehYMAyTBN9JwvXtjIwpnHxm1EA0WdKAD82Q7tjxAr+1hfg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QlJ9d9iz
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix entering Safe Mode
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, mateusz.polchlopek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If DDP package is missing or corrupted, the driver should enter Safe Mode.
Instead, an error is returned and probe fails.

Don't check return value of ice_init_ddp_config() to fix this.

Repro:
* Remove or rename DDP package (/lib/firmware/intel/ice/ddp/ice.pkg)
* Load ice

Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f5c9d347806..7b6725d652e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4748,9 +4748,7 @@ int ice_init_dev(struct ice_pf *pf)
 
 	ice_init_feature_support(pf);
 
-	err = ice_init_ddp_config(hw, pf);
-	if (err)
-		return err;
+	ice_init_ddp_config(hw, pf);
 
 	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
 	 * set in pf->state, which will cause ice_is_safe_mode to return
-- 
2.45.0


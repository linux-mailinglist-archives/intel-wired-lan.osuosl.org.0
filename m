Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF839842E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 12:02:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 660B740BBD;
	Tue, 24 Sep 2024 10:02:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lkxsS9_5_gNK; Tue, 24 Sep 2024 10:02:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 919F040BCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727172140;
	bh=ky32Kn7HuJIisHMrFl4GiKp6MFGwcgyPZs+1QFPic8E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4Ah9j2SF6iW9Oig68Z/8n2ZTBU6TwSz6+MuzVO0FXqy0NPxKFEtprPxsMb471L1Ts
	 jAxsBElk3praeh9ZG55Qruq5qcBvpA82heciVuWajf96fSl4tsGQRvPq39cyEORa91
	 X6+zKsMwilzyivFsnyA8TzQ4oi99xA4dsBXf9auLiS3aYNDQT9sRl1ZBSHEMzLNN0x
	 JW9ETX0r9InDcLrBFS/sCHfWHXA8p9sYnX9svwjODaTePp0rletkbys1ga4rPf3jJj
	 6O50SoMb5Qwnfl2hmQdVZ4JpZ7L1LjzPSzvsYBsKKeWwpKvnY52zmW5H0lbtaeVDoX
	 Jy8snny8ozRHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 919F040BCA;
	Tue, 24 Sep 2024 10:02:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 644CB1BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 10:02:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 537B581425
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 10:02:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70fljKxck5Un for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 10:02:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 25142813B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25142813B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 25142813B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 10:02:14 +0000 (UTC)
X-CSE-ConnectionGUID: PPk4Ww9sQ+C6qYtCnm2R7g==
X-CSE-MsgGUID: Zld4tND2Tn6rhcIyyqW8KQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="36725586"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="36725586"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 03:02:14 -0700
X-CSE-ConnectionGUID: +NqXWJA9R4+NBzFH5pzaFQ==
X-CSE-MsgGUID: ho9Qm7d8TY+0ouj7wV4+NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="76285967"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 24 Sep 2024 03:02:12 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E507D135E8;
 Tue, 24 Sep 2024 11:02:10 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Sep 2024 12:04:23 +0200
Message-ID: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727172135; x=1758708135;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fWzi33r9j5RvdX7aTM0+xoJHBSYq79DFwoV4k5670xI=;
 b=fsRy0qO2P3C2aM9MZ20E0jRn5hi8IG0U+BV5TNG2HsAOsq2pYPh/gJQo
 h1vJKimoTxCcrVBs0CJ/tC4DmDxM5MoSAlFIkaxWX5nZZpvsjEwNvaC8f
 /6nk5TdgKDF7oEEafm/XJKvM8841Zaekp0YU0lQowYl17NUCIyCwS4/Lj
 NarOpTKm8ixlR5ZN9zuP+Tqj95DZ8KyEi9f816lwxQdSekNbGZxJjUHMc
 xo9OHgt04QwOnOJtEHsTo/+YOFaLlaaxHkrAyU915bJkX3OTlA6vSsc4t
 ufdPfUJu4M4jU7fqx7bb/K6u0L1pXmryKBKl7zbbgUk/vQZW5pkLLlqyr
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fsRy0qO2
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/2] ice: Fix entering Safe Mode
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 mateusz.polchlopek@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, bcreeley@amd.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If DDP package is missing or corrupted, the driver should enter Safe Mode.
Instead, an error is returned and probe fails.

To fix this, don't exit init if ice_init_ddp_config() returns an error.

Repro:
* Remove or rename DDP package (/lib/firmware/intel/ice/ddp/ice.pkg)
* Load ice

Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v3: Change ice_init_ddp_config() type to int, check return (Brett)
v2: Change ice_init_ddp_config() type to void (Maciej)
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f5c9d347806..7a84d3c4c305 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4749,14 +4749,12 @@ int ice_init_dev(struct ice_pf *pf)
 	ice_init_feature_support(pf);
 
 	err = ice_init_ddp_config(hw, pf);
-	if (err)
-		return err;
 
 	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
 	 * set in pf->state, which will cause ice_is_safe_mode to return
 	 * true
 	 */
-	if (ice_is_safe_mode(pf)) {
+	if (err || ice_is_safe_mode(pf)) {
 		/* we already got function/device capabilities but these don't
 		 * reflect what the driver needs to do in safe mode. Instead of
 		 * adding conditional logic everywhere to ignore these
-- 
2.45.0


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 251808CA465
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2024 00:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 201B781E30;
	Mon, 20 May 2024 22:17:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tmlT544sTd9i; Mon, 20 May 2024 22:17:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36F2381E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716243426;
	bh=7dvO3spFVMVKj2szY6V/+WZwm+rW6zN2s3Uv13YnviE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zVBUedSTGB/KgbQJylSHWjZg53XcENG/PTED3d35LLr0L9tHQTFdIIvYZ4+CF+MBh
	 pQnvSyc9ZvpjmRPqPBVcUKrkucRT6rFEq199Su1CV1UCWZqqYB7paMWM+aFXylb01v
	 pya6JzrNAz3TZt0QhwUDfJ/OtYPij/Jxq/lx4XJDGGhkSmgTY26YrWb3GL0d4mjfa1
	 e+flg+ajIUvU2RxISyLYX9zWGtGw1xDU9xWjxM0eK64QwLeMUsTBoLWvyBAh55qPjJ
	 6QTRNeO/7kbt+e56wipXybyc36B5Vn6zyD/kT0OQY2D7geqdCOm6ASWxEyWw7SyAxG
	 JTPYwULOz2wsQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36F2381E0B;
	Mon, 20 May 2024 22:17:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D3021C4D9E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 22:17:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06164607E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 22:17:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xYNXgCxoMlHn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2024 22:17:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2225E6066D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2225E6066D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2225E6066D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 22:17:02 +0000 (UTC)
X-CSE-ConnectionGUID: SNYrObeoQFiL7bc9ZuWqCg==
X-CSE-MsgGUID: VtPKO0MmSD6VIU4R6JgHvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12578152"
X-IronPort-AV: E=Sophos;i="6.08,176,1712646000"; d="scan'208";a="12578152"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 15:17:03 -0700
X-CSE-ConnectionGUID: djRKdYHPTMGSERpu2ArbIw==
X-CSE-MsgGUID: CmOaQutAQIexbhwfqCil5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,176,1712646000"; d="scan'208";a="37063432"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 15:17:01 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 May 2024 15:20:11 -0700
Message-ID: <20240520222011.2852799-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716243424; x=1747779424;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o+1XXsAJU6JBp9Ux7bjn5Liu+yCm5L/CewXHM3QAkD4=;
 b=hHd8u4qOoepyDdaKwtkhrvT9DfQlJtcy7RgQ7ykn96lQHPYHlGNj15kJ
 BB7cRdfUYpUgT9bwgiT3Pk//zDAXRe1eb0DNCDpeF9TS6BFZfWzks8J8J
 E9+xCchT7N6qTgfAIks/aRBWyKxvzMSaMD1JgbLELhx1VU72MT8+nzc3V
 yhU0WNyaMg3GORRtaBl5F0YzVeOtXUt+epBB2J9fLS+ow6W4x1LKUGQDp
 pniA49wLCw7Jrdwd3SQT1oJ1X2PaDDD5Jghdxt9TI5xwa1gUj+6XUvIr6
 1FRBZ6vQOS7HJ/giXEPh3EhfjNGcInqJ1V3uwnAeZ1Cvnv6FgdF3ZO4Y9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hHd8u4qO
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: check for unregistering
 correct number of devlink params
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
Cc: przemyslaw.kitszel@intel.com, lukasz.czapnik@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On module load, the ice driver checks for the lack of a specific PF
capabilty to determine if it should reduce the number of devlink params
to register.  One situation when this test returns true is when the
driver loads in safe mode.  The same check is not present on the unload
path when devlink params are unregistered.  This results in the driver
triggering a WARN_ON in the kernel devlink code.

Add a symmetrical check in the unload path so that the correct value is
sent to the devlink unregister params call.

Fixes: 109eb2917284 ("ice: Add tx_scheduling_layers devlink param")
CC: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/devlink/devlink.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index c4b69655cdf5..94ad78d2d11e 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1477,8 +1477,14 @@ int ice_devlink_register_params(struct ice_pf *pf)
 
 void ice_devlink_unregister_params(struct ice_pf *pf)
 {
+	size_t params_size = ARRAY_SIZE(ice_devlink_params);
+	struct ice_hw *hw = &pf->hw;
+
+	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
+		params_size--;
+
 	devl_params_unregister(priv_to_devlink(pf), ice_devlink_params,
-			       ARRAY_SIZE(ice_devlink_params));
+			       params_size);
 }
 
 #define ICE_DEVLINK_READ_BLK_SIZE (1024 * 1024)
-- 
2.44.0


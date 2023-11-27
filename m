Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2E17F9912
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 07:05:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3067460C11;
	Mon, 27 Nov 2023 06:05:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3067460C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701065127;
	bh=yTh+9b5JjEd8uNTcmm9Sj7JHrUZ+k9yCKTVvgjrl4tQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DrT/VxDPjFoLlW8Tb+Gj6JdAxIbS0LRDsTls5xel75diN94PRY9WaVEFFaagijv7g
	 0Fslxbi6RDWFh/7lMDyxrDrlJ+rc9iKU2saOVwgbcH88OyQlwMTKBPAwcChWuqo1sW
	 5HZNSzOSSS39c7u5h38lfD8MWE4jSxt0jsjmVQA2ie3Ybq2DoToaTWePcECIuQnVG5
	 kWjQNND5t9xHFGaMCgfZuEJMZ2XZOafeFwIgdDRn3CVOYVy6ROWZVtdaMXh27aQoDP
	 JRMZzGg1ktbgOYrmXjkKOy0Lv0AenVJbyUshb8dItPLQK3uMWl+1fZKVyWBOULTRlC
	 DU/Wd4ABr0VEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZR6Jn9JBuWM; Mon, 27 Nov 2023 06:05:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0731D60AFB;
	Mon, 27 Nov 2023 06:05:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0731D60AFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 241F11BF41B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 06:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 07FE7404AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 06:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07FE7404AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O-JE2Ty62HTp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 06:05:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD7B040491
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 06:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD7B040491
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="11341582"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="11341582"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2023 22:05:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="717933496"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="717933496"
Received: from sbahadur1-bxdsw.sj.intel.com ([10.232.237.139])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2023 22:05:17 -0800
From: Sachin Bahadur <sachin.bahadur@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 26 Nov 2023 22:05:12 -0800
Message-Id: <20231127060512.1283336-1-sachin.bahadur@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701065120; x=1732601120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jl2n3DOTd1DIka9IKBM+HJnvzYRs320kDKrmGMGFtSM=;
 b=TnmTgHDrsUnmA0sg3zRFGKzxM6CFZWin7uC7AWMGiVSLctMRx3c+qhrR
 km+SEPJ3M7bLv1Q2K0gCl9XiM0eo+pVPuuD4TlYfQhtTRMSq98OT149K1
 OR7eIx4gHH86Kh9hQEzeG0U6UE1VbhhRRokMYOnFMaS8Ap8RER97dcNCF
 gm7MXi1aE7d85KNdfzj3xWxJwgNB8fV+f95/7XLJXhMFm8qVcN6QiSbie
 UgQeAcgbVK7BAD/GR/Z+bMnLtgKwvnD7bThJrahGL+o77QROVjq7wBxcb
 pef0rYPTiVrBDJ9+MCjxU/DwQWBRe2ajyTtIwo/mvNN6sIL8swInUYQZr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TnmTgHDr
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: Block PF reinit if
 attached to bond
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PF interface part of Bond should not allow driver reinit via devlink. Bond
config will be lost due to PF reinit. PF needs to be re-added to Bond
after PF reinit. ice_devlink_reload_down is called before PF driver reinit.
If PF is attached to bond, ice_devlink_reload_down returns error.

Fixes: trailer
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index f4e24d11ebd0..5fe88e949b09 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -457,6 +457,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 					   "Remove all VFs before doing reinit\n");
 			return -EOPNOTSUPP;
 		}
+		if (pf->lag && pf->lag->bonded) {
+			NL_SET_ERR_MSG_MOD(extack, "Remove all associated Bonds before doing reinit");
+			return -EBUSY;
+		}
 		ice_unload(pf);
 		return 0;
 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
--
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

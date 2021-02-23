Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC15322A68
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Feb 2021 13:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B05FA605E8;
	Tue, 23 Feb 2021 12:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qnb9FP6b6pKl; Tue, 23 Feb 2021 12:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91C3B605E5;
	Tue, 23 Feb 2021 12:19:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2DC1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 12:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29B5E830AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 12:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F2v67cjFhpea for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 12:19:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 00E6683046
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 12:19:32 +0000 (UTC)
IronPort-SDR: awZ4cpmV11Z3WeR4nkMEy5BVk87N/yRfu9Y4EFaNzruMH4CmWQCf4Ac5wuJtQIHxjae3+X1a0h
 54RnZgwyY3VQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="246201213"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="246201213"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 04:19:31 -0800
IronPort-SDR: AmMQxuvW8qy+hrNar1aHGqjpuOXMeVj3DovToM9ER+gDhmhyG7uWX7jYz0jlsjtxyaPTEqpITc
 t2cjc9ZOG25g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="499088975"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga001.fm.intel.com with ESMTP; 23 Feb 2021 04:19:30 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, anna.kostyukovsky@intel.com,
 dvorax.fuxbrumer@linux.intel.com
Date: Tue, 23 Feb 2021 14:19:23 +0200
Message-Id: <20210223121923.1503421-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove no need includes from
 igc_mac.h
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

igc_defines.h and igc_phy.h included in igc_hw.h
Therefore no need to include these headers in igc_mac.h
where is include igc_hw.h

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.h b/drivers/net/ethernet/intel/igc/igc_mac.h
index b5963f86defb..04d0cadfa3d6 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.h
+++ b/drivers/net/ethernet/intel/igc/igc_mac.h
@@ -5,8 +5,6 @@
 #define _IGC_MAC_H_
 
 #include "igc_hw.h"
-#include "igc_phy.h"
-#include "igc_defines.h"
 
 /* forward declaration */
 s32 igc_disable_pcie_master(struct igc_hw *hw);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

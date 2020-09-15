Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AF1269B6F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 03:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4DEF85F8D;
	Tue, 15 Sep 2020 01:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dPiCVRG8IdE4; Tue, 15 Sep 2020 01:45:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCDC585F82;
	Tue, 15 Sep 2020 01:45:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 007971BF301
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F136B8708D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tale3A9SupTA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 48CA78707F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
IronPort-SDR: dEU2oYbOfyV5PkKrI3KGdASsQXho3NJ1kUVkpp/nruQXymyYmmBz844m9z0O7U/zKn+EeVGzhn
 I8DGuIFOgrBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="159233047"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="159233047"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 18:45:09 -0700
IronPort-SDR: O/6P6y+v3/Bp4OBejoD80bV6/xTm8Uah4LAVWWxxLvEg9KO6kVU5ar8xmTwz6gb3bl9hN9EA8V
 gPJxjKAk35rw==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="482571951"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 18:45:09 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 14 Sep 2020 18:44:50 -0700
Message-Id: <20200915014455.1232507-6-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 05/10] drivers/net/ethernet:
 rid ethernet of no-prototype warnings
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The W=1 builds showed a few files exporting functions
(non-static) that were not prototyped. What actually happened is
that there were prototypes, but the include file was forgotten in
the implementation file.

Add the include file and remove the warnings.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/cavium/liquidio/cn68xx_device.c   | 1 +
 drivers/net/ethernet/cavium/liquidio/octeon_mem_ops.c  | 1 +
 drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/cavium/liquidio/cn68xx_device.c b/drivers/net/ethernet/cavium/liquidio/cn68xx_device.c
index 50b533ff58e6..30254e4cf70f 100644
--- a/drivers/net/ethernet/cavium/liquidio/cn68xx_device.c
+++ b/drivers/net/ethernet/cavium/liquidio/cn68xx_device.c
@@ -25,6 +25,7 @@
 #include "octeon_main.h"
 #include "cn66xx_regs.h"
 #include "cn66xx_device.h"
+#include "cn68xx_device.h"
 #include "cn68xx_regs.h"
 
 static void lio_cn68xx_set_dpi_regs(struct octeon_device *oct)
diff --git a/drivers/net/ethernet/cavium/liquidio/octeon_mem_ops.c b/drivers/net/ethernet/cavium/liquidio/octeon_mem_ops.c
index 4c85ae643b7b..7ccab36143c1 100644
--- a/drivers/net/ethernet/cavium/liquidio/octeon_mem_ops.c
+++ b/drivers/net/ethernet/cavium/liquidio/octeon_mem_ops.c
@@ -22,6 +22,7 @@
 #include "octeon_iq.h"
 #include "response_manager.h"
 #include "octeon_device.h"
+#include "octeon_mem_ops.h"
 
 #define MEMOPS_IDX   BAR1_INDEX_DYNAMIC_MAP
 
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c b/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c
index d6c3952aba04..f28b8f3df857 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c
@@ -3,6 +3,7 @@
 
 #include "hclge_main.h"
 #include "hclge_tm.h"
+#include "hclge_dcb.h"
 #include "hnae3.h"
 
 #define BW_PERCENT	100
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

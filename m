Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D929E26568B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 03:23:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C5BE87776;
	Fri, 11 Sep 2020 01:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id evBojLOUX7cA; Fri, 11 Sep 2020 01:23:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03FE187752;
	Fri, 11 Sep 2020 01:23:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EC951BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 77D2F87750
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZgsFy+3ZWt4I for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C01148774B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
IronPort-SDR: lT5etWl95lB3Y5Ohya9QsEOenfHQhDX+5nfvjrXvLbehG4xSn2BvcOEKZvF0MnSJ0aq9Q01x+c
 OaMgB4iu2ARg==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="159613191"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="159613191"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
IronPort-SDR: XoZoVaqVGq7OgLd+vgcp7Tq8ViOYy9lBwmRdumEVoL43gCqpSHK/U9xQz+ySCqPt4p0LMRoBy9
 3vgIEFpHjEEQ==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="449808151"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 10 Sep 2020 18:23:33 -0700
Message-Id: <20200911012337.14015-8-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200911012337.14015-1-jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH net-next v1 07/11]
 drivers/net/ethernet: rid ethernet of no-prototype warnings
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
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087975C936
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 08:20:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABC3E87A1D;
	Tue,  2 Jul 2019 06:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pR-OxVKc5stA; Tue,  2 Jul 2019 06:20:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 317E787985;
	Tue,  2 Jul 2019 06:20:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98FD61BF35D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 06:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9553120417
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 06:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HSyHlXvQdHhN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 06:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CDB520412
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 06:20:50 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D31A995C6CEF97FA6E31;
 Tue,  2 Jul 2019 14:20:45 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Tue, 2 Jul 2019
 14:20:38 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>,
 <intel-wired-lan@lists.osuosl.org>
Date: Tue, 2 Jul 2019 14:20:21 +0800
Message-ID: <20190702062021.41524-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] iavf: remove unused debug
 function iavf_debug_d
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is no caller of function iavf_debug_d() in tree since
commit 75051ce4c5d8 ("iavf: Fix up debug print macro"),
so it can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 881561b..327dda8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -143,28 +143,6 @@ enum iavf_status iavf_free_virt_mem_d(struct iavf_hw *hw,
 }
 
 /**
- * iavf_debug_d - OS dependent version of debug printing
- * @hw:  pointer to the HW structure
- * @mask: debug level mask
- * @fmt_str: printf-type format description
- **/
-void iavf_debug_d(void *hw, u32 mask, char *fmt_str, ...)
-{
-	char buf[512];
-	va_list argptr;
-
-	if (!(mask & ((struct iavf_hw *)hw)->debug_mask))
-		return;
-
-	va_start(argptr, fmt_str);
-	vsnprintf(buf, sizeof(buf), fmt_str, argptr);
-	va_end(argptr);
-
-	/* the debug string is already formatted with a newline */
-	pr_info("%s", buf);
-}
-
-/**
  * iavf_schedule_reset - Set the flags and schedule a reset event
  * @adapter: board private structure
  **/
-- 
2.7.4


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

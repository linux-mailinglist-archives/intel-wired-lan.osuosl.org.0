Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E956C495B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2019 01:10:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A80128523B;
	Mon, 17 Jun 2019 23:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4Vs-REmtnIi; Mon, 17 Jun 2019 23:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E708185319;
	Mon, 17 Jun 2019 23:10:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3A831BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 23:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AE7C7874F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 23:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e7f6exQbYagK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2019 23:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36CFB87111
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 23:10:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 16:10:45 -0700
X-ExtLoop1: 1
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga008.jf.intel.com with ESMTP; 17 Jun 2019 16:10:44 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jun 2019 16:10:58 -0700
Message-Id: <20190617231058.15343-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next ] iavf: Fix up debug print macro
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

This aligns the iavf_debug() macro with the other Intel drivers.

Add the bus number, bus_id field to i40e_bus_info so output shows
each physical port(i.e func) in following format:
  [[[[<domain>]:]<bus>]:][<slot>][.[<func>]]
domains are numbered from 0 to ffff), bus (0-ff), slot (0-1f) and
function (0-7).

Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_osdep.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_osdep.h b/drivers/net/ethernet/intel/iavf/iavf_osdep.h
index d39684558597..a452ce90679a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_osdep.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_osdep.h
@@ -44,8 +44,12 @@ struct iavf_virt_mem {
 #define iavf_allocate_virt_mem(h, m, s) iavf_allocate_virt_mem_d(h, m, s)
 #define iavf_free_virt_mem(h, m) iavf_free_virt_mem_d(h, m)
 
-#define iavf_debug(h, m, s, ...)  iavf_debug_d(h, m, s, ##__VA_ARGS__)
-extern void iavf_debug_d(void *hw, u32 mask, char *fmt_str, ...)
-	__printf(3, 4);
+#define iavf_debug(h, m, s, ...)				\
+do {								\
+	if (((m) & (h)->debug_mask))				\
+		pr_info("iavf %02x:%02x.%x " s,			\
+			(h)->bus.bus_id, (h)->bus.device,	\
+			(h)->bus.func, ##__VA_ARGS__);		\
+} while (0)
 
 #endif /* _IAVF_OSDEP_H_ */
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D758CF93C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2019 16:13:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC483203AC;
	Tue, 12 Nov 2019 15:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJ+emKSQBUYc; Tue, 12 Nov 2019 15:13:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 71AF9203A4;
	Tue, 12 Nov 2019 15:13:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EA6B1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 15:13:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E12E8731E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 15:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Kw-c5L6Ttwo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2019 15:13:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 678A08533D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 15:13:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 07:13:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="404273404"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga005.fm.intel.com with ESMTP; 12 Nov 2019 07:13:32 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Nov 2019 17:13:32 +0200
Message-Id: <20191112151332.5893-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] igc: Fix parameter descriptions for a
 several functions
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

igc_watchdog, igc_set_interrupt_capability, igc_init_interrupt_scheme,
__igc_open and __igc_close parameter desriptions has not reflected
functions meaning. Add meaningful description.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5d3023ea8a44..fe9edcce42e8 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3110,7 +3110,7 @@ bool igc_has_link(struct igc_adapter *adapter)
 
 /**
  * igc_watchdog - Timer Call-back
- * @data: pointer to adapter cast into an unsigned long
+ * @t: timer for the watchdog
  */
 static void igc_watchdog(struct timer_list *t)
 {
@@ -3639,6 +3639,7 @@ static int igc_poll(struct napi_struct *napi, int budget)
 /**
  * igc_set_interrupt_capability - set MSI or MSI-X if supported
  * @adapter: Pointer to adapter structure
+ * @msix: boolean value for MSI-X capability
  *
  * Attempt to configure interrupts using the best available
  * capabilities of the hardware and kernel.
@@ -3907,6 +3908,7 @@ static void igc_cache_ring_register(struct igc_adapter *adapter)
 /**
  * igc_init_interrupt_scheme - initialize interrupts, allocate queues/vectors
  * @adapter: Pointer to adapter structure
+ * @msix: boolean for MSI-X capability
  *
  * This function initializes the interrupts and allocates all of the queues.
  */
@@ -4074,8 +4076,9 @@ static void igc_write_itr(struct igc_q_vector *q_vector)
 }
 
 /**
- * igc_open - Called when a network interface is made active
+ * __igc_open - Called when a network interface is made active
  * @netdev: network interface device structure
+ * @resuming: boolean indicating if the device is resuming
  *
  * Returns 0 on success, negative value on failure
  *
@@ -4165,8 +4168,9 @@ static int igc_open(struct net_device *netdev)
 }
 
 /**
- * igc_close - Disables a network interface
+ * __igc_close - Disables a network interface
  * @netdev: network interface device structure
+ * @suspending: boolean indicating the device is suspending
  *
  * Returns 0, this is not allowed to fail
  *
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

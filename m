Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3714017EB32
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Mar 2020 22:32:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E06C889BE;
	Mon,  9 Mar 2020 21:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eS6LpsOzSxne; Mon,  9 Mar 2020 21:32:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21DBF88ADA;
	Mon,  9 Mar 2020 21:32:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D67FC1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2020 21:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CD7B3889CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2020 21:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jB2FWaya8IsE for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Mar 2020 21:32:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1A61889BE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2020 21:32:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 14:32:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="441059110"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by fmsmga005.fm.intel.com with ESMTP; 09 Mar 2020 14:31:59 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
	jkirsher@osuosl.org
Date: Mon,  9 Mar 2020 14:31:57 -0700
Message-Id: <20200309213157.181873-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] fm10k: remove driver version from fm10k
 module
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

As with other networking drivers, remove the unnecessary driver version
from the fm10k module. The ethtool driver information and module version
will then report the kernel version instead.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k.h         | 1 -
 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 2 --
 drivers/net/ethernet/intel/fm10k/fm10k_main.c    | 5 +----
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k.h b/drivers/net/ethernet/intel/fm10k/fm10k.h
index 5b78362b82ac..f9be10a04dd6 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k.h
@@ -476,7 +476,6 @@ struct fm10k_cb {
 
 /* main */
 extern char fm10k_driver_name[];
-extern const char fm10k_driver_version[];
 int fm10k_init_queueing_scheme(struct fm10k_intfc *interface);
 void fm10k_clear_queueing_scheme(struct fm10k_intfc *interface);
 __be16 fm10k_tx_encap_offload(struct sk_buff *skb);
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 68edf55ac906..3cae18a3bcf0 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -449,8 +449,6 @@ static void fm10k_get_drvinfo(struct net_device *dev,
 
 	strncpy(info->driver, fm10k_driver_name,
 		sizeof(info->driver) - 1);
-	strncpy(info->version, fm10k_driver_version,
-		sizeof(info->version) - 1);
 	strncpy(info->bus_info, pci_name(interface->pdev),
 		sizeof(info->bus_info) - 1);
 }
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index 17738b0a9873..05e9bdb5f4aa 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -11,9 +11,7 @@
 
 #include "fm10k.h"
 
-#define DRV_VERSION	"0.27.1-k"
 #define DRV_SUMMARY	"Intel(R) Ethernet Switch Host Interface Driver"
-const char fm10k_driver_version[] = DRV_VERSION;
 char fm10k_driver_name[] = "fm10k";
 static const char fm10k_driver_string[] = DRV_SUMMARY;
 static const char fm10k_copyright[] =
@@ -22,7 +20,6 @@ static const char fm10k_copyright[] =
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(DRV_VERSION);
 
 /* single workqueue for entire fm10k driver */
 struct workqueue_struct *fm10k_workqueue;
@@ -35,7 +32,7 @@ struct workqueue_struct *fm10k_workqueue;
  **/
 static int __init fm10k_init_module(void)
 {
-	pr_info("%s - version %s\n", fm10k_driver_string, fm10k_driver_version);
+	pr_info("%s\n", fm10k_driver_string);
 	pr_info("%s\n", fm10k_copyright);
 
 	/* create driver workqueue */
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

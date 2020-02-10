Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BFF156FC1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2020 08:04:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 837A681F20;
	Mon, 10 Feb 2020 07:04:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Brk7XWcTfyTT; Mon, 10 Feb 2020 07:04:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 891DB836A5;
	Mon, 10 Feb 2020 07:04:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1F541BF378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 07:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B7D8920380
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 07:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9j9ZBaJNt9eY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2020 07:04:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 032C22014A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 07:04:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Feb 2020 23:04:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,424,1574150400"; d="scan'208";a="433232313"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.163.21])
 by fmsmga006.fm.intel.com with ESMTP; 09 Feb 2020 23:04:15 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Feb 2020 09:04:15 +0200
Message-Id: <20200210070415.23679-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add GSO partial support
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

Partial generic segmentation offload is a hybrid between TSO and GSO.
What is effectively does is take advantage of certain traits of TCP and
tunnels so that instead of having to rewrite the packet headers for each
segment only in the inner-most transport header and possible the outer-most
network header need to be updated.
This allows devices that do not support tunnel offload or tunnels
offloads with checksum to still make use of segmentation.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 660b14abce1d..0c2d4f8d9904 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4905,6 +4905,16 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->features |= NETIF_F_HW_CSUM;
 	netdev->features |= NETIF_F_SCTP_CRC;
 
+#define IGC_GSO_PARTIAL_FEATURES (NETIF_F_GSO_GRE | \
+				  NETIF_F_GSO_GRE_CSUM | \
+				  NETIF_F_GSO_IPXIP4 | \
+				  NETIF_F_GSO_IPXIP6 | \
+				  NETIF_F_GSO_UDP_TUNNEL | \
+				  NETIF_F_GSO_UDP_TUNNEL_CSUM)
+
+	netdev->gso_partial_features = IGC_GSO_PARTIAL_FEATURES;
+	netdev->features |= NETIF_F_GSO_PARTIAL | IGC_GSO_PARTIAL_FEATURES;
+
 	/* setup the private structure */
 	err = igc_sw_init(adapter);
 	if (err)
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

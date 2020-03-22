Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6C718E76D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Mar 2020 08:58:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F0FE869B6;
	Sun, 22 Mar 2020 07:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6Fak7JCou7k; Sun, 22 Mar 2020 07:58:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F136C86ACD;
	Sun, 22 Mar 2020 07:58:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A82081BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2020 07:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A341F20478
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2020 07:58:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMjmfrxdLukW for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Mar 2020 07:58:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id EBF89203D5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2020 07:58:52 +0000 (UTC)
IronPort-SDR: Csoho5sqDiB4oBRdyfYdzZy03p25gA04KBcHwSqHwIpUfaTEBGgQA7MuxoWyAnZpkNzzk2t+05
 lyNPhe8khlog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2020 00:58:47 -0700
IronPort-SDR: yt/JN5mG2hcXRr/7JyxabsuWZe4agehhckUWdJa6Jlcycz1keHYCMY0q3/sS/8jTkE2l8NYDVc
 UPGojRtX9nKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,291,1580803200"; d="scan'208";a="280863459"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga002.fm.intel.com with ESMTP; 22 Mar 2020 00:58:46 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 22 Mar 2020 09:58:46 +0200
Message-Id: <20200322075846.5982-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add ECN support for TSO
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

Align with other Intel drivers and add ECN
support for TSO
Add ECN flag

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index abbe0e1e0cf5..a605a02c0479 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4841,6 +4841,7 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->features |= NETIF_F_SG;
 	netdev->features |= NETIF_F_TSO;
 	netdev->features |= NETIF_F_TSO6;
+	netdev->features |= NETIF_F_TSO_ECN;
 	netdev->features |= NETIF_F_RXCSUM;
 	netdev->features |= NETIF_F_HW_CSUM;
 	netdev->features |= NETIF_F_SCTP_CRC;
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

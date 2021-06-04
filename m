Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B05139C350
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jun 2021 00:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9EDD415E9;
	Fri,  4 Jun 2021 22:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bOWAGVIdVPvg; Fri,  4 Jun 2021 22:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD202415E4;
	Fri,  4 Jun 2021 22:10:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CE011BF30E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E3A44020D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpTQ2etk3MSI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 22:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C86A40225
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 22:10:07 +0000 (UTC)
IronPort-SDR: J2d5dvI/dSYi31WDxcBb8YFwn2d3XpzZmALv9cXVn2bovdywyNcsofJbI8IxtG2bfYRzw+e2ga
 IkLI9BWgxIqQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204192249"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="204192249"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:10:06 -0700
IronPort-SDR: 3STaewzT8WIoV2OY0IMzcvWQLx50fT3/0Ksu7APX9k3cp9pI8pSPvj07u59Y8JMUvEtnq0mqze
 0Yse795gsTFw==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="439326625"
Received: from lmrivera-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.24.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:10:06 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 15:09:32 -0700
Message-Id: <20210604220933.3974558-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210604220933.3974558-1-vinicius.gomes@intel.com>
References: <20210604220933.3974558-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v4 3/4] igc: Enable PCIe PTM
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
Cc: linux-pci@vger.kernel.org, richardcochran@gmail.com, hch@infradead.org,
 netdev@vger.kernel.org, bhelgaas@google.com, helgaas@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enables PCIe PTM (Precision Time Measurement) support in the igc
driver. Notifies the PCI devices that PCIe PTM should be enabled.

PCIe PTM is similar protocol to PTP (Precision Time Protocol) running
in the PCIe fabric, it allows devices to report time measurements from
their internal clocks and the correlation with the PCIe root clock.

The i225 NIC exposes some registers that expose those time
measurements, those registers will be used, in later patches, to
implement the PTP_SYS_OFFSET_PRECISE ioctl().

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fd4dd7c5a33f..51c497133765 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -12,6 +12,8 @@
 #include <net/pkt_sched.h>
 #include <linux/bpf_trace.h>
 #include <net/xdp_sock_drv.h>
+#include <linux/pci.h>
+
 #include <net/ipv6.h>
 
 #include "igc.h"
@@ -5798,6 +5800,10 @@ static int igc_probe(struct pci_dev *pdev,
 
 	pci_enable_pcie_error_reporting(pdev);
 
+	err = pci_enable_ptm(pdev, NULL);
+	if (err < 0)
+		dev_err(&pdev->dev, "PTM not supported\n");
+
 	pci_set_master(pdev);
 
 	err = -ENOMEM;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

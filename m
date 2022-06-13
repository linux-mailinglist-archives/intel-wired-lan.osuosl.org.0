Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF0F548593
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jun 2022 15:52:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3C76827AF;
	Mon, 13 Jun 2022 13:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wquPLFxQ2l8C; Mon, 13 Jun 2022 13:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0740382668;
	Mon, 13 Jun 2022 13:52:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 408E01BF983
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 11:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D19A60B0A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 11:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K2FHe6aem_M5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jun 2022 11:27:53 +0000 (UTC)
X-Greylist: delayed 00:07:14 by SQLgrey-1.8.0
Received: from qq.com (smtpbg403.qq.com [113.96.223.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B73F860AD4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 11:27:52 +0000 (UTC)
X-QQ-mid: bizesmtp79t1655119171tncpq0nk
Received: from localhost.localdomain ( [58.240.82.166])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Mon, 13 Jun 2022 19:19:19 +0800 (CST)
X-QQ-SSF: 01400000002000G0Q000B00A0000000
X-QQ-FEAT: TskX/GkkryCDcmJVO5h9ev8uYG7SCnaHXyx1CcOQULQILG72duCIYEoi0yiGU
 eOgLxLcnS35Mho1tqsNnD0GEpf0qd1gDhv/txymjOX5m0t+NlZqIXlul/FwDwVLq7/2/nqx
 qqnZM5tbvjuTlke1A6X0R1jGpW8zb/yUDwloN22q5f2CdSrKeeDSnjFZZoRuqpdGto4Bqp3
 HXD4NEWngy5ZHFAyb2VMNdJjmt+l2YmHK+hG/z+ClAGxJW2rhLZcwjkZwZQb8QcJrkCLxzj
 TISphwzcNHy1W0RLLVJK24ytwYMkX/UxcWAbUvoWz1rgkloNOSwMt/ypyXd7H2Ptsi/ZlXe
 Glyev0WqjCBCXDRbJhd9a9mmjtAxH2jchdzZ3MeOB9wWZxJr88=
X-QQ-GoodBg: 2
From: Meng Tang <tangmeng@uniontech.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, bhelgaas@google.com
Date: Mon, 13 Jun 2022 19:19:07 +0800
Message-Id: <20220613111907.25490-2-tangmeng@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220613111907.25490-1-tangmeng@uniontech.com>
References: <20220613111907.25490-1-tangmeng@uniontech.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybgforeign:qybgforeign9
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Mon, 13 Jun 2022 13:52:00 +0000
Subject: [Intel-wired-lan] [PATCH 5.10 2/2] commit 1b5d73fb8624 ("igc:
 Enable PCIe PTM")
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
Cc: netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Meng Tang <tangmeng@uniontech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the 5.10 kernel version, even to the latest confirmed version,
the following error will still be reported when I225-V network card
is used.

kernel: [    1.031581] igc: probe of 0000:01:00.0 failed with error -2
kernel: [    1.066574] igc: probe of 0000:02:00.0 failed with error -2
kernel: [    1.096152] igc: probe of 0000:03:00.0 failed with error -2
kernel: [    1.127251] igc: probe of 0000:04:00.0 failed with error -2

Even though I confirmed that 7c496de538eebd8212dc2a3c9a468386b2640d4
and 47bca7de6a4fb8dcb564c7ca4d885c91ed19e03 have been merged into the
kernel 5.10, but bug still occurred, and this patch can fixes it.

Enables PCIe PTM (Precision Time Measurement) support in the igc
driver. Notifies the PCI devices that PCIe PTM should be enabled.

PCIe PTM is similar protocol to PTP (Precision Time Protocol) running
in the PCIe fabric, it allows devices to report time measurements from
their internal clocks and the correlation with the PCIe root clock.

The i225 NIC exposes some registers that expose those time
measurements, those registers will be used, in later patches, to
implement the PTP_SYS_OFFSET_PRECISE ioctl().

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Meng Tang <tangmeng@uniontech.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fd9257c7059a..298e968629db 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -10,6 +10,7 @@
 #include <linux/ip.h>
 #include <linux/pm_runtime.h>
 #include <net/pkt_sched.h>
+#include <linux/pci.h>
 
 #include <net/ipv6.h>
 
@@ -5041,6 +5042,10 @@ static int igc_probe(struct pci_dev *pdev,
 
 	pci_enable_pcie_error_reporting(pdev);
 
+	err = pci_enable_ptm(pdev, NULL);
+	if (err < 0)
+		dev_info(&pdev->dev, "PCIe PTM not supported by PCIe bus/controller\n");
+
 	pci_set_master(pdev);
 
 	err = -ENOMEM;
-- 
2.20.1



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
